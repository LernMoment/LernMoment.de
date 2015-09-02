---
layout: page
title: Docker in der Softwareentwicklung
excerpt: "Vorschau: LernMomente für die Container-Technologie Docker erscheinen noch nicht täglich. Hier bekommst du schon mal einen ersten Eindruck, was dich erwartet."
lm-newsletter-group-id: 4
search_omit: true
image:
  feature: 
modified:
date: 2015-08-03T09:42:48+02:00
---

> **Hinweis:** Dieser LernMoment ist momentan nur eine Vorschau. Er erscheint also noch nicht täglich. Wenn du Interesse an diesem LernMoment hast, dann trag dich in den Newsletter ein. Ich informiere dich, sobald es Neuigkeiten zu "Docker verwenden in der Softwareentwicklung" gibt. Schau dir außerdem unbedingt die bisher veröffentlichten LernMomente zu diesem Thema an.

<ul class="post-list">
{% for post in site.categories.docker-verwenden %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>

<div class="subscribe-notice">
	<h5>Informiere mich, wenn der tägliche LernMoment <br> Docker verwenden in der Softwareentwicklung startet:</h5>
	{% include lernmoment-subscribe.html %}
</div>
