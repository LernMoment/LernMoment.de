---
layout: post
title: "Übung #6 - Automatischer Spielerwechsel"
excerpt: "Verwende Eigenschaften und private Methoden um den Spieler zu wechseln."
categories: csharp-challenge
lernmoment: C#
lm-newsletter-group-id: 8
show-lm-newsletter-subscribe-box: false
share: true
tags: [C#, "TTT", "Übung", Syntax]
image:
  feature: csharp-challenge.jpg
modified:
date: 2016-07-02T06:00:00+01:00
---

**Übungsfokus:** C# Syntax - Eigenschaften & private Methoden erstellen
**Geschätzte Übungsdauer:** ca. 10 Minuten

In der [letzten Übung](/csharp-challenge/uebung-5-neustart/) hast du die Klasse `Spiel` erstellt. Diese ist ein perfekter Kandidat um nach jedem Spielzug den Spieler zu wechseln.

Ziel ist es, dass dir die Klasse `Spiel` alle notwendigen Funktionalitäten bietet um das TicTacToe Spiel auszuführen. Dabei ist wichtig, dass die Klasse `Spiel` nicht alles selber machen muss, sondern wenigstens die Klasse `Spielbrett` benutzen kann. Wenn du magst, kannst du auch zusätzliche Klasse oder ganz andere Klasse verwenden.

Um den Spielerwechsel auszuühren sind 2 Voraussetzungen zu schaffen. Zum einen solltest du eine Eigenschaft anlegen die dir in der Klasse, aber auch in `Main` anzeigt, welcher Spieler aktuell am Zug ist. Wenn diese Eigenschaft das jeweilge Spielsteinsymbol (also `X` oder `O`) des aktuellen Spielers zurück gibt, kannst du damit gleich die Methode `SpielsteinSetzen` am `Spielbrett` aufrufen.

Die zweite Voraussetzung ist eine neue Methode `SpielzugAusfuehren`. In dieser Methode kannst du mithilfe der Information welcher Spieler am Zug ist die Methode `SpielsteinSetzen` am `Spielbrett` aufrufen.

Wenn du diese Voraussetzungen geschaffen hast, kannst du eine private Methode erstellen, die dir den Spielerwechsel ausführt. Ich habe mir dafür ein zusätzliches Attribut vom Datentyp `bool` erstellt, welches ich in der Methode einfach negiere.

Wenn dir die Hinweise noch nicht reichen, kannst du unten im Abschnitt *Lösung* die einzelnen Schritt anschauen die dich zu meiner Lösung bringen.

**WICHTIG:** Ein ganz elementarer Bestandteil einer jeden Übung (wenigstens, wenn sie dich weiterbringen soll) ist [das Reflektieren](http://clean-code-developer.de/die-grade/roter-grad/#Taeglich_reflektieren). Wenn du die Übung erledigt hast ziehe bitte eine Bilanz was die Übung dir bezüglich deiner Fähigkeiten gezeigt hat. So kannst du einfach für dich erkunden in welchen Bereichen du noch mehr Aufgaben machen solltest und welche Bereiche du schon gut beherrschst. Du kannst gerne die Ergebnisse deiner Reflexion hier als Kommentar hinterlassen. Dann kann ich dir weitere Übungen empfehlen.

### Erweiterung der Übung für Fortgeschrittene

Wenn du die Syntax für Eigenschaften und private Methoden schon kannst, könntest du dir eine Designalternative überlegen. Wie könnte beispielsweise eine Lösung aussehen, wenn es eine separate Klasse `Spieler` gibt?

### Artikel, Videos & Links zu dieser Aufgabe

Hier ein paar Videos die dir bei der Lösung dieser Aufgabe helfen könnten und/oder dir zusätzliche Informationen bieten:

 - In der Lektion ["Eigenschaften - Kein direkter Zugriff Attribute!"](https://www.udemy.com/einstieg-in-csharp-software-programmieren-wie-ein-profi/learn/v4/t/lecture/4365274) meines Online-Kurses "C# für Einsteiger" zeige ich dir im Detail wie du in Visual Studio 2015 und C# eine Eigenschaft erstellst.
 - In der Lektion ["Verwenden einer Methode"](https://www.udemy.com/einstieg-in-csharp-software-programmieren-wie-ein-profi/learn/v4/t/lecture/4179080) meines Online-Kurses "C# für Einsteiger" kannst du dir anschauen wie du Methoden aufrufst.
 - Eine ausführliche Beschreibung von *Eigenschaften* gibt es im [guidetocsharp von Golo Roden](http://www.guidetocsharp.de/Classes.aspx#Properties). Ist in Deutsch und nicht Englisch wie der Name vermuten lässt!
 - Auch das Thema *Methoden* wird im [guidetocsharp](http://www.guidetocsharp.de/Classes.aspx#Methods) hervorragend erklärt.

### Lösung

Hast du die Aufgabe umgesetzt, oder willst du nur ein wenig spicken? Mach es dir nicht zu einfach ;-). Du willst schließlich was lernen, oder?

Führe fogende Schritte aus, wenn du keine Idee hast, wie du die Übung angehen kannst:

  - [  ] Erstelle ein Attribut `istSpielerEinsAmZug` vom Datentyp `bool` in der Klasse `Spiel` und initialisiere es mit `true
  - [  ] Erstelle die Eigenschaft `AktuellerSpieler` welches basierend auf dem Attribut `istSpielerEinsAmZug` entweder ein `X` (wenn das Attribut den Wert `true` hat) oder ein `O` (wenn das Attribut den Wert `false` hat) als `char` ausgibt. Die Eigenschaft benötigt übrigens kein `set`, weil sie ja nicht von außerhalb geändert werden kann.
  - [  ] Füge eine neue Methode `SpielzugAusfuehren` der Klasse `Spiel` hinzu. Sie bekommt lediglich die Parameter `zeile` und `spalte` übergeben, weil die Klasse ja bereits weiß welcher Spieler am Zug ist. Momentan ruft diese Methode leidglich das `Spielbrett` auf (`SpielsteinSetzen` und `Anzeigen`).
  - [  ] Jetzt kannst du die Methode `SpielerWechseln` mit dem Zugriffsmodifizierer `private` erstellen. Sie braucht weder einen Parameter noch einen Rückgabewert (also abgesehen von `void`). In ihr wird einfach der aktuelle Wert von `istSpielerEinsAmZug` "umgedreht".
  - [  ] Nun kannst du noch die neue Methode `SpielerWechsel` aus der Methode `SpielzugAusfuehren` aufrufen. Am besten nachdem der neue Spielstand ausgegeben wurde.
  - [  ] Abschließend musst du `Main` anpassen. Dafür kannst du einfach die Methode `SpielzugAusfuehren` mit zwei unterschiedlichen Koordinaten aufrufen.
  - [  ] Denkst du noch an das Reflektieren? 

Meine Lösung siehst du [in diesem Commit](https://github.com/LernMoment/ttt-challenge/commit/8f254139d64c33c9b2fe999281e7034c729fecbd). 

Viel Spaß beim Üben

Jan

PS: Wenn du noch nicht zur Challenge angemeldet bist, aber trotzdem teilnehmen möchtest und [die vielen Boni](/csharp-challenge/deine-vorteile-bei-anmeldung/) bekommen möchtest, dann melde dich schnell an! Unter anderem bekommst du **ein kostenloses Einzelcoaching** mit mir:

<div class="subscribe-notice">
  <h5>Hier unverbindlich und kostenlos anmelden:</h5>
    {% include lernmoment-subscribe.html %}
</div>
