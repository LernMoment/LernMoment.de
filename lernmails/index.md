---
layout: page
title: "Moin und willkommen zu deinen LernMails"
excerpt: "Hier findest du alle LernMails die dich auf deinem Weg vom Einsteiger zum C# Entwickler voran bringen."
search_omit: true
image:
  feature: banner/lernmoment-main.jpg
modified:
lm-newsletter-group-id: 1
date: 2021-08-18T09:30:00+01:00
---

Alle LernMails die bisher veröffentlicht wurden:

<ul class="post-list">
{% for mail in site.lernmails %} 
  <li><article><a href="{{ site.url }}{{ mail.url }}">{{ mail.title }}<span class="entry-date">{% for tag in mail.tags %}{{ tag }}{% unless forloop.last %}, {% endunless %}{% endfor %}</span>{% if mail.excerpt %} <span class="excerpt">{{ mail.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>

<br/>

## Du bekommst die LernMails nicht in dein Postfach?
Das ist ja schon fast eine Frechheit. Ganz offensichtlich ist da bei uns etwas schief gegangen ;-). Am besten du meldest dich hier direkt an:
<div class="subscribe-notice">
	{% include lernmoment-subscribe.html %}
</div>

Du hast ein Problem bei der Anmeldung? Du bist zwar angemeldet, aber die LernMails kommen einfach nicht in deinem Postfach an? Du hast sonstige Probleme mit der LernMail?

Dann wende dich einfach an die [gute Fee von LernMoment](mailto:lara@lernmoment.de). Bei den organisatorischen Problemen kann sie dir helfen. Auch bei sonstigen Wünschen rund um LernMoment und die LernMails ist sie deine erste Ansprechpartnerin. Sie heißt übrigens Lara und hält den Laden hier am Laufen ;-).