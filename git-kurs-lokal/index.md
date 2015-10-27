---
layout: page
title: Git Mini-Kurs - lokale Entwicklung
excerpt: Wie du Git als Sicherheitznetz nutzt um deine ersten Projekte lokal zu erstellen
search_omit: true
image:
  feature: 
modified:
date: 2015-10-27T09:29:51+01:00
---

Egal ob du Softwareentwicklung im Beruf, im Studium oder in deiner Freizeit betreibst, eine Versionsverwaltung ist ein absolutes Muss. Obwohl es einige erfolgreiche Versionskontrollsysteme gibt, ist *Git* momentan eines der angesagtesten. Bei *Git* handelt es sich um ein *Open Source* Projekt. Außerdem ist es die Basis von [GitHub](https://github.com), einer der wichtigsten Plattformen von Softwareprojekten überhaupt.

### Was du in diesem Kurs lernst

In diesem Kurs wirst du lernen wie du *Git* lokal auf deinem Rechner verwenden kannst um erste Softwareprojekte zu realisieren. Dabei geht es nicht nur um die Bedienung von *Git*, sondern insbesondere auch, wie du es in deiner täglichen Arbeit effektiv einsetzen kannst.

Ganz ehrlich, warum willst du *Git* lernen? Weil es so *cool* ist und du einfach nicht mehr ohne leben möchtest? Wohl eher nicht. Du hast von Kollegen, Freunden oder anderen Leuten gehört, dass du *Git* benötigst, wenn du Software entwickeln willst? Das schon eher, aber auch dann brauchst du nicht unbedingt *Git*, sondern du könntest auch ein anderes Versionsverwaltungssystem benutzen.

Ich bin der Ansicht, dass nicht das Werkzeug wichtig ist, sondern wie du deine Aufgaben bzw. Probleme lösen kannst. Daher ist dieser Kurs auch nicht eine klassische Erklärung von *Git*. Davon gibt es schon einige. Du lernst in diesem Kurs ganz genau, wie du *Git* in deiner täglichen Arbeit einsetzen kannst. Nach dem Kurs wirst du zwar auch die wichtigsten Kommandos und Konzepte von *Git* verstanden haben, aber viel wichtiger ist, dass du genau weißt, wie du es verwendest.

Hast du Fragen wie diese:

-	Ich will einfach nur ein kleines Programm schreiben. Wofür brauche ich da ein Versionsverwaltungssystem wie *Git*?
-	Mein Chef, Professor, ... will das ich *Git* verwende. Wie mache ich das denn nun?
-	Ich habe meine Änderungen der letzten Tage überschrieben. Wie bekomme ich sie wieder?
-	Wann sollte ich mir einen Stand meines Quelltextes sichern?
-	Welche Dateien und Verzeichnisse sollte ich überhaupt mit *Git* verwalten?
-	Ich will mal eine Ideen im Quelltext umsetzen und habe Angst, dass ich etwas kaputt mache. Was kann ich tun?
-	Wie kann ich auch in einigen Monaten noch nachvollziehen was ich zu letzt an meinem Projekt gemacht habe?

### Wie du mit diesem Kurs lernst

Der Kurs geht in kleinen Schritten auf diese und viele weitere Fragen ein. Diese kleinen Schritte bezeichne ich als LernMomente. Das sind kurze Lektionen die die eigentlichen Inhalten, Quizzes und Übungen kombinieren. Jeder LernMoment ist so angelegt, dass du ihn in 15-20 Minuten abarbeiten kannst. Die Kombination von Wissensvermittlung mit Quizzes und Übungen stellt sicher, dass du nicht die Inhalte stumpf vorgebetet bekommst, sondern das du sie aktiv verwendest.

Die Übungen zu jedem LernMoment kannst du in einer speziellen Umgebung direkt auf Webseite zum Kurs machen. So brauchst du dich zu Anfang nicht mal damit zu beschäftigen wie du *Git* installierst, sondern kannst gleich los legen. Gerade für dich als Einsteiger in das Thema *Git* und Versionskontrolle, bietet dir diese Umgebung den Vorteil, dass dir Fehler und Ausgaben im Detail erklärt werden.

Solltest du dich doch mal allein gelassen fühlen oder einfach nicht weiter kommen, kannst du mich direkt oder auch im Kurs-Forum ansprechen. Ich weiß, dass jeder Themen anders lernt und versteht. Daher ist es auch nicht möglich einen Kurs zu entwickeln den absolut jeder versteht. Umso wichtiger ist es für mich, dass ich deine ganz konkreten Fragen kenne. Unter Umständen bist du ja doch nicht der einzige, der das Problem hat.

Zusätzlich zu den einzelnen LernMomenten findest du im [YouTube-Kanal](tbd) ein komplettes Beispiel. Dieses kannst du dir ergänzend anschauen, wenn du sehen möchtest, wie ich die Inhalte von diesem Kurs in der Praxis einsetze.

### Was du NICHT in diesem Kurs lernst

Dieser Kurs ist kein Referenzhandbuch für *Git*. Rund um *Git* gibt es viele gute Beschreibungen, die dir die einzelnen Kommandos und deren Parameter erklären. Du kannst den Kurs also später nicht als Nachschlagewerk nutzen.

Da es sich im Kurs hauptsächlich darum dreht zu zeigen wie du lokal dein Softwareprojekt mit *Git* verwalten kannst, erfährst du im Kurs nicht, wie du Projekte von Plattformen wie [GitHub](https://github.com) oder [Bitbucket](https://bitbucket.org) holst und mit anderen daran arbeitest.

## Kursübersicht

Folgende Lektionen sind Bestandteil des Kurses:

<ul class="post-list">
{% for post in site.categories.git-kurs-lokal %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>

