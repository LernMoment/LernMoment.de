---
layout: page
title: "??? C# Challenge"
excerpt: 
search_omit: true
image:
  feature: MatheFormel.jpg
modified:
lm-newsletter-group-id: 8
date: 2016-06-02T09:30:00+01:00
---

In letzter Zeit wurden mir immer wieder Fragen wie diese gestellt: **"Ich habe eine erste Idee der Konzepte von professioneller Softwareentwicklung in C# und JETZT?"**

JETZT werden wir gemeinsam eine kleine C# Anwendung entwickeln. Es ist nicht wie in einem Kurs in dem ich einfach alles erkläre und gut ist. Sondern es ist eine Herausforderung der du dich stellen sollst.

<iframe width="560" height="315" src="https://www.youtube.com/embed/3AIX1TzSqog" frameborder="0" allowfullscreen></iframe>


## Videos und Artikel zur Challenge

<ul class="post-list">
<!-- Create empty arrays -->
{% assign both_categories = '' | split: ',' %}
<!-- Push to both_categories -->
{% for post in site.categories.fragezeichen-csc '%}
  {% assign both_categories = both_categories | push: post %}
{% endfor %}
{% for post in site.categories.alle '%}
  {% assign both_categories = both_categories | push: post %}
{% endfor %}
{% assign both_categories = both_categories | sort: 'date' %}

{% for post in both_categories reversed %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }}<span class="entry-date">{% for tag in post.tags %}{{ tag }}{% unless forloop.last %}, {% endunless %}{% endfor %}</span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>

## Updates & Neuigkeiten

<div class="subscribe-notice">
	{% include lernmoment-subscribe.html %}
</div>

