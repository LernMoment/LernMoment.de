---
layout: page
title: "Slides von Reveal.js"
excerpt: ""
search_omit: true
image:
  feature: csharp-challenge.jpg
modified:
lm-newsletter-group-id: 8
date: 2016-06-02T09:30:00+01:00
---

<ul class="post-list">
<!-- Create empty arrays -->
{% assign both_categories = '' | split: ',' %}
<!-- Push to both_categories -->
{% for post in site.categories.csharp-challenge '%}
  {% assign both_categories = both_categories | push: post %}
{% endfor %}
{% for post in site.categories.alle %}
  {% for tag in post.tags %}
    {% if tag == "TTT Challenge" %}
      {% assign both_categories = both_categories | push: post %}
    {% endif %}
  {% endfor %}
{% endfor %}
{% assign both_categories = both_categories | sort: 'date' %}

{% for post in site.categories.slides reversed %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }}<span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>

## ANMELDUNG

Wenn dich dieses Thema interessiert und du es ernst meinst mit der Challenge, dann melde dich hier kostenlos und unverbindlich an. Als angemeldeter Teilnehmer hast du einige Vorteile. So gibt es zum Beispiel eine halbe Stunde **kostenloses Einzelcoaching** von mir. Das mache ich, weil ich weiß wie schwierig der Einstieg ist und mir wichtig ist, dass du C# und professionelle Softwareentwicklung mit Erfolg lernst. 

<div class="subscribe-notice">
  <h4>Du meinst es ernst?</h4>
  <h5>Melde dich jetzt kostenlos und unverbindlich an:</h5>
    {% include lernmoment-subscribe.html %}
</div>
