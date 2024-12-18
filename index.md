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
  {% assign tags = site.posts | map: "tags" | uniq | sort %}
  {% for tag in tags %}
    {% assign tag_posts = site.posts | where_exp: "post", "post.tags contains tag" %}
    <div class="tag-section">
      <button class="tag-button" onclick="toggleTag('{{ tag | slugify }}', this)">
        {{ tag }} [{{ tag_posts.size }}]
      </button>
    </div>
  {% endfor %}
  </div>

  <div class="tag-contents">
  {% for tag in tags %}
    {% assign tag_posts = site.posts | where_exp: "post", "post.tags contains tag" %}
    <div id="{{ tag | slugify }}" class="tag-content">
      <ul>
      {% for post in tag_posts %}
        <li>
          <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
          <small>({{ post.date | date: '%d %B %Y' }})</small>
        </li>
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
