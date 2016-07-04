---
layout: page
title: "TTT C# Challenge"
excerpt: "Die TicTacToe C#-Übungs-Challenge von LernMoment.de"
search_omit: true
image:
  feature: csharp-challenge.jpg
modified:
lm-newsletter-group-id: 8
date: 2016-06-02T09:30:00+01:00
---

> UPDATE: Die Challenge neigt sich dem Ende. Trotzdem kannst du sie für dich anhand der Übungen (siehe unten) durchziehen. Wenn du Feedback haben möchtest, melde dich per [eMail](mailto:jan@lernmoment) oder zeige mir was du bisher erreicht hast auf [GitHub](https://github.com/LernMoment/ttt-challenge/issues/1).

In letzter Zeit wurden mir immer wieder Fragen wie diese gestellt: **"Ich habe eine erste Idee der Konzepte von professioneller Softwareentwicklung in C# und JETZT?"**

JETZT werden wir gemeinsam eine kleine C# Anwendung entwickeln. Es ist nicht wie in einem Kurs in dem ich einfach alles erkläre und gut ist. Sondern es ist eine Herausforderung der du dich stellen sollst.

<iframe width="560" height="315" src="https://www.youtube.com/embed/3AIX1TzSqog" frameborder="0" allowfullscreen></iframe>

Das Motto meiner Herausforderung ist:

> Üben. Lernen. Umsetzen. - Professionelle Softwareentwicklung mit C# am Beispiel.

Es geht also darum, dass du eine Aufgabenstellung bekommst und damit übst ein Projekt eigenständig umzusetzen. Da es gerade bei den ersten Projekten gar nicht so einfach ist, hast du mich an der Seite, um Werzeuge, Methoden, Objektorientierung und natürlich auch Syntax zu festigen und gegebenenfalls zu lernen. Mehr zum Motto im Artikel ["Ich fordere dich heraus!"](/alle/ich-fordere-dich-heraus/).

## Die Challenge Schritt für Schritt

Damit du die Challenge in dem für dich richtigen Tempo duchführen kannst, habe ich einzelne Übungen definiert. Nachdem du alle Übungen umgesetzt hast, wirst du deine Version von "TicTacToe als Konsolenanwendung" entwickelt haben.

Alle Übungen sind im Detail beschrieben, beinhalten zusätzliches Material welches dir beim Lösen helfen wird und zeigen dir verschiedene Musterlösungen. Sie sind so definiert, dass du sie meistens in kurzer Zeit erledigen kannst. So ist es beispielsweise möglich, dass du jeden Tag eine Übung machst, wenn du nicht viel Zeit hast.

Hinweis für **Fortgeschrittene und Profis**: Du glaubst, dass ist alles viel zu einfach? In jeder Übung gebe ich dir Anregungen wie du die Übung anpassen kannst, damit auch deine Fähigkeiten trainiert werden. Du kannst auch die Übungen komplett ignorieren und die [Aufgabe](http://ccd-school.de/coding-dojo/application-katas/tic-tac-toe/) alleine umsetzen. Falls du Feedback zu deiner Lösung haben möchtest oder Fragen diskutieren möchtest, dann kannst du mich gerne [anschreiben](mailto:jan@lernmoment.de) oder hier einen Kommentar hinterlassen.

<ul class="post-list">
{% for post in site.categories.csharp-challenge reversed %} 
  {% for tag in post.tags %}
    {% if tag == "Übung" %}
      <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }}<span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
    {% endif %}
  {% endfor %}
{% endfor %}
</ul>

## ANMELDUNG

Wenn dich dieses Thema interessiert und du es ernst meinst mit der Challenge, dann melde dich hier kostenlos und unverbindlich an. Als angemeldeter Teilnehmer hast du einige Vorteile. So gibt es zum Beispiel eine halbe Stunde **kostenloses Einzelcoaching** von mir. Das mache ich, weil ich weiß wie schwierig der Einstieg ist und mir wichtig ist, dass du C# und professionelle Softwareentwicklung mit Erfolg lernst. 

<div class="subscribe-notice">
  <h4>Du meinst es ernst?</h4>
  <h5>Melde dich jetzt kostenlos und unverbindlich an:</h5>
    {% include lernmoment-subscribe.html %}
</div>
