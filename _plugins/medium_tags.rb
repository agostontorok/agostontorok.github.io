require 'feedjira'
require 'httparty'
require 'json'

module Jekyll
  class MediumTagsGenerator < Generator
    safe true
    priority :high

    def generate(site)
      if site.config['author'] && site.config['author']['medium']
        medium_username = site.config['author']['medium']
        feed_url = "https://medium.com/feed/@#{medium_username}"
        
        begin
          # Fetch and parse the feed
          xml = HTTParty.get(feed_url).body
          feed = Feedjira.parse(xml)
          
          # Extract tags from Medium posts
          medium_tags = {}
          
          feed.entries.each do |entry|
            # Medium stores tags in the categories field
            entry.categories.each do |tag|
              medium_tags[tag] ||= 0
              medium_tags[tag] += 1
            end
          end
          
          # Store the data for use in templates
          site.data['medium_tags'] = medium_tags
          
        rescue => e
          Jekyll.logger.warn "Medium Tags:", "Failed to fetch Medium feed: #{e.message}"
        end
      end
    end
  end
end
