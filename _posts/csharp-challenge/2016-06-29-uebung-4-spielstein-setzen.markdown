---
layout: post
title: "Übung #4 - Einen Spielstein setzen."
excerpt: "Übergebe einer Methode mehrere Parameter und werte sie mit switch-case aus."
categories: csharp-challenge
lernmoment: C#
lm-newsletter-group-id: 8
show-lm-newsletter-subscribe-box: false
share: true
tags: [C#, "TTT", "Übung", Syntax]
image:
  feature: csharp-challenge.jpg
modified:
date: 2016-06-29T06:00:00+01:00
---

**Übungsfokus:** C# Syntax - switch-case-Anweisung & Methoden mit Parametern
**Geschätzte Übungsdauer:** ca. 15 Minuten

In der [letzten Übung](/csharp-challenge/uebung-3-spielfelder-hinzufuegen/) hast du das `Spielbrett` so erweitert, dass Spielsteine gespeichert werden können. Nun geht es darum, dass diese auch tatsächlich auf dem `Spielbrett` gesetzt werden.

Du sollst also eine Methode erstellen, die eine Koordinate und das Spielsteinsymbol entgegennimmt, auswertet und einem Spielfeld zuweist. Um zu vermeiden, dass falsche Werte in die Klasse `Spielbrett` kommen, wäre es hilfreich, wenn du die Werte der Parameter vor der Auswertung/Zuweisung überprüfst. Sollten ungültige Werte übergeben werden, kannst du erstmal das `SpielsteinSetzen` verlassen ohne das am `Spielbrett` eine Änderung gemacht wurde.

Was passiert, wenn ein Spielfeld bereits besetzt ist, brauchst du hier erstmal nicht berücksichtigen. Dazu kommen wir später nochmals.

Um zu testen, dass deine Methode auch funktioniert, kannst du sie direkt mit einem Spielzug aus `Main` aufrufen. Du könntest zum Beispiel sagen, dass der Spieler mit dem Symbol *'O'* einen Spielstein auf *'C1'* setzen möchte. Du brauchst dich in Dieser Übung also nicht damit beschäftigen wie du die Interaktion mit dem Spieler umsetzt.

Teil der Aufgabe ist auch, dass du testest ob dein erstellter Quellcode Fehlerfälle richtig erkennt und behandelt. Mögliche Fehler sind:

 - Ungültige Spalte (z.B. eine Zahl, ein Sonderzeichen oder ein Buchstabe der nach C kommt)
 - Ungültige Zeile (z.B. ein Buchstabe, oder eine Zahl < 0 oder > 2)
 - Ungültiges Symbol

Fallen dir noch mehr Fehlerfälle ein?

**WICHTIG:** Ein ganz elementarer Bestandteil einer jeden Übung (wenigstens, wenn sie dich weiterbringen soll) ist [das Reflektieren](http://clean-code-developer.de/die-grade/roter-grad/#Taeglich_reflektieren). Wenn du die Übung erledigt hast ziehe bitte eine Bilanz was die Übung dir bezüglich deiner Fähigkeiten gezeigt hat. So kannst du einfach für dich erkunden in welchen Bereichen du noch mehr Aufgaben machen solltest und welche Bereiche du schon gut beherrschst. Du kannst gerne die Ergebnisse deiner Reflexion hier als Kommentar hinterlassen. Dann kann ich dir weitere Übungen empfehlen.

### Erweiterung der Übung für Fortgeschrittene

Als **Fortgeschrittener oder Profi** wird dich das Erstellen der Methode nicht herausfordern. Du könntest daher die Implementierung der Methode so umsetzen, dass sie dem *Single Level of Abstraction* Prinzip genügt.

Eine andere Erweiterung wäre, dass du das erstellen von Unittests übst. Es wäre also die Aufgabe, dass du ein neues Unittest-Projekt anlegst und darin mindestens 3 Unittests definierst die deine `SpielsteinSetzen` Methode testen.

### Artikel, Videos & Links zu dieser Aufgabe

Hier ein paar Videos die dir bei der Lösung dieser Aufgabe helfen könnten und/oder dir zusätzliche Informationen bieten:

 - In der Lektion ["Switch-Case-Anweisung - Eine Alternative zur if-Abfrage"](https://www.udemy.com/einstieg-in-csharp-software-programmieren-wie-ein-profi/learn/v4/t/lecture/4195194) meines Online-Kurses "C# für Einsteiger" bekommst du eine grundlegende Einführung in das Konzept der switch-case-Anweisung. Diese könntest du zur Implementierung der Methode verwenden.
 - In der Lektion ["Erstellen einer Methode - Wir verlagern die Eingabe"](https://www.udemy.com/einstieg-in-csharp-software-programmieren-wie-ein-profi/learn/v4/t/lecture/4179026) meines Online-Kurses "C# für Einsteiger" lernst du wie Parameter für eine Methode definiert werden.
 - Im Artikel ["Spare Zeit mit diesen 3 Taktiken zur Fehlervermeidung"](/alle/aktivitaeten-zur-fehlervermeidung/) habe ich beschrieben was unter *defensiver Programmierung* zu verstehen ist. Die solltest du in dieser Übung anwenden.
 - Eine ausführliche Beschreibung der *Switch-Case* Anweisung gibt es auf [MSDN](https://msdn.microsoft.com/de-de/library/06tc147t.aspx)

### Lösung

Hast du die Aufgabe umgesetzt, oder willst du nur ein wenig spicken? Mach es dir nicht zu einfach ;-). Du willst schließlich was lernen, oder?

Als **Lösungshinweis** kann ich dir verraten, dass die Methode `SpielsteinSetzen` mit 3 Parametern definiert habe. Dabei verwende ich je einen Parameter für `symbol`, `spalte` und `zeile`. 

Führe fogende Schritte aus, wenn du keine Idee hast, wie du die Übung angehen kannst:

  - [  ] Erstelle eine `public` Methode mit dem Namen `SpielsteinSetzen`. Sie hat als Rückgabewert `void` und die folgenden Parameter:
    - `char symbol` - du kannst anstelle von `char` auch `string` verwenden
    - `char spalte` - du kannst anstelle von `char` auch `string` verwenden
    - `int zeile` - du kannst `spalte` und `zeile` auch gemeinsam als Parameter `koordinate` vom Typ `string` übergeben. Dann musst du den Parameter aber erst noch parsen. Also in seine einzelnen Bestandteile unterteilen.
  - [  ] Überlege ob die Methode `static` sein muss oder nicht und definiere sie entsprechend. Hinweis: Wir wollen auf Attribute zugreifen, die momentan selber `static` sind.
  - [  ] Methode implementieren: Überprüfe ob das `symbol` einen Wert hat der **nicht** `X` oder `O` ist und verlasse die Methode, wenn dem so ist.
  - [  ] Methode implementieren: Überprüfe ob der Parameter `zeile` einen Wert hat der **außerhalb** des zulässigen Wertebereichs ist und verlasse die Methode, wenn dem so ist.
  - [  ] Methode implementieren: Überprüfe ob der Parameter `spalte` einen Wert hat der **innerhalb** des zulässigen Wertebereichs ist und weise dann das `symbol` dem Spielfeld an der angegebenen `zeile` und `spalte` zu.
  - [  ] Reflektieren

Meine Lösung siehst du [tbd](). 

Viel Spaß beim Üben

Jan

PS: Wenn du noch nicht zur Challenge angemeldet bist, aber trotzdem teilnehmen möchtest und [die vielen Boni](/csharp-challenge/deine-vorteile-bei-anmeldung/) bekommen möchtest, dann melde dich schnell an! Unter anderem bekommst du **ein kostenloses Einzelcoaching** mit mir:

<div class="subscribe-notice">
  <h5>Hier unverbindlich und kostenlos anmelden:</h5>
    {% include lernmoment-subscribe.html %}
</div>
