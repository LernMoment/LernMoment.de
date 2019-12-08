---
layout: page
title: Einstieg in C# - Software programmieren wie ein Profi
excerpt: Online-Kurs bei dem du professionelle Softwareentwicklung und die Grundlagen von C# lernst.
banner: aus
image:
  feature: MatheFormel.jpg
modified:
lm-newsletter-group-id: 4
date: 2016-02-03T09:30:00+01:00
---

<div class="subscribe-notice">
<h5>Hast du noch Fragen?</h5>
<a markdown="0" href="https://www.udemy.com/course/einstieg-in-csharp-software-programmieren-wie-ein-profi/?referralCode=73784B79162D93219DEC" class="notice-button">Nö! Ich will sofort C# lernen >></a>
</div>

Mit diesem Kurs hast du in 30 Minuten deine erste C#-Anwendung entwickelt. Viel wichtiger ist jedoch, dass du nicht nur Programmieren lernst, sondern die Arbeitsweise, die professionelle Softwareentwickler verwenden, um herausragende Anwendungen zu entwickeln. Ich verdiene seit über 13 Jahren mit Softwareentwicklung mein Geld und erkläre dir in diesem Kurs anhand vieler Beispiele, Übungen und direktem Feedback die wichtigsten Aspekte der professionellen Softwareentwicklung.

Alles Wissenswerte zum Kurs bekommst du, wenn du auf [diesen Link](https://www.udemy.com/course/einstieg-in-csharp-software-programmieren-wie-ein-profi/?referralCode=73784B79162D93219DEC) oder das folgende Bild klickst.
<figure>
	<a href="https://www.udemy.com/course/einstieg-in-csharp-software-programmieren-wie-ein-profi/?referralCode=73784B79162D93219DEC" target="_blank"><img src="/images/UCsK-LandingPage-Rabatt.jpg" alt="image"></a>
</figure>

## Details und weitere Ressourcen zum Kurs

<ul class="post-list">
<!-- Create empty arrays -->
{% assign both_categories = '' | split: ',' %}
<!-- Push to both_categories -->
{% for post in site.categories.einstieg-csharp %}
  {% assign both_categories = both_categories | push: post %}
{% endfor %}
{% for post in site.categories.alle %}
  {% assign both_categories = both_categories | push: post %}
{% endfor %}
{% assign both_categories = both_categories | sort: 'date' %}

{% for post in both_categories reversed %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }}<span class="entry-date">{% for tag in post.tags %}{{ tag }}{% unless forloop.last %}, {% endunless %}{% endfor %}</span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>

## Updates & Neuigkeiten

Ich erweitere sowohl den Kurs als auch die zusätzlichen (kostenlosen) Ressourcen kontinuierlich. Wenn du über Neuigkeiten zu diesem und weiteren Kursen informiert werden möchtest, dann kannst du dich hier einschreiben:

<div class="subscribe-notice">
	{% include lernmoment-subscribe.html %}
</div>

