---
layout: page
title: C# (.NET / Mono)
excerpt: "Alle bisher veröffentlichten LernMomente für die Programmiersprache C#."
image:
  feature: csharp-programmieren-ohne.jpg
search_omit: true
lm-newsletter-group-id: 2
---

Hier findest du alle bisher erschienen LernMomente. Wenn du es dir zur Gewohnheit machen möchtest jeden Tag ein paar Minuten zu lernen, dann melde dich für den Newsletter an. Damit bekommst du jeden Werktag den aktuellen LernMoment in dein Postfach. So wirst du täglich an das Lernen erinnert.

<a markdown="0" href="{{ site.url }}/werde-meister/" class="notice-button">Werde Meister in C# mit deinem täglichen LernMoment >></a>

### Kooperation
<a href="/kooperation-dotnet-developer-conference-2015/">
<img src="{{ site.url }}/images/Logo_DDC_2015.jpg" alt=".NET Developer Conference 2015">
</a>

### LernMomente C\#

<ul class="post-list">
{% for post in site.categories.csharp-programmieren %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>
