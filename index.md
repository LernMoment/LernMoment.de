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
> Dann mach dir 2 Minuten systematisch und fokussiert lernen am Tag zur Gewohnheit. Somit wirst du dein Können langfristig verbessern. Das macht dich nicht nur besser in deinem Beruf, sondern gibt dir auch etwas Freizeit zurück. Probier es aus:

<div class="subscribe-notice">
	<h5>Informiere mich, wenn es was neues gibt:</h5>
	{% include lernmoment-subscribe.html %}
</div>

#### Die aktuellsten LernMomente - Entwickeln mit C\#

<ul class="post-list">
{% for post in site.categories.csharp-programmieren limit:5 %}
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date">{% for tag in post.tags %}{{ tag }}{% unless forloop.last %}, {% endunless %}{% endfor %}</span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>

<div class="subscribe-notice">
	<h5>Mehr zu den LernMomenten - Entwickeln mit C#?</h5>
	<a href="/csharp-programmieren/" class="subscribe-notice-button">LernMomente C# - Archiv >></a> 
	<a href="/werde-meister/" class="subscribe-notice-button">Will ich meistern >></a> 	
</div>

#### VORSCHAU: LernMomente - Entwickeln mit C

LernMomente in C erscheinen momentan noch nicht täglich. Mehr Informationen, findest du [hier]({{ site.url }}/c-programmieren/)

<ul class="post-list">
{% for post in site.categories.c-programmieren limit:5 %}
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date">{% for tag in post.tags %}{{ tag }}{% unless forloop.last %}, {% endunless %}{% endfor %}</span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>

#### Hintergrundinformationen

Wenn du mehr zum Konzept des LernMoments erfahren möchtest, dann findest du hier einige Artikel dazu:

<ul class="post-list">
{% for post in site.categories.hintergrund limit:5 %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }}<span class="entry-date">{% for tag in post.tags %}{{ tag }}{% unless forloop.last %}, {% endunless %}{% endfor %}</span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>

