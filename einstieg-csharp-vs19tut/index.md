---
layout: page
title: Einstieg in C# - Software programmieren wie ein Profi
excerpt: Online-Kurs bei dem du professionelle Softwareentwicklung und die Grundlagen von C# lernst.
search_omit: true
banner: aus
image:
  feature: VS2019-Banner.jpg
modified:
lm-newsletter-group-id: 4
date: 2019-09-17T09:30:00+01:00
---

Mit diesem Kurs hast du in 30 Minuten deine erste C#-Anwendung entwickelt. Viel wichtiger ist jedoch, dass du nicht nur Programmieren lernst, sondern die Arbeitsweise, die professionelle Softwareentwickler verwenden, um herausragende Anwendungen zu entwickeln. Ich verdiene seit über 13 Jahren mit Softwareentwicklung mein Geld und erkläre dir in diesem Kurs anhand vieler Beispiele, Übungen und direktem Feedback die wichtigsten Aspekte der professionellen Softwareentwicklung.

Alles Wissenswerte zum Kurs bekommst du, wenn du auf das folgende Bild klickst. Für dich als Leser meines Blogs gibt es auch einen Rabatt. Weiter unten findest du (kostenloses) Bonusmaterial zum Kurs. 
<figure>
	<a href="https://www.udemy.com/course/einstieg-in-csharp-software-programmieren-wie-ein-profi/?couponCode=UCSK_O150_YT-ALL" target="_blank"><img src="/images/UCsK_LandingPage_VS19Tut_Rabatt.jpg" alt="image"></a>
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

