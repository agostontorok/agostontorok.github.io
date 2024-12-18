---
layout: default
---

# Hello world. I'm Ágoston. 👋

This is a personal website, kinda oldschool but it shows my deep curiosity about trying out new things be it technology or art.

Over the past 15 years, I've explored various passions:
- 📚 Started writing a [book](/book) about the soft skills need for leadership in AI R&D
- ✍️ Wrote [blog posts](/blog) about software, AI, leadership and strategy
- 🎨 Tried my hand at drawing [comics](/comics)
- 🎲 Designed my own [board games](/games)

I believe in continuous learning and self-improvement. You can also find me sharing insights and experiences through my [talks](/talks) at various events.

---

## Topics I Write About 🏷️

<div class="tag-container">
  <div class="tag-sections">
  {% assign post_tags = site.posts | map: "tags" | join: ',' | split: ',' | uniq %}
  {% assign page_tags = site.pages | map: "tags" | join: ',' | split: ',' | uniq %}
  {% assign medium_tags = site.data.medium_feed.items | map: "categories" | join: "," | split: "," | uniq %}
  {% assign all_tags = post_tags | concat: page_tags | concat: medium_tags | uniq | compact | sort %}
  {% for tag in all_tags %}
    {% if tag != '' and tag != nil %}
      {% assign post_count = site.posts | where_exp: "post", "post.tags contains tag" | size %}
      {% assign page_count = site.pages | where_exp: "page", "page.tags contains tag" | size %}
      {% assign medium_count = site.data.medium_feed.items | where_exp: "post", "post.categories contains tag" | size %}
      {% assign total_count = post_count | plus: page_count | plus: medium_count %}
      <div class="tag-section">
        <button class="tag-button" onclick="toggleTag('{{ tag | slugify }}', this)">
          {{ tag }} [{{ total_count }}]
        </button>
      </div>
    {% endif %}
  {% endfor %}
  </div>

  <div class="tag-contents">
  {% for tag in all_tags %}
    {% if tag != '' and tag != nil %}
      <div id="{{ tag | slugify }}" class="tag-content">
        <ul>
        {% assign tagged_posts = site.posts | where_exp: "post", "post.tags contains tag" %}
        {% for post in tagged_posts %}
          <li>
            <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
            <small>({{ post.date | date: '%d %B %Y' }})</small>
          </li>
        {% endfor %}
        
        {% assign tagged_pages = site.pages | where_exp: "page", "page.tags contains tag" %}
        {% for page in tagged_pages %}
          <li>
            <a href="{{ site.baseurl }}{{ page.url }}">{{ page.title }}</a>
            <small>(Page)</small>
          </li>
        {% endfor %}
        
        {% assign medium_posts = site.data.medium_feed.items | where_exp: "post", "post.categories contains tag" %}
        {% for post in medium_posts %}
          <li>
            <a href="{{ post.link }}" target="_blank">{{ post.title }} 📝</a>
            <small>({{ post.pubDate | date: '%d %B %Y' }}) - Medium</small>
          </li>
        {% endfor %}
        </ul>
      </div>
    {% endif %}
  {% endfor %}
  </div>
</div>

<style>
.tag-container {
  position: relative;
  margin: 2rem 0;
}

.tag-sections {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  position: relative;
}

.tag-section {
  display: inline-block;
}

.tag-button {
  padding: 0.5rem 1rem;
  background: #f0f0f0;
  border: none;
  border-radius: 20px;
  cursor: pointer;
  font-size: 1rem;
  transition: all 0.2s ease;
  white-space: nowrap;
}

.tag-button:hover {
  background: #e0e0e0;
}

.tag-button.active {
  background: #e0e0e0;
}

.tag-contents {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  pointer-events: none;
}

.tag-content {
  position: absolute;
  left: 0;
  margin-top: 0.5rem;
  background: white;
  border: 1px solid #f0f0f0;
  border-radius: 4px;
  padding: 1rem;
  min-width: 300px;
  z-index: 100;
  box-shadow: 0 2px 8px rgba(0,0,0,0.1);
  display: none;
  pointer-events: auto;
}

.tag-content ul {
  list-style: none;
  padding-left: 0;
  margin: 0.5rem 0;
}

.tag-content li {
  margin: 0.5rem 0;
  white-space: nowrap;
}

.tag-content small {
  color: #666;
  margin-left: 0.5rem;
}
</style>

<script>
function toggleTag(tagId, button) {
  var content = document.getElementById(tagId);
  var wasVisible = content.style.display === "block";
  
  // Reset all buttons and contents
  document.querySelectorAll('.tag-button').forEach(btn => btn.classList.remove('active'));
  document.querySelectorAll('.tag-content').forEach(content => content.style.display = "none");
  
  if (!wasVisible) {
    // Get button position
    var buttonRect = button.getBoundingClientRect();
    var containerRect = document.querySelector('.tag-container').getBoundingClientRect();
    
    // Calculate top position relative to the button, accounting for scroll
    var scrollTop = window.pageYOffset || document.documentElement.scrollTop;
    var topPosition = buttonRect.bottom - containerRect.top;
    
    // Position and show content
    content.style.top = topPosition + 'px';
    content.style.display = "block";
    button.classList.add('active');
  }
}

// Close tag content when clicking outside
document.addEventListener('click', function(event) {
  if (!event.target.closest('.tag-section') && !event.target.closest('.tag-content')) {
    document.querySelectorAll('.tag-button').forEach(btn => btn.classList.remove('active'));
    document.querySelectorAll('.tag-content').forEach(el => {
      el.style.display = 'none';
    });
  }
});
</script>
