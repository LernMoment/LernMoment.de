---
layout: page
title: "Moin und willkommen zu deinen LernMomenten"
excerpt: "Hier findest du alle Artikel für deinen Weg vom Einsteiger zum C# Entwickler."
search_omit: true
image:
  feature: banner/lernmoment-main.jpg
modified:
lm-newsletter-group-id: 1
date: 2020-06-08T09:30:00+01:00
---

Alle LernMomente die bisher veröffentlicht wurden:

<ul class="post-list">
{% for post in site.posts %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }}<span class="entry-date">{% for tag in post.tags %}{{ tag }}{% unless forloop.last %}, {% endunless %}{% endfor %}</span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>

<br/>

## Updates & Neuigkeiten
Du meinst es ernst und willst den Weg vom Einsteiger zum C# Entwickler beschreiten? Dann verpasse keine Übung und kein Tutorial mehr! Mit der *LernMail* bekommst du alles nötige für deine Aus- und Weiterbildung zum C# Entwickler kostenlos in deine Inbox. Hier kannst du dich anmelden:
<div class="subscribe-notice">
	{% include lernmoment-subscribe.html %}
</div>

