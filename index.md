---
layout: main-page
title: 
excerpt: "Beherrsche Softwareentwicklung indem du täglich kurze Lerneinheiten für C# (.NET / Mono) und C absolvierst."
search_omit: true
image:
  feature: intro-mac.jpg
lm-newsletter-group-id: 16
---

> Deine Arbeitstage in der Softwareentwicklung sind häufig stressig? Du weißt nicht was deine beruflichen Ziele sind und/oder wie du sie erreichen kannst?
> 
> Dann ist es Zeit, dass du deine Professionalität erhöhst. Hier bekommst du Anregungen, Hintergrundwissen und ich zeige dir Schritt für Schritt wie du deine Zufriedenheit im Job erhöhen kannst ohne jede Minute Freizeit opfern zu müssen.

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

