---
layout: page
title: C# (.NET / Mono)
excerpt: "Alle bisher veröffentlichten LernMomente für die Programmiersprache C#."
search_omit: true
---

<ul class="post-list">
{% for post in site.categories.lernmoment-csharp %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>
