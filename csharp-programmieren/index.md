---
layout: page
title: C# (.NET / Mono)
excerpt: "Alle bisher veröffentlichten LernMomente für die Programmiersprache C#."
image:
  feature: csharp-programmieren-ohne.jpg
search_omit: true
lm-newsletter-group-id: 2
---

<div class="subscribe-notice">
	<h5>Melde dich an zu DEINEM täglichen LernMoment C#:</h5>
	{% include lernmoment-subscribe.html %}
</div>

<ul class="post-list">
{% for post in site.categories.csharp-programmieren %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>
