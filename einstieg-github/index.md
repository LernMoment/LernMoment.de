---
layout: page
title: Einstieg in GitHub - Entwickle Software wie die Profis
excerpt: Online-Kurs bei dem du professionelle Softwareentwicklung mit Visual Studio und GitHub lernst.
search_omit: true
image:
  feature: MatheFormel.jpg
modified:
lm-newsletter-group-id: 4
date: 2016-10-10T09:30:00+01:00
---

<figure>
	<a href="https://www.udemy.com/github-fuer-entwickler/?couponCode=LM50-UGIHUK-2016" target="_blank"><img src="/images/UGiHuK_LandingPage_Rabatt.jpg" alt="image"></a>
</figure>

## Details und weitere Ressourcen zum Kurs

<ul class="post-list">
<!-- Create empty arrays -->
{% assign both_categories = '' | split: ',' %}
<!-- Push to both_categories -->
{% for post in site.categories.einstieg-csharp '%}
  {% for tag in post.tags  %}
    {% if tag == 'GitHub' or tag == 'Versionskontrolle' %}
      {% assign both_categories = both_categories | push: post %}
    {% endif %}
  {% endfor %}
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

Ich erweitere sowohl den Kurs als auch die zusätzlichen (kostenlosen) Ressourcen kontinuierlich. Wenn du über Neuigkeiten zu diesem und weiteren Kursen informiert werden möchtest, dann kannst du dich hier einschreiben:

<div class="subscribe-notice">
	{% include lernmoment-subscribe.html %}
</div>

