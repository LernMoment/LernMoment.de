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

Neben den Inhalten rund um das Thema "nebenberufliches Lernen", kannst du auch von meinem Wissen und meinen Erfahrungen aus über 13 Jahren hauptberuflicher Tätigkeit als Softwareentwickler lernen. Wenn du Ein- oder Umsteiger in die Softwareentwicklung mit C# (.NET / Mono) bist oder deine Arbeitsweise noch nicht ganz so professionell ist, dann schau dir meinen ersten Online-Kurs genauer an:

<figure>
	<a href="https://www.udemy.com/einstieg-in-csharp-software-programmieren-wie-ein-profi/?couponCode=UCsK_EinSta"><img src="/images/UCsK_LandingPage_Rabatt_Gross.png" alt="image"></a>
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

