module Jekyll
  class TagPageGenerator < Generator
    safe true

    def generate(site)
      # Get all unique tags from posts
      tags = site.posts.docs.flat_map { |post| post.data['tags'] || [] }.uniq

      # Get existing tag pages to avoid duplicates
      existing_tag_pages = site.pages.select { |page| page.path.start_with?('tag/') }
      existing_tags = existing_tag_pages.map { |page| page.data['tag'] }

      # Only generate pages for tags that don't already have a page
      (tags - existing_tags).each do |tag|
        site.pages << TagPage.new(site, site.source, tag)
      end
    end
  end

  class TagPage < Page
    def initialize(site, base, tag)
      @site = site
      @base = base
      @dir = 'tag'
      @name = "#{tag.downcase.gsub(' ', '-')}.md"

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'blog_by_tag.html')
      self.data['layout'] = 'blog_by_tag'
      self.data['tag'] = tag
      self.data['permalink'] = "/tag/#{tag}/"
    end
  end
end
