---
layout: page
title: Blog
---

<div class="blog-posts">
  <i>Latest posts are from Medium, earlier ones are exlusively here</i>
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
