---
layout: post
title: "Übung #3 - Füge leere Spielfelder hinzu."
excerpt: "Erstelle Attribute im Spielbrett um später Spielstein einem Spielfeld zuweisen zukönnen."
categories: csharp-challenge
lernmoment: C#
lm-newsletter-group-id: 8
show-lm-newsletter-subscribe-box: false
share: true
tags: [C#, "TTT", "Übung", Syntax]
image:
  feature: csharp-challenge.jpg
modified:
date: 2016-06-28T06:00:00+01:00
---

**Übungsfokus:** C# Syntax - Attribute & Strings bzw. Ausgabe mit `Console` (optional: Arrays)
**Geschätzte Übungsdauer:** ca. 10-20 Minuten

Bisher hast du nur ein leeres Spielbrett angezeigt. Um im nächsten Schritt Spielsteine auf dem Spielbrett platzieren zu können, musst du nun erstmal die Spielfelder realisieren. Genau darum geht es in dieser Aufgabe.

Ziel ist es, dass deine Klasse `Spielbrett` nach dieser Übung Attribute enthält in der Spielsteine gespeichert werden können. Dabei gehört es noch nicht zu dieser Übung, dass du schon Spielstein darin speicherst. Lege bitte erstmal nur die Attribute an (also leere Spielfelder) und initialisiere sie.

Um zu überlegen welche Attribute du benötigst und welche Datentypen diese haben könnten, solltest du dir nochmals das Spielbrett vorstellen. Wie bereits [hier beschrieben]() hat das Spielbrett insgesamt 9 Spielfelder. Jedes Spielfeld kann entweder leer sein, oder einen Spielstein (mit dem Symbol 'X' oder 'O') aufnehmen. Die Spielfelder werden über Koordinaten (z.B. B1) identifiziert/angesprochen und sind in Spalten und Zeilen aufgeteilt.

Der zweite Teil dieser Übung besteht darin, dass du das `Spielbrett` mit den leeren Spielfelder ausgeben sollst. Aktuell wird deine Ausgabe des Spielbretts wahrscheinlich ähnlich [wie bei mir](https://github.com/LernMoment/ttt-challenge/blob/f0a7cb46bd8409a94aead2391a74c45cc2fe1724/TicTacToe/Spielbrett.cs) aussehen. Es wird also lediglich statischer Text ausgegeben. Nun geht es darum, dass du in diesen Text den Inhalt der einzelnen Spielfelder einfügst.

**WICHTIG:** Ein ganz elementarer Bestandteil einer jeden Übung (wenigstens, wenn sie dich weiterbringen soll) ist [das Reflektieren](http://clean-code-developer.de/die-grade/roter-grad/#Taeglich_reflektieren). Wenn du die Übung erledigt hast ziehe bitte eine Bilanz was die Übung dir bezüglich deiner Fähigkeiten gezeigt hat. So kannst du einfach für dich erkunden in welchen Bereichen du noch mehr Aufgaben machen solltest und welche Bereiche du schon gut beherrschst. Du kannst gerne die Ergebnisse deiner Reflexion hier als Kommentar hinterlassen. Dann kann ich dir weitere Übungen empfehlen.

### Erweiterung der Übung für Fortgeschrittene

Als **Fortgeschrittener oder Profi** ist das Erstellen von Attributen keine Herausforderung. Daher solltest du an dieser Stelle 2 weitere Möglichkeiten suchen wie du die Spielfelder speichern kannst. Es soll schon in Attributen gespeichert werden, aber dir fallen bestimmt noch andere Datentypen oder eine andere Anzahl an Attributen ein. Beschreibe alle 3 Möglichkeiten mit Vor- und Nachteilen und erkläre warum du dich für deine Lösung entschieden hast.

Du kannst auch alle 3 Möglichkeiten in Quellcode umsetzen anstatt sie nur zu beschreiben.

Eine weitere Mölglichkeit wäre, dass du dir die absolut komplexeste Implementierungsvariante für diese Übung überlegst.

### Artikel, Videos & Links zu dieser Aufgabe

Hier ein paar Videos die dir bei der Lösung dieser Aufgabe helfen könnten und/oder dir zusätzliche Informationen bieten:

 - In der Lektion ["C# Syntax: Variablen - Merke dir den ersten Summanden"](https://www.udemy.com/einstieg-in-csharp-software-programmieren-wie-ein-profi/learn/v4/t/lecture/4126104) meines Online-Kurses "C# für Einsteiger" bekommst du eine grundlegende Einführung in das Konzept von Variablen.
 - In der Lektion ["ObjektOrientierung in der Praxis - Klassen definieren"](https://www.udemy.com/einstieg-in-csharp-software-programmieren-wie-ein-profi/learn/v4/t/lecture/4247880) meines Online-Kurses "C# für Einsteiger" zeige ich dir auch wie Attribute angelegt werden. Diese Lektion findest du auch auf YouTube als Teil meines ["C# Tutorial Deutsch"](https://youtu.be/xKfepjFQNuI).
 - Eine ausführliche Beschreibung zum Thema *Arrays* gibt es auf [MSDN](https://msdn.microsoft.com/de-de/library/9b9dty7d.aspx)

### Lösung

Hast du die Aufgabe umgesetzt, oder willst du nur ein wenig spicken? Mach es dir nicht zu einfach ;-). Du willst schließlich was lernen, oder?

Als **Lösungshinweis** kann ich dir verraten, dass ich 3 Attribute vom Datentyp `string[]` verwendet habe. 

Führe fogende Schritte aus, wenn du keine Idee hast, wie du die Übung angehen kannst:

  - [  ] Erstelle ein `private` Attribut mit dem Datentyp `string[]` und dem Namen `spalteA`. Dieses Array sollte 3 Werte aufnehmen können (einen für jede Spalte). Du kannst es direkt mit 3 leeren strings initialisieren
  - [  ] Überlege ob das Attribut `static` sein muss oder nicht und definiere es entsprechend. Hinweis: Wir wollen erstmal aus einer Methode die selber `static` ist darauf zugreifen.
  - [  ] Definiere 2 weitere Attribute für `spalteB` und `spalteC`. -> Damit ist der erste Teil abgeschlossen!
  - [  ] Erstelle eine lokale Variable `zeileNull` vom Typ `string` in der `Anzeigen()` Methode.
  - [  ] Weise der Variablen `zeileNull` den ersten Teil der statischen Zeichenkette zu, bis der Inhalt des ersten Spielfelds kommt.
  - [  ] Addiere den Inhalt des ersten Spielfeldes (also das Spielfeld mit Koordinate 'A0') zu `zeileNull`. 
  - [  ] Wiederhole die beiden vorherigen Schritte bis `zeileNull` komplett ist. Also bis der statische Text und der Inhalt der Spielfelder 'B0' und 'C0' enthalten ist.
  - [  ] Jetzt kannst du `zeileNull` anstelle des statischen Textes im passenden `Console.WriteLine()` verwenden.
  - [  ] Gehe genauso vor für die Ausgabe von `zeileEins` und `zeileZwei`.
  - [  ] Reflektieren

Meine Lösung siehst du [in diesem Commit](https://github.com/LernMoment/ttt-challenge/commit/34451b473dc6156aa41d361bdc09e11f7da1d2c2). Dabei ist das Hinzufügen der Methode `SpielsteinSetzen` für diese Übung noch nicht gefordert.

Durch diese Lösung ist mir wieder bewusst geworden, dass es für mich schwierig ist eine einfache Lösung zu erstellen. Was ich damit genau meine habe ich [tbd]() erklärt.

Viel Spaß beim Üben

Jan

PS: Wenn du noch nicht zur Challenge angemeldet bist, aber trotzdem teilnehmen möchtest und [die vielen Boni](/csharp-challenge/deine-vorteile-bei-anmeldung/) bekommen möchtest, dann melde dich schnell an! Unter anderem bekommst du **ein kostenloses Einzelcoaching** mit mir:

<div class="subscribe-notice">
  <h5>Hier unverbindlich und kostenlos anmelden:</h5>
    {% include lernmoment-subscribe.html %}
</div>
