---
layout: main-page
title: 
excerpt: "Beherrsche Softwareentwicklung in kontinuierlichen, aber kleinen Schritten. Vom Anfänger zum Profi in C#, Git, GitHub und mehr."
search_omit: true
image:
  feature: banner/lernmoment-main.jpg
lm-newsletter-group-id: 2
---

> Wenn du anfängst Programmieren zu lernen, dann fragst du dich bestimmt wo du anfangen sollst? **Was sind die ersten Schritten?** Wie stellst du sicher, dass du am Ball bleibst und dein Ziel - du weißt doch, warum du Programmieren lernen willst, oder? - erreichst? Wo und **wie findest du Ressourcen** (Übungen, Artikel, Videos, Tutorials, …) die zu dir passen? 
>
> Hier auf LernMoment.de gebe ich dir **Antworten auf diese und weitere Fragen.**

<a markdown="0" href="{{ site.url }}/starte-hier/" class="notice-button">Starte Hier >></a>

### Die aktuellsten LernMomente:
<ul class="post-list">
<!-- Create array for sorting ALL posts -->
{% assign items = site.posts | sort: 'date' | reverse %}
<!-- Show the 5 most recent posts -->
{% for post in items limit:5 %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }}<span class="entry-date">{% for tag in post.tags %}{{ tag }}{% unless forloop.last %}, {% endunless %}{% endfor %}</span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>

<a markdown="0" href="{{ site.url }}/blog/" class="notice-button">Lese weitere LernMomente >></a>

<div class="subscribe-notice">
	<h5>Informiere mich, wenn es was neues gibt:</h5>
	{% include lernmoment-subscribe.html %}
</div>

