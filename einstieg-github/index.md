---
layout: page
title: Einstieg in GitHub - Entwickle Software wie die Profis
excerpt: Online-Kurs bei dem du professionelle Softwareentwicklung mit Visual Studio und GitHub lernst.
search_omit: true
image:
  feature: MatheFormel.jpg
modified:
lm-newsletter-group-id: 4
date: 2016-10-24T09:30:00+01:00
---

 > AKTION: Unterstützung (1-zu-1) auf GitHub bei deinen ersten Projekten für jeden Teilnehmer im Kurs enthalten.

Du kannst auf GitHub üben, lernen, mit anderen Entwicklern in Kontakt kommen, Unterstützung für dein Open Source Projekt aus der Community bekommen und dein Wissen vermarkten. Es ist somit ein Turbo für deine Karriere, deine privaten Softwareentwicklungsprojekte und deine Fähigkeiten im Bereich der professionellen Softwareentwicklung.

<figure>
	<a href="https://www.udemy.com/github-fuer-entwickler/?referralCode=D2FD5CBAC0A15B17A09E" target="_blank"><img src="/images/UGiHuK_LandingPage_Rabatt.jpg" alt="image"></a>
</figure>

Das wichtigste ist jedoch, dass du es auch einsetzen kannst. Ein gepflegtes GitHub-Projekt und professionelle Issues und Pull Request können dein Ticket für einen neue Job sein. Einige Konzepte und Arbeitsschritte sind auf GitHub allerdings nicht unbedingt intuitiv. Das kommt auch daher, dass GitHub viele Freiheiten lässt.

<div class="subscribe-notice">
<h5>Werde mit GitHub professioneller Softwareentwickler</h5>
<a markdown="0" href="https://www.udemy.com/github-fuer-entwickler/?referralCode=D2FD5CBAC0A15B17A09E" class="notice-button">Zur AKTION: Kurs "Einstieg in GitHub" für 15€ >></a>
</div>

In diesem Kurs zeige ich dir Schritt für Schritt wie du GitHub professionell verwendest um möglichst schnell zu den gewünschten Ergebnissen zu kommen. Alle Themen erkläre ich dir anhand vieler Beispiele. Dazu gibt es reichlich Übungen und Beispielprojekte, Issues und Pull Requests direkt auf GitHub.

### Was Teilnehmer sagen

Ein Teilnehmer hat mir persönlich diese Rückmeldung geschickt über die ich mich sehr gefreut habe:

> "Ich hatte bisher kaum bis keine Berührungspunkte mit GitHub, aber sehe, wie du auch, einen starken Nutzen in GitHub.
>
> Mein Kernnutzen aus dem Kurs war das ich nun erstmal eigene Projekte dort bearbeite und ich meine Arbeit nun besser Dokumentieren kann was ich wo verändert und wie bearbeitet habe (Versionierung).
>
> Der Kurs ist für mich sehr ausführlich gewesen und ich würde mich sozusagen als Ideale Zielgruppe ansehen, sprich Programmier Anfänger mit wenig bis begrenzten Kenntnissen, die GitHub nicht kennen oder kaum nutzen."

<div class="subscribe-notice">
<h5>Softwareentwicklung lernen, üben und anwenden!</h5>
<a markdown="0" href="https://www.udemy.com/github-fuer-entwickler/?referralCode=D2FD5CBAC0A15B17A09E" class="notice-button">Zur AKTION: Kurs "Einstieg in GitHub" für 15€ >></a>
</div>

## Details und weitere Ressourcen zum Kurs

<ul class="post-list">
<!-- Create empty arrays -->
{% assign both_categories = '' | split: ',' %}
<!-- Push to both_categories -->
{% for post in site.categories.einstieg-csharp %}
  {% for tag in post.tags  %}
    {% if tag == 'GitHub' or tag == 'Versionskontrolle' %}
      {% assign both_categories = both_categories | push: post %}
    {% endif %}
  {% endfor %}
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

