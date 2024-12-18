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

## Latest Posts 📝
*Fresh content from Medium, earlier posts exclusively here*

<div class="blog-posts">
{% if site.data.medium_feed %}
<ul class="related-posts">
  {% for post in site.data.medium_feed.items limit:7 %}
    <li>
      <h2>
        <a href="{{ post.link }}" target="_blank">
          <span>{{ post.title }}</span><br/>
          <small>{{ post.pubDate | date: '%d %B %Y' }}</small>
        </a>
      </h2>
      {% if post.description contains '<h4>' %}
        {% assign content = post.description | split: '</h4>' %}
        {% assign subtitle = content.first | split: '<h4>' | last %}
        {% assign description = content.last | strip_html | truncatewords: 30 %}
        {{ description }}
      {% else %}
        {{ post.description | strip_html | truncatewords: 30 }}
      {% endif %}
    </li>
  {% endfor %}
</ul>
{% endif %}

{% for post in site.posts %}
{% assign currentdate = post.date | date: "%Y" %}
{% if currentdate != date %}
{% unless forloop.first %}</ul>{% endunless %}
<ul class="related-posts">
  {% assign date = currentdate %}
  {% endif %}
  <li>
    <h2>
      <a href="{{ site.baseurl }}{{ post.url }}">
        <span>{{ post.title }}</span><br/>
        <small>{{ post.date | date: '%d %B %Y' }}</small>
      </a>
    </h2>
  </li>
  {{ post.excerpt | remove: '<p>' | remove: '</p>' }}
  <a href="{{ site.baseurl }}{{ post.url }}"> more... </a>
{% if forloop.last %}</ul>{% endif %}
{% endfor %}
</div>
