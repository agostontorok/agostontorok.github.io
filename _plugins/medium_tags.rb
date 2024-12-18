require 'json'

module Jekyll
  class MediumTagsGenerator < Generator
    safe true
    priority :high

    def generate(site)
      # Get the Medium feed data
      medium_feed = site.data['medium_feed']
      return unless medium_feed && medium_feed['items']

      # Create a hash to store posts by tag
      medium_tags = {}

      # Process Medium posts
      medium_feed['items'].each do |post|
        # Medium stores tags in the categories field
        post['categories']&.each do |tag|
          medium_tags[tag] ||= []
          medium_tags[tag] << {
            'title' => post['title'],
            'url' => post['link'],
            'date' => post['pubDate'],
            'description' => post['description'],
            'source' => 'medium'
          }
        end
      end

      # Store the processed tags data
      site.data['medium_tags'] = medium_tags
    end
  end
end
