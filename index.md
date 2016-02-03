---
layout: main-page
title: 
excerpt: "Beherrsche Softwareentwicklung indem du täglich kurze Lerneinheiten für C# (.NET / Mono) und C absolvierst."
search_omit: true
image:
  feature: intro-mac.jpg
lm-newsletter-group-id: 16
---

> Du schaust die Syntax **deiner** Programmiersprache immer wieder nach und hast keine Zeit dein Können mit Büchern und Kursen zu verbessern?
> 
> Dann mach dir 2 Minuten systematisches und fokussiertes Lernen am Tag zur Gewohnheit. Somit wirst du dein Können langfristig verbessern. Das macht dich nicht nur besser in deinem Beruf, sondern gibt dir auch ein Stück Freizeit zurück.

<a markdown="0" href="{{ site.url }}/starte-hier/" class="notice-button">Mehr zum Konzept des LernMoments >></a>

<ul class="post-list">
{% for post in site.categories.hintergrund limit:5 %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }}<span class="entry-date">{% for tag in post.tags %}{{ tag }}{% unless forloop.last %}, {% endunless %}{% endfor %}</span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>

<div class="subscribe-notice">
	<h5>Informiere mich, wenn es was neues gibt:</h5>
	{% include lernmoment-subscribe.html %}
</div>

