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

**Übungsfokus:** Design - Klassen identifizieren
**Geschätzte Übungsdauer:** ca. 15 - ??? Minuten

Ich habe diese Übung als Zusatzübung definiert, weil sie ganz schön schwer sein kann. Gerade wenn du erst mit Softwareentwicklung anfängst, fehlt dir häufig noch die Erfahrung und das Wissen wie du Klassen identifizieren kannst.

Es geht darum, dass du mindestens 3 potentielle Klassen identifizierst und jeweils (in wenigen Sätzen) beschreibst, was die Klasse machen soll. Dabei solltest du beachten, dass die Klassen immer aus Daten und Verhalten bestehen. Gib also bitte für jede Klassen einen knappen Überblick welche Daten / Zustände und welches Verhalten sie enthält.

Für die Beschreibung legst du dir am besten ein Designdokument in deinem GitHub-Projekt an. 

**WICHTIG:** Ein ganz elementarer Bestandteil einer jeden Übung (wenigstens, wenn sie dich weiterbringen soll) ist [das Reflektieren](http://clean-code-developer.de/die-grade/roter-grad/#Taeglich_reflektieren). Wenn du die Aufgabe erledigt hast ziehe bitte eine Bilanz was die Aufgabe dir bezüglich deiner Fähigkeiten gezeigt hat. So kannst du einfach für dich erkunden in welchen Bereichen du noch mehr Aufgaben machen solltest und welche Bereiche du schon gut beherrschst. Du kannst gerne die Ergebnisse deiner Reflexion hier als Kommentar hinterlassen. Dann kann ich dir weitere Übungen empfehlen.

Du brauchst noch mehr Hilfe bei der Umsetzung dieser Übung? Hier habe ich die notwendigen Schritte aufgelistet:

  - [  ] `TicTacToe` Projekt bei GitHub anlegen (inkl. README.md und License)
  - [  ] Einen Clone des GitHub-Projekts auf deinem Rechner erstellen
  - [  ] `TicTacToe` Konsolenprojekt in Visual Studio anlegen
  - [  ] Begrüßungstext per `Console.WriteLine` in der `Main` Methode ausgeben lassen.
  - [  ] Projekt übersetzen, ausführen und sicherstellen, dass keine Fehler / Warnung ausgegeben werden
  - [  ] Das Visual Studio Projekt nach GitHub synchronisieren
  - [  ] Reflektieren

### Erweiterung der Übung für Fortgeschrittene

Das Anlegen eines Projektes ist sicherlich kein Thema für dich. Damit dich die Übung tatsächlich herausfordert, könntest du beispielsweise anstelle einer normalen Konsolenanwendung eine [.NET Core Konsolenanwendung](https://blogs.msdn.microsoft.com/dmx/2016/06/09/developers-home-teil-1-net-core-auf-mac-linux/) erstellen.

Eine weitere Alternative wäre, dass du in Richtung automatisierter Build gehst. Es gibt einige (kostenlose) Tools und Services (wie beispielsweise [AppVeyor](https://www.appveyor.com) oder [Jenkins](https://jenkins.io)) mit denen du eine C# Anwendung automatisch bauen lassen kannst, wenn du eine Änderung am GitHub-Verzeichnis machst.

### Artikel, Videos & Links zu dieser Aufgabe

Hier ein paar Videos die dir bei der Lösung dieser Aufgabe helfen könnten:

 - Im [ersten Video des kostenlosen C# Tutorials Deutsch](https://www.youtube.com/playlist?list=PLP2TrPpx5VNkr-wmkjguVZAvN4T5EPJbF) erkläre ich dir Schritt für Schritt wie du Visual Studio installierst, ein erstes Konsolenprojekt erstellst und eine Ausgabe auf die Konsole machst. 
   - [Dieser Link](https://youtu.be/rtilizFAldA?list=PLP2TrPpx5VNkr-wmkjguVZAvN4T5EPJbF&t=249) bringt dich direkt zu der Stelle im Video bei der das Konsolenprojekt erstellt wird.
   - [Dieser Link](https://youtu.be/rtilizFAldA?list=PLP2TrPpx5VNkr-wmkjguVZAvN4T5EPJbF&t=755) bringt dich zu der Stelle im Video bei der die Ausgabe auf die `Console` gemacht wird.
 - Wenn du Hilfe brauchst bei der Verwendung von GitHub, dann kannst du das [kostenlose GitHub Tutorial Deutsch](https://www.youtube.com/playlist?list=PLP2TrPpx5VNlLOYo5pook-0_0Uy0YLdHW) verwenden. Darin erkläre ich dir Schritt für Schritt wie du ein Projekt auf GitHub anlegst und deinen Quellcode aus Visual Studio nach GitHub bekommst.

### Lösung

Für diese Übung gibt es keine Musterlösung. Du kannst dir jedoch mein [Verzeichnis auf GitHub](https://github.com/LernMoment/ttt-challenge) anschauen.

Viel Spaß beim Üben

Jan

PS: Wenn du noch nicht zur Challenge angemeldet bist, aber trotzdem teilnehmen möchtest und [die vielen Boni](/csharp-challenge/deine-vorteile-bei-anmeldung/) bekommen möchtest, dann melde dich schnell an! Unter anderem bekommst du **ein kostenloses Einzelcoaching** mit mir:

<div class="subscribe-notice">
  <h5>Hier unverbindlich und kostenlos anmelden:</h5>
    {% include lernmoment-subscribe.html %}
</div>
