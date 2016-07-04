---
layout: post
title: "Übung #2 - Zeige das Spielbrett an"
excerpt: "Übe die einfache Ein- und Ausgabe per Console."
categories: csharp-challenge
lernmoment: C#
lm-newsletter-group-id: 8
show-lm-newsletter-subscribe-box: false
share: true
tags: [C#, "TTT", "Übung", Syntax]
image:
  feature: csharp-challenge.jpg
modified:
date: 2016-06-26T06:00:00+01:00
---

**Übungsfokus:** C# Syntax - Klasse `Console`
**Geschätzte Übungsdauer:** ca. 10 Minuten

Nachdem die Infrastruktur läuft, sollst du nun das Spielbrett anzeigen lassen. Wie es genau aussehen soll siehst du in der [Beschreibung der Kata](http://ccd-school.de/coding-dojo/application-katas/tic-tac-toe/). Hier eine Möglichkeit wie ein leeres Spielbrett dargestellt werden kann:

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

Als kleine Erweiterung kannst du bereits in der `Main` Methode auf eine Tasteneingabe vom Benutzer warten. Damit erreichst du, dass die Konsolenanwendung nicht sofort nach der Ausgabe beendet wird.

**WICHTIG:** Ein ganz elementarer Bestandteil einer jeden Übung (wenigstens, wenn sie dich weiterbringen soll) ist [das Reflektieren](http://clean-code-developer.de/die-grade/roter-grad/#Taeglich_reflektieren). Wenn du die Aufgabe erledigt hast ziehe bitte eine Bilanz was die Aufgabe dir bezüglich deiner Fähigkeiten gezeigt hat. So kannst du einfach für dich erkunden in welchen Bereichen du noch mehr Aufgaben machen solltest und welche Bereiche du schon gut beherrschst. Du kannst gerne die Ergebnisse deiner Reflexion hier als Kommentar hinterlassen. Dann kann ich dir weitere Übungen empfehlen.

Du brauchst noch mehr Hilfe bei der Umsetzung dieser Übung? Hier habe ich die notwendigen Schritte aufgelistet:

  - [  ] Neue Klasse `Spielbrett` anlegen
  - [  ] Der Klasse `Spielbrett` eine statische Methode `Anzeigen` hinzufügen
  - [  ] Die Ausgabe des Spielbretts mit `Console.WriteLine` in der Methode `Anzeigen` umsetzen
  - [  ] Die Methode `Spielbrett.Anzeigen()` in der `Main` Methode aufrufen
  - [  ] Optional: Die `Main` Methode erst verlassen, wenn Benutzer `Enter` gedrückt hat (verwende dazu `Console.ReadLine`)
  - [  ] Deinen Quellcode kompilieren und testen
  - [  ] Einen lokalen Commit deiner Änderungen durchführen und dann dein lokales Verzeichnis mit dem GitHub Verzeichnis synchronisieren.
  - [  ] Reflektieren

### Erweiterung der Übung für Fortgeschrittene

Als **Fortgeschrittener oder Profi** kannst du die Klasse `Console` wahrscheinlich schon perfekt bedienen. Du könntest allerdings die Domänenanalyse bzw. das Grobdesign üben. Überlege beispielsweise in welcher Klasse du die Ausgabe machst und schreibe hier in den Kommentaren eine Begründung dazu.

Eine weitere Mölglichkeit wäre, dass du dir die absolut einfachste Implementierungsvariante für diese Übung überlegst.

### Artikel, Videos & Links zu dieser Aufgabe

Hier ein paar Videos die dir bei der Lösung dieser Aufgabe helfen könnten:

 - Im Video [Der Weg zur ersten Klasse](https://youtu.be/JClVrFlc4k4) erkläre ich dir im Detail wie ich die erste Klasse gefunden habe und warum wir mit der Anzeige des Spielbretts beginnen.
 - Beschreibungen zu den verwendeten Klassen und Methoden findest du auf MSDN:
   - Die Klasse [Console](https://msdn.microsoft.com/de-de/library/system.console(v=vs.110).aspx)
   - Die Methode [WriteLine](https://msdn.microsoft.com/de-de/library/xf2k8ftb(v=vs.110).aspx)
   - Die Methode [ReadLine](https://msdn.microsoft.com/de-de/library/system.console.readline(v=vs.110).aspx) wenn du warten willst bist `Enter` gedrückt wurde, oder die Methode [ReadKey](https://msdn.microsoft.com/de-de/library/471w8d85(v=vs.110).aspx) wenn du auf eine andere Taste warten willst.

### Lösung

Hast du die Aufgabe umgesetzt, oder willst du nur ein wenig spicken? Mach es dir nicht zu einfach ;-). Du willst schließlich was lernen, oder?

Wenn du eine erste Inspiration benötigst, dann schau dir mal den Quellcode von [Erik](https://github.com/supermew10/TicTacToe) an. Wie immer in der Softwareentwicklung gibt es jedoch sehr viele verschiedene Lösungsmöglichkeiten.

Meine Lösung siehst du [in diesem Commit](https://github.com/LernMoment/ttt-challenge/commit/f0a7cb46bd8409a94aead2391a74c45cc2fe1724). Er zeigt dir was ich im Vergleich zu einem leeren Konsolenprojekt geändert habe.

Durch diese Lösung ist mir wieder bewusst geworden, dass es für mich schwierig ist eine einfache Lösung zu erstellen. Was ich damit genau meine habe ich [tbd]() erklärt.

Viel Spaß beim Üben

Jan

PS: Wenn du noch nicht zur Challenge angemeldet bist, aber trotzdem teilnehmen möchtest und [die vielen Boni](/csharp-challenge/deine-vorteile-bei-anmeldung/) bekommen möchtest, dann melde dich schnell an! Unter anderem bekommst du **ein kostenloses Einzelcoaching** mit mir:

<div class="subscribe-notice">
  <h5>Hier unverbindlich und kostenlos anmelden:</h5>
    {% include lernmoment-subscribe.html %}
</div>
