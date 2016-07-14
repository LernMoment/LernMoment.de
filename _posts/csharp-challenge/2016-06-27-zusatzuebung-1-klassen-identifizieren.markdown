---
layout: post
title: "Zusatzübung #1 - Klassen identifizieren / Domänenanalyse"
excerpt: "Finde erste Kandidaten für potentielle Klassen im TicTacToe Spiel."
categories: csharp-challenge
lernmoment: C#
lm-newsletter-group-id: 8
show-lm-newsletter-subscribe-box: false
share: true
tags: [C#, "TTT", "Übung", Design]
image:
  feature: csharp-challenge.jpg
modified:
date: 2016-06-27T06:00:00+01:00
---

**Übungsfokus:** Design - Klassen identifizieren (& UML bei Bedarf)
**Geschätzte Übungsdauer:** ca. 15 - ??? Minuten

Ich habe diese Übung als Zusatzübung definiert, weil sie ganz schön schwer sein kann. Gerade wenn du erst mit Softwareentwicklung anfängst, fehlt dir häufig noch die Erfahrung und das Wissen wie du Klassen identifizieren kannst. Du brauchst die Ergebnisse dieser Übung nicht um mit der TTT Challenge weiter zu kommen. Ich habe da bereits für dich vorgearbeitet. Die Übung ist also optional!

Es geht darum, dass du mindestens 3 potentielle Klassen identifizierst und jeweils (in wenigen Sätzen) beschreibst, was die Klasse machen soll. Dabei solltest du beachten, dass die Klassen immer aus Daten und Verhalten bestehen. Gib also bitte für jede Klasse einen knappen Überblick welche Daten / Zustände und welches Verhalten sie enthält.

Für die Beschreibung legst du dir am besten ein Designdokument in deinem GitHub-Projekt an. 

**WICHTIG:** Ein ganz elementarer Bestandteil einer jeden Übung (wenigstens, wenn sie dich weiterbringen soll) ist [das Reflektieren](http://clean-code-developer.de/die-grade/roter-grad/#Taeglich_reflektieren). Wenn du die Aufgabe erledigt hast ziehe bitte eine Bilanz was die Aufgabe dir bezüglich deiner Fähigkeiten gezeigt hat. So kannst du einfach für dich erkunden in welchen Bereichen du noch mehr Aufgaben machen solltest und welche Bereiche du schon gut beherrschst. Du kannst gerne die Ergebnisse deiner Reflexion hier als Kommentar hinterlassen. Dann kann ich dir weitere Übungen empfehlen.

### Erweiterung der Übung für Fortgeschrittene

War das immer noch nicht genug? Okay!

Diese Aufgabe kannst du in alle Richtungen erweitern. Hier ein paar Inspirationen:

 - Identifiziere und beschreibe Anwendungsfälle (Use Cases) - Dazu kannst du dir einen Vorlage (wie beispielsweise [eine von diesen](http://www.sws.bfh.ch/~amrhein/OOAD/Aufgaben/Use_Case_Schablonen.pdf)) nehmen und sofort los legen. Auch wenn jetzt nicht wahnsinnig viel passiert, kannst du versuchen Anwendungsfälle auf unterschiedlichen Abstraktionsniveaus zu identifizieren und zu beschreiben. Ich fand das gar nicht so leicht.
 - Erstelle ein UML Modell - Auch hier gibt es viele Möglichkeiten. Eine einfache Variante ist, dass du ein Klassendiagramm erstellst. Wenn du mehr willst kannst du auch Anwendungsfälle und weitere Verhaltensdiagramme (Sequenz, Aktivität, Zustand, ...) verwenden.
 - Überlege dir eine Struktur für dein Designdokument. Ein Design hat viele unterschiedliche Aspkete die brücksichtig werden sollten. Die wichtigsten davon sollten in einem Designdokument beschrieben sein. Abhängig davon wie agil du arbeitest kann ein solches Dokument umfangreich werden. Überlege dir also was für dich das Minimum an notwendigen Informationen ist und beschreibe diese dann bezüglich TTT.

### Artikel, Videos & Links zu dieser Aufgabe

Hier ein paar Videos die dir bei der Lösung dieser Aufgabe helfen könnten:

 - In der Lektion ["UML Klassendiagramm - Beziehungen visualisieren"](https://www.udemy.com/einstieg-in-csharp-software-programmieren-wie-ein-profi/learn/v4/t/lecture/4377656) meines Online-Kurses "C# für Einsteiger" erkläre ich dir einiges zum Thema Beziehungen zwischen Klassen.
 - Wenn du Hilfe brauchst bei der Verwendung von GitHub, dann kannst du das [kostenlose GitHub Tutorial Deutsch](https://www.youtube.com/playlist?list=PLP2TrPpx5VNlLOYo5pook-0_0Uy0YLdHW) verwenden. Darin erkläre ich dir Schritt für Schritt wie du ein Projekt auf GitHub anlegst und deinen Quellcode aus Visual Studio nach GitHub bekommst.
 - Eine umfangreiche Beschreibung der Aktivität "Domänenanalyse" für den Bereich der Web-Anwendungen habe ich bei [softwarekompetenz](http://www.softwarekompetenz.de/servlet/is/7882/generisches_domaenenmodell.pdf?command=downloadContent&filename=generisches_domaenenmodell.pdf) gefunden. Wenn du schon einiges an Erfahrung hast, könnte das Interessant für dich sein.
 - Einen pragmatischen Ansatz zur Domänenanalyse beschreibt Craig Larman in ["UML2 und Patterns angewendet"](https://www.amazon.de/UML-Patterns-Angewendet-mitp-Professional/dp/3826614534/ref=sr_1_1?s=books&ie=UTF8&qid=1467980343&sr=1-1&keywords=9783826614538). Ich würde das Buch übrigens auf Englisch lesen. Einige Teile des Buchs (auf Deutsch) kannst du bei [Google Books](https://books.google.de/books?id=wBUvW7a_2CYC&pg=PA168&lpg=PA168&dq=softwareentwicklung+domänenmodell&source=bl&ots=mA6lswbcP0&sig=qYPzypAXsKzB5hloz-_iAyUhBG0&hl=de&sa=X&ved=0ahUKEwj84erV6-PNAhXkCcAKHY3eAwoQ6AEIOTAE#v=onepage&q=softwareentwicklung%20domänenmodell&f=false) kostenlos ansehen.

### Lösung

Führe fogende Schritte aus, wenn du keine Idee hast, wie du die Übung angehen kannst:

  - [  ] `Design.md` in deinem GitHub-Projekt anlegen.
  - [  ] Die [Aufgabenbeschreibung](http://ccd-school.de/coding-dojo/application-katas/tic-tac-toe/) durchgehen und Substantive finden, die eine wichtige Bedeutung für das Spiel haben.
  - [  ] Jedes Substantiv beschreiben bezüglich seiner Relevanz für das Spiel und in wie weit du glaubst, dass es eine Klasse sein könnte. Beachte hier, dass du überlegst ob das Substantiv einen internen Zustand oder zusätzliche Daten hat.
  - [  ] Male deine Kandidaten (Substantive) auf einen Schmierzettel und überlege in welcher Beziehung sie zueinander stehen.
  - [  ] Dokumentiere die Beziehungen in deinem `Design.md` (Foto deiner Skizze oder Beschreibung).
  - [  ] Gehe nochmals die Aufgabenbeschreibung durch und identifiziere alle Aktivitäten bzw. Verhalten.
  - [  ] Versuche die gefundenen Aktivitäten zu einem Ablauf zusammenzufassen und füge sie dem `Design.md` hinzu.
  - [  ] Reflektieren


Für diese Übung gibt es keine Musterlösung. Mein [Designdokument](https://github.com/LernMoment/ttt-challenge/blob/master/Design.md) enthält meine Antworten zu den Fragen oben. Allerdings sehe ich es nicht als Musterlösung an, weil gerade beim Softwaredesign gibt es viele verschiedene Möglichkeiten und auch selten ein Richtig oder Falsch.

Du kannst dir gerne meine Lösung anschauen, aber lass dich davon nicht verunsichern, bezüglich deiner eigenen Lösung.

Viel Spaß beim Üben

Jan

PS: Wenn du noch nicht zur Challenge angemeldet bist, aber trotzdem teilnehmen möchtest und [die vielen Boni](/csharp-challenge/deine-vorteile-bei-anmeldung/) bekommen möchtest, dann melde dich schnell an! Unter anderem bekommst du **ein kostenloses Einzelcoaching** mit mir:

<div class="subscribe-notice">
  <h5>Hier unverbindlich und kostenlos anmelden:</h5>
    {% include lernmoment-subscribe.html %}
</div>
