---
layout: post
title: "Übung #5 - Ein Spiel abbrechen und neustarten"
excerpt: "Erstelle eine neue Klasse und lege Instanzen mit new an."
categories: csharp-challenge
lernmoment: C#
lm-newsletter-group-id: 8
show-lm-newsletter-subscribe-box: false
share: true
tags: [C#, "TTT", "Übung", Syntax]
image:
  feature: csharp-challenge.jpg
modified:
date: 2016-07-01T06:00:00+01:00
---

**Übungsfokus:** C# Syntax - Klasse erstellen & new-Schlüsselwort
**Geschätzte Übungsdauer:** ca. 10 Minuten

In der [letzten Übung](/csharp-challenge/uebung-4-spielstein-setzen/) hast du das `Spielbrett` so erweitert, dass Spielsteine gesetzt werden können. Jetzt geht es darum, dass du das Kommando `neustart` umsetzen kannst.

Der Fokus ist hier erstmal nicht auf der Interaktion mit dem Benutzer, sondern darauf, dass die Funktionalität *"Spiel neu starten"* vorhanden ist. In `Main` könntest du also einen statischen Spielzug umsetzen (wie in der vorherigen Übung beschrieben) und dann das Spiel neustarten.

Es gibt hier einige Lösungsansätze. Ich würde nah an der Domäne bleiben. D.h. wenn wir beiden das Spiel machen und wollen es abbrechen, dann würden wir einfach unser Blatt zerreißen und auf einem neuen Blatt ein neues Spielbrett zeichnen. In C# kannst du mit dem `new` Schlüsselwort eine neue Instanz einer Klasse erstellen.

Mehr sage ich hier erstmal nicht. Wenn du gar keine Idee hast, kannst du im folgenden Kapitel mit der Lösung nachschauen.

**WICHTIG:** Ein ganz elementarer Bestandteil einer jeden Übung (wenigstens, wenn sie dich weiterbringen soll) ist [das Reflektieren](http://clean-code-developer.de/die-grade/roter-grad/#Taeglich_reflektieren). Wenn du die Übung erledigt hast ziehe bitte eine Bilanz was die Übung dir bezüglich deiner Fähigkeiten gezeigt hat. So kannst du einfach für dich erkunden in welchen Bereichen du noch mehr Aufgaben machen solltest und welche Bereiche du schon gut beherrschst. Du kannst gerne die Ergebnisse deiner Reflexion hier als Kommentar hinterlassen. Dann kann ich dir weitere Übungen empfehlen.

### Erweiterung der Übung für Fortgeschrittene

Lass deiner Kreativität freien lauf und überlege welche zusätzlichen Funktionalitäten das Spiel gebrauchen könnte. Wie wäre es zum Beispiel mit:

 - Die Spieler wollen nach dem Spielende die für das Spiel benötigte Zeit wissen. Du könntest also beispielsweise eine Klasse `Spiel` erstellen die in ihrem Konstruktor die aktuelle Zeit übergeben bekommt und beim Spielende über eine Eigenschaft anzeigt wie lange das Spiel gedauert hat.
 - Wenn du dich schon ein wenig mit Abhängigkeiten zwischen Klassen beschäftigt hast, dann weißt du auch, dass es nicht immer eine gute Idee ist Instanzen einer Klasse in einer Klasse zu erstellen. Häufig ist es besser, wenn die Instanzen außerhalb erstellt werden und dann per Konstruktor in eine Instanzen gegeben werden (*Dependency Injection*). Kannst du das bei dieser Übung auch anwenden?

### Artikel, Videos & Links zu dieser Aufgabe

Hier ein paar Videos die dir bei der Lösung dieser Aufgabe helfen könnten und/oder dir zusätzliche Informationen bieten:

 - In der Lektion ["ObjektOrientierung in der Praxis - Klassen definieren"](https://www.udemy.com/einstieg-in-csharp-software-programmieren-wie-ein-profi/learn/v4/t/lecture/4247880) meines Online-Kurses "C# für Einsteiger" zeige ich dir im Detail wie du in Visual Studio 2015 und C# eine Klasse erstellst. Diese Lektion bekommst du auch [kostenlos auf YouTube](https://youtu.be/xKfepjFQNuI).
 - In der Lektion ["ObjektOrientierung in der Praxis - Objekte anlegen und verändern"](https://www.udemy.com/einstieg-in-csharp-software-programmieren-wie-ein-profi/learn/v4/t/lecture/4247898) meines Online-Kurses "C# für Einsteiger" erfährst du wie du `new` verwendest um Objekte anzulegen. Diese Lektion bekommst du auch [kostenlos auf YouTube](https://youtu.be/q1iJ_hdO7dg).
 - Eine ausführliche Beschreibung des *new-Operators* gibt es auf [MSDN](https://msdn.microsoft.com/de-de/library/fa0ab757.aspx)

### Lösung

Hast du die Aufgabe umgesetzt, oder willst du nur ein wenig spicken? Mach es dir nicht zu einfach ;-). Du willst schließlich was lernen, oder?

Als **Lösungshinweis** kann ich dir verraten, dass ich die neue Klasse `Spiel` erstellt habe, welches das `Spielbrett` beinhaltet. Eine Instanz dieser Klasse hält also immer den aktuellen Spielstand. Um ein Spiel zu starten kann die aktuelle Instanz einfach gelöscht werden und eine neue Instanz erstellt werden.

Führe fogende Schritte aus, wenn du keine Idee hast, wie du die Übung angehen kannst:

  - [  ] Erstelle eine neue Klasse mit dem Namen `Spiel`
  - [  ] Füge der neuen Klasse ein Attribut mit dem Datentyp `Spielbrett` hinzu und initialisiere dieses Attribut mit einer neuen Instanz (verwende dazu den `new` Operator)
  - [  ] Füge der neuen Klasse 2 Methoden hinzu die das `Spielbrett` anzeigen und jeweils einen unterschiedlichen Spielzug ausführen. So kannst du gleich die Funktionalität testen.
  - [  ] Damit du Instanzen der Klasse `Spielbrett` anlegen kannst, musst du das Schlüsselwort `static` bei den Methoden und Attributen entfernen.
  - [  ] Lege nun eine Instanz der Klasse `Spiel` in `Main` an und führe einen Spielzug auf dieser Instanz aus. Diese Instanz solltest du in einer lokalen Variable speichern (z.B. in `aktuellesSpiel`).
  - [  ] Starte das Spiel neu in dem du deiner lokalen Variablen eine neue Instanz von `Spiel` zuweist. Damit wird das vorherige Spiel gelöscht.
  - [  ] Führe auf der neuen Instanz von `Spiel` einen anderen Spielzug aus um zu überprüfen, dass das Spiel tatsächlich neugestartet wurde.

Meine Lösung siehst du [in diesem Commit](https://github.com/LernMoment/ttt-challenge/commit/76d91276b18fe8812dd8090e3933c8692223ffc4). 

Viel Spaß beim Üben

Jan

PS: Wenn du noch nicht zur Challenge angemeldet bist, aber trotzdem teilnehmen möchtest und [die vielen Boni](/csharp-challenge/deine-vorteile-bei-anmeldung/) bekommen möchtest, dann melde dich schnell an! Unter anderem bekommst du **ein kostenloses Einzelcoaching** mit mir:

<div class="subscribe-notice">
  <h5>Hier unverbindlich und kostenlos anmelden:</h5>
    {% include lernmoment-subscribe.html %}
</div>
