---
layout: page
title: Einstieg in C# - Software programmieren wie ein Profi
excerpt: Hier stelle ich dir meinen Online-Kurs Einstieg in C# bei Udemy vor.
search_omit: true
image:
  feature: MatheFormel.jpg
modified:
lm-newsletter-group-id: 32
date: 2016-02-03T09:30:00+01:00
---

Mit diesem Kurs hast du in 30 Minuten deine erste C#-Anwendung entwickelt. Viel wichtiger ist jedoch, dass du nicht nur Programmieren lernst, sondern die Arbeitsweise, die professionelle Softwareentwickler verwenden um herausragende Anwendungen zu entwickeln. Ich verdiene seid über 13 Jahren mit Softwareentwicklung mein Geld und erkläre dir in diesem Kurs anhand vieler Beispiele, Übungen und direktem Feedback, die wichtigsten Aspekte der professionellen Softwareentwicklung.

Alles wissenswerte zum Kurs und **80% Einführungsrabatt** bekommst du, wenn du auf das folgende Bild klickst. Weiter unten findest du (kostenloses) Bonusmaterial zum Kurs. 
<figure>
	<a href="https://www.udemy.com/einstieg-in-csharp-software-programmieren-wie-ein-profi/?couponCode=UCsK_EinSta" target="_blank"><img src="/images/UCsK_LandingPage_Rabatt_Gross.png" alt="image"></a>
</figure>

## Details und weitere Ressourcen zum Kurs

<ul class="post-list">
{% for post in site.categories.kurse %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }}<span class="entry-date">{% for tag in post.tags %}{{ tag }}{% unless forloop.last %}, {% endunless %}{% endfor %}</span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>

## Updates & Neuigkeiten

Ich erweitere sowohl den Kurs wie auch die zusätzlichen (kostenlosen) Ressourcen kontinuierlich. Wenn du über Neuigkeiten zu diesem und weiteren Kursen informiert werden möchtest, dann kannst du dich hier einschreiben:

<div class="subscribe-notice">
	<h5>Informiere mich, wenn es was neues gibt:</h5>
	{% include lernmoment-subscribe.html %}
</div>

