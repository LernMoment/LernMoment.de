---
layout: page
title: "Moin und willkommen zum C# Tutorial Deutsch"
excerpt: "Das C# Tutorial Deutsch hilft dir beim Einstieg in die professionelle Softwareentwicklung mit Visual Studio 2015 und C#."
search_omit: true
image:
  feature: csharp-tutorial-large-feature.jpg
modified:
lm-newsletter-group-id: 1
date: 2016-02-20T09:30:00+01:00
---

Hier findest du Links, Übungen, Neuigkeiten und vieles mehr rund um das [C# Tutorial Deutsch](https://www.youtube.com/playlist?list=PLP2TrPpx5VNkr-wmkjguVZAvN4T5EPJbF). 

Ich habe dieses Tutorial vor einiger Zeit gestartet und bin überwältigt von der Resonanz. Um mich bei dir zu bedanken, habe ich für jedes Video des Tutorials ShowNotes erstellt. So hast du eine bessere Struktur aller Informationen, die bisher nur in der Videobeschreibung bei YouTube verfügbar war. Hier der direkte Zugriff auf die einzelnen Teile des Tutorials:

<ul class="post-list">
{% for post in site.categories.csharp-tutorial-deutsch %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }}<span class="entry-date">{% for tag in post.tags %}{{ tag }}{% unless forloop.last %}, {% endunless %}{% endfor %}</span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>

<br/>

<div class="subscribe-notice">
<h5>Lerne alles über C# und professionelle Softwareentwicklung</h5>
<a markdown="0" href="https://www.udemy.com/einstieg-in-csharp-software-programmieren-wie-ein-profi/?couponCode=GEB2016_UCSK12" class="notice-button">Für 12€ Geburtstags-Spezial-Preis zum Online-Kurs "Einstieg in C#" >></a>
</div>

## Updates & Neuigkeiten

Ich erweitere sowohl das Tutorial als auch die zusätzlichen (kostenlosen) Ressourcen kontinuierlich. Wenn du über Neuigkeiten informiert werden möchtest, dann kannst du dich hier einschreiben:

<div class="subscribe-notice">
	{% include lernmoment-subscribe.html %}
</div>

