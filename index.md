---
layout: main-page
title: 
excerpt: "Beherrsche Softwareentwicklung indem du täglich kurze Lerneinheiten für C# (.NET / Mono) und C absolvierst."
search_omit: true
image:
  feature: intro-mac.jpg
---

{% include lernmoment-subscribe.html %}

#### Die aktuellsten LernMomente

<ul class="post-list">
{% for post in site.posts limit:10 %}
{% if post.lernmoment %}
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} </span><span class="entry-date">{{ post.lernmoment }} &nbsp;&bull;&nbsp; {% for tag in post.tags %}{{ tag }}{% unless forloop.last %}, {% endunless %}{% endfor %}</span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endif %}
{% endfor %}
</ul>


#### Hintergrundinformationen

Wenn du mehr zum Konzept des LernMoments erfahren möchtest, dann findest du hier einige Artikel dazu:

<ul class="post-list">
{% for post in site.categories.hintergrund limit:5 %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} </span><span class="entry-date">{% for tag in post.tags %}{{ tag }}{% unless forloop.last %}, {% endunless %}{% endfor %}</span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>

