---
layout: post
title: "Übung #1 - Zeige das Spielbrett an"
excerpt: "Übe das Erstellen eines Projektes und die Ein-/Ausgabe per Console."
categories: csharp-challenge
lernmoment: C#
lm-newsletter-group-id: 8
show-lm-newsletter-subscribe-box: false
share: true
tags: [C#, "TTT Challenge", "Übung"]
image:
  feature: csharp-challenge.jpg
modified:
date: 2016-06-25T06:00:00+01:00
---

Als erste Aufgabe der Challenge solltest du das Spielbrett anzeigen lassen. Wie es genau aussehen soll siehst du in der [Beschreibung der Kata](http://ccd-school.de/coding-dojo/application-katas/tic-tac-toe/). Hier eine Möglichkeit wie ein leeres Spielbrett dargestellt werden kann:

```sh
  A B C
0  | |
  -+-+- 
1  | |
  -+-+- 
2  | |
  -+-+- 
```

Das Spielbrett besteht aus leeren Spielfeldern und den Koordinaten. Du kannst entweder die Ausgabe erstmal in der `Main` Methode realisieren oder auch schon eine separate Klasse dafür anlegen.

Um die Ausgabe machen zu können, brauchst du natürlich erstmal ein neues Projekt in Visual Studio. Zusätzlich wäre es hilfreich, wenn du ein Projekt auf GitHub startest und deinen Quellcode dort veröffentlichst. Damit habe ich die Möglichkeit mir dein Resultat anzuschauen und zu kommentieren.

Als kleine Erweiterung kannst du bereits in der `Main` Methode auf eine Tasteneingabe vom Benutzer warten. Damit erreichst du, dass die Konsolenanwendung nicht sofort nach der Ausgabe beendet wird.

**WICHTIG:** Ein ganz elementarer Bestandteil einer jeden Übung (wenigstens, wenn sie dich weiterbringen soll) ist [das Reflektieren](http://clean-code-developer.de/die-grade/roter-grad/#Taeglich_reflektieren). Wenn du die Aufgabe erledigt hast ziehe bitte eine Bilanz was die Aufgabe dir bezüglich deiner Fähigkeiten gezeigt hat. So kannst du einfach für dich erkunden in welchen Bereichen du noch mehr Aufgaben machen solltest und welche Bereiche du schon gut beherrschst. Du kannst gerne die Ergebnisse deiner Reflexion hier als Kommentar hinterlassen. Dann kann ich dir weitere Übungen empfehlen.

### Was du mit dieser Aufgabe üben kannst

Wenn du **Einsteiger** bist, sehe ich insbesondere folgende Aspekte die du mit dieser Aufgabe übst:

 - Syntax
   - Verwendung der Klasse `Console` zur Ausgabe von Zeichenketten. Hier ist die Methode `WriteLine` relevant. 
   - Optional: Verwendung der Klasse `Console` zur Benutzerinteraktion bevor eine Konsolenanwendung geschlossen wird. Dafür könntest du die Methode `ReadLine` verwenden.
 - Werkzeuge
   - Anlegen eines Konsolenprojektes in Visual Studio
   - Erstellen eines Projektes/Repository auf GitHub

Wenn du **Fortgeschrittener oder Profi** bist, dann kannst du auch die Basics (siehe vorheriger Absatz) üben, aber du kannst beispielsweise auch die Domänenanalyse bzw. das Grobdesign üben. Du könntest also beispielsweise überlegen in welcher Klasse du die Ausgabe machst und hier eine Begründung dazu schreiben.

### Artikel, Videos & Links zu dieser Aufgabe

Hier ein paar Videos die dir bei der Lösung dieser Aufgabe helfen könnten:

 - Im [ersten Video des kostenlosen C# Tutorials Deutsch](https://www.youtube.com/playlist?list=PLP2TrPpx5VNkr-wmkjguVZAvN4T5EPJbF) erkläre ich dir Schritt für Schritt wie du Visual Studio installierst, ein erstes Konsolenprojekt erstellst und eine Ausgabe auf die Konsole machst. 
   - [Dieser Link](https://youtu.be/rtilizFAldA?list=PLP2TrPpx5VNkr-wmkjguVZAvN4T5EPJbF&t=249) bringt dich direkt zu der Stelle im Video bei der das Konsolenprojekt erstellt wird.
   - [Dieser Link](https://youtu.be/rtilizFAldA?list=PLP2TrPpx5VNkr-wmkjguVZAvN4T5EPJbF&t=755) bringt dich zu der Stelle im Video bei der die Ausgabe auf die `Console` gemacht wird.
 - Wenn du Hilfe brauchst bei der Verwendung von GitHub, dann kannst du das [kostenlose GitHub Tutorial Deutsch](https://www.youtube.com/playlist?list=PLP2TrPpx5VNlLOYo5pook-0_0Uy0YLdHW) verwenden. Darin erkläre ich dir Schritt für Schritt wie du ein Projekt auf GitHub anlegst und deinen Quellcode aus Visual Studio nach GitHub bekommst.
 - Im Video [Der Weg zur ersten Klasse](https://youtu.be/JClVrFlc4k4) erkläre ich dir im Detail wie ich die erste Klasse gefunden habe und warum wir mit der Anzeige des Spielbretts beginnen.
 - Beschreibungen zu den verwendeten Klassen und Methoden findest du auf MSDN:
   - Die Klasse [Console](https://msdn.microsoft.com/de-de/library/system.console(v=vs.110).aspx)
   - Die Methode [WriteLine](https://msdn.microsoft.com/de-de/library/xf2k8ftb(v=vs.110).aspx)
   - Die Methode [ReadLine](https://msdn.microsoft.com/de-de/library/system.console.readline(v=vs.110).aspx) wenn du warten willst bist `Enter` gedrückt wurde, oder die Methode [ReadKey](https://msdn.microsoft.com/de-de/library/471w8d85(v=vs.110).aspx) wenn du auf eine andere Taste warten willst.

### Lösung

Hast du die Aufgabe umgesetzt, oder willst du nur ein wenig spicken? Mach es dir nicht zu einfach ;-). Du willst schließlich was lernen, oder?

Wenn du eine erste Inspiration benötigst, dann schau dir mal den Quellcode von [Erik](https://github.com/supermew10/TicTacToe) an. Wie immer in der Softwareentwicklung gibt es jedoch sehr viele verschiedene Lösungsmöglichkeiten.

Meine Lösung siehst du [in diesem Commit](https://github.com/LernMoment/ttt-challenge/commit/f0a7cb46bd8409a94aead2391a74c45cc2fe1724). Er zeigt dir was ich im Vergleich zu einem leeren Konsolenprojekt geändert habe.

Viel Spaß beim Üben

Jan

PS: Wenn du noch nicht zur Challenge angemeldet bist, aber trotzdem teilnehmen möchtest und [die vielen Boni](/csharp-challenge/deine-vorteile-bei-anmeldung/) bekommen möchtest, dann melde dich schnell an! Unter anderem bekommst du **ein kostenloses Einzelcoaching** mit mir:

<div class="subscribe-notice">
  <h5>Hier unverbindlich und kostenlos anmelden:</h5>
    {% include lernmoment-subscribe.html %}
</div>
