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
  {% assign raw_tags = '' | split: '' %}
  
  <!-- From posts -->
  {% for post in site.posts %}
    {% if post.tags %}
      {% assign raw_tags = raw_tags | concat: post.tags %}
    {% endif %}
  {% endfor %}
  
  <!-- From pages -->
  {% for page in site.pages %}
    {% if page.tags %}
      {% assign raw_tags = raw_tags | concat: page.tags %}
    {% endif %}
  {% endfor %}
  
  <!-- From Medium posts -->
  {% assign medium_tags = site.data.medium_feed.items | map: "categories" | join: "," | split: "," %}
  {% assign raw_tags = raw_tags | concat: medium_tags %}
  
  <!-- Process all tags at once -->
  {% assign processed_tags = '' | split: '' %}
  {% for tag in raw_tags %}
    {% if tag != '' %}
      {% assign standardized_tag = tag | strip | strip_newlines | downcase | replace: "-", " " | replace: '"', '' %}
      {% assign words = standardized_tag | split: ' ' %}
      {% assign filtered_words = '' | split: '' %}
      {% for word in words %}
        {% assign trimmed_word = word | strip %}
        {% if trimmed_word != '' %}
          {% assign filtered_words = filtered_words | push: trimmed_word %}
        {% endif %}
      {% endfor %}
      {% capture capitalized_tag %}
        {% for word in filtered_words %}
          {{ word | capitalize }}{% unless forloop.last %} {% endunless %}
        {% endfor %}
      {% endcapture %}
      {% assign capitalized_tag = capitalized_tag | strip | strip_newlines %}
      {% assign processed_tags = processed_tags | push: capitalized_tag %}
    {% endif %}
  {% endfor %}
  
  <!-- Sort and deduplicate -->
  {% assign sorted_tags = processed_tags | sort_natural %}
  {% assign all_tags = '' | split: '' %}
  {% assign previous_tag = '' %}
  
  {% for tag in sorted_tags %}
    {% assign clean_tag = tag | strip | strip_newlines %}
    {% if clean_tag != '' and clean_tag != previous_tag %}
      {% assign all_tags = all_tags | push: clean_tag %}
      {% assign previous_tag = clean_tag %}
    {% endif %}
  {% endfor %}
  
  <!-- Create tag buttons with counts -->
  {% for tag in all_tags %}
    {% assign tag_count = 0 %}
    {% for t in processed_tags %}
      {% if t == tag %}
        {% assign tag_count = tag_count | plus: 1 %}
      {% endif %}
    {% endfor %}
    
    {% if tag_count > 0 %}
      <div class="tag-section">
        <button class="tag-button" onclick="toggleTag('{{ tag | slugify }}', this)">
          {{ tag }} [{{ tag_count }}]
        </button>
      </div>
    {% endif %}
  {% endfor %}
  
  <!-- Create tag contents -->
  <div class="tag-contents">
  {% for tag in all_tags %}
    {% assign standardized_tag = tag | strip %}
    <div id="{{ standardized_tag | slugify }}" class="tag-content">
      <ul>
      <li style="display:none">Debug - Raw tag: '{{ standardized_tag }}'</li>
      {% assign tag_normalized = standardized_tag | strip | strip_newlines | downcase | replace: " ", "" | replace: "-", "" %}
      <li style="display:none">Debug - After normalization: '{{ tag_normalized }}'</li>
      {% for post in site.data.medium_feed.items %}
        {% for category in post.categories %}
          {% assign normalized_category = category | strip | strip_newlines | downcase | replace: " ", "" | replace: "-", "" %}
          <li style="display:none">Debug - Comparing: '{{ normalized_category }}' with '{{ tag_normalized }}'</li>
          {% if normalized_category == tag_normalized %}
            <li>
              <a href="{{ post.link }}" target="_blank">{{ post.title }}</a>
              <small>({{ post.pubDate | date: '%d %B %Y' }}) (Medium)</small>
            </li>
            {% break %}
          {% endif %}
        {% endfor %}
      {% endfor %}
      
      {% for post in site.posts %}
        {% for post_tag in post.tags %}
          {% assign current_tag = post_tag | strip | downcase | replace: "-", " " %}
          {% assign words = current_tag | split: ' ' %}
          {% capture capitalized_current_tag %}
            {% for word in words %}
              {{ word | capitalize }}{% unless forloop.last %} {% endunless %}
            {% endfor %}
          {% endcapture %}
          {% assign capitalized_current_tag = capitalized_current_tag | strip %}
          {% if capitalized_current_tag == standardized_tag %}
            <li>
              <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
              <small>({{ post.date | date: '%d %B %Y' }})</small>
            </li>
          {% endif %}
        {% endfor %}
      {% endfor %}
      
      {% for page in site.pages %}
        {% if page.tags %}
          {% for page_tag in page.tags %}
            {% assign current_tag = page_tag | strip | downcase | replace: "-", " " %}
            {% assign words = current_tag | split: ' ' %}
            {% capture capitalized_current_tag %}
              {% for word in words %}
                {{ word | capitalize }}{% unless forloop.last %} {% endunless %}
              {% endfor %}
            {% endcapture %}
            {% assign capitalized_current_tag = capitalized_current_tag | strip %}
            {% if capitalized_current_tag == standardized_tag %}
              <li>
                <a href="{{ site.baseurl }}{{ page.url }}">{{ page.title }}</a>
                <small>(Page)</small>
              </li>
            {% endif %}
          {% endfor %}
        {% endif %}
      {% endfor %}
      </ul>
    </div>
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
