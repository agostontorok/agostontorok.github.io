require 'jekyll'

Jekyll::Hooks.register :site, :after_init do |site|
  puts "Debug: Starting MediumFeedGenerator debug"
  puts "Debug: Site config keys: #{site.config.keys.inspect}"
  puts "Debug: medium_feed_file config: #{site.config['medium_feed_file'].inspect}"
  puts "Debug: Plugins list: #{site.config['plugins'].inspect}"
  puts "Debug: Checking if _data directory exists"
  data_dir = File.join(site.source, '_data')
  puts "Debug: _data directory exists: #{File.directory?(data_dir)}"
  puts "Debug: Checking if medium_feed.json exists"
  feed_file = File.join(data_dir, 'medium_feed.json')
  puts "Debug: medium_feed.json exists: #{File.exist?(feed_file)}"
  puts "Debug: RSS2JSON_API_KEY environment variable: #{ENV['RSS2JSON_API_KEY'] ? 'present' : 'missing'}"
end
