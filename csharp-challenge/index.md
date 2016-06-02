---
layout: page
title: "??? C# Challenge"
excerpt: 
search_omit: true
image:
  feature: csharp-challenge.jpg
modified:
lm-newsletter-group-id: 8
date: 2016-06-02T09:30:00+01:00
---

In letzter Zeit wurden mir immer wieder Fragen wie diese gestellt: **"Ich habe eine erste Idee der Konzepte von professioneller Softwareentwicklung in C# und JETZT?"**

JETZT werden wir gemeinsam eine kleine C# Anwendung entwickeln. Es ist nicht wie in einem Kurs in dem ich einfach alles erkläre und gut ist. Sondern es ist eine Herausforderung der du dich stellen sollst.

<iframe width="560" height="315" src="https://www.youtube.com/embed/3AIX1TzSqog" frameborder="0" allowfullscreen></iframe>

Das Motto meiner Herausforderung ist:

> Üben. Lernen. Umsetzen. - Professionelle Softwareentwicklung mit C# am Beispiel.

Es geht also darum, dass du eine Aufgabenstellung bekommst und damit übst ein Projekt eigenständig umzusetzen. Da es gerade bei den ersten Projekten gar nicht so einfach ist, hast du mich an der Seite, um Werzeuge, Methoden, Objektorientierung und natürlich auch Syntax zu festigen und gegebenenfalls zu lernen.

Wenn dich dieses Thema interessiert und du es ernst meinst mit der Challenge, dann melde dich hier kostenlos und unverbindlich an. Als angemeldeter Teilnehmer hast du einige Vorteile. So gibt es zum Beispiel eine halbe Stunde **kostenloses Einzelcoaching** von mir. Das mache ich, weil ich weiß wie schwierig der Einstieg ist und mir wichtig ist, dass du C# und professionelle Softwareentwicklung mit Erfolg lernst. 

<div class="subscribe-notice">
  <h4>Du meinst es ernst?</h4>
  <h5>Melde dich jetzt kostenlos und unverbindlich an:</h5>
    {% include lernmoment-subscribe.html %}
</div>


## Videos und Artikel zur Challenge

<ul class="post-list">
<!-- Create empty arrays -->
{% assign both_categories = '' | split: ',' %}
<!-- Push to both_categories -->
{% for post in site.categories.fragezeichen-csc '%}
  {% assign both_categories = both_categories | push: post %}
{% endfor %}
{% for post in site.categories.alle %}
  {% for tag in post.tags %}
    {% if tag == "??? Challenge" %}
      {% assign both_categories = both_categories | push: post %}
    {% endif %}
  {% endfor %}
{% endfor %}
{% assign both_categories = both_categories | sort: 'date' %}

{% for post in both_categories reversed %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }}<span class="entry-date">{% for tag in post.tags %}{{ tag }}{% unless forloop.last %}, {% endunless %}{% endfor %}</span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>

