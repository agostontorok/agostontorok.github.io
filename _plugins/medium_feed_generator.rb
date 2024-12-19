require 'jekyll'
require 'net/http'
require 'json'
require 'fileutils'

Jekyll.logger.info "Debug: Loading MediumFeedGenerator plugin"

module Jekyll
  class MediumFeedGenerator < Generator
    safe true
    priority :high

    def generate(site)
      Jekyll.logger.info "Debug: Starting MediumFeedGenerator"
      
      # Create _data directory if it doesn't exist
      data_dir = File.join(site.source, '_data')
      FileUtils.mkdir_p(data_dir) unless File.directory?(data_dir)
      Jekyll.logger.info "Debug: Data directory is #{data_dir}"
      
      # Path to feed file
      feed_file = File.join(data_dir, 'medium_feed.json')
      Jekyll.logger.info "Debug: Feed file will be #{feed_file}"
      
      # Check if feed file exists and is less than 1 hour old
      if File.exist?(feed_file)
        file_age = Time.now - File.mtime(feed_file)
        if file_age < 3600 # 1 hour in seconds
          Jekyll.logger.info "Debug: Feed file is less than 1 hour old, skipping fetch"
          return
        end
      end
      
      # Get API key from environment
      api_key = ENV['RSS2JSON_API_KEY']
      if api_key.nil? || api_key.empty?
        Jekyll.logger.error "Error: RSS2JSON_API_KEY environment variable is not set"
        return
      end
      Jekyll.logger.info "Debug: Got API key"
      
      begin
        # Construct the URL
        uri = URI("https://api.rss2json.com/v1/api.json")
        params = {
          rss_url: "https://medium.com/feed/@torokagoston",
          api_key: api_key
        }
        uri.query = URI.encode_www_form(params)
        
        Jekyll.logger.info "Debug: Fetching feed from #{uri}"
        
        # Make the request
        response = Net::HTTP.get_response(uri)
        
        if response.is_a?(Net::HTTPSuccess)
          Jekyll.logger.info "Debug: Successfully fetched feed"
          # Write the response to file
          File.write(feed_file, response.body)
          Jekyll.logger.info "Debug: Wrote feed to #{feed_file}"
          
          # Parse the feed into site.data
          feed_data = JSON.parse(response.body)
          site.data['medium_feed'] = feed_data
          Jekyll.logger.info "Debug: Parsed feed into site.data"
        else
          Jekyll.logger.error "Error: Failed to fetch feed - #{response.code} #{response.message}"
        end
      rescue => e
        Jekyll.logger.error "Error: Failed to fetch or parse feed - #{e.message}"
      end
    end
  end
end

Jekyll::Hooks.register :site, :after_init do |site|
  Jekyll.logger.info "Debug: MediumFeedGenerator registered and ready"
end
