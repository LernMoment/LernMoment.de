---
layout: post
title: "Übung #7 - Kommandos unterscheiden"
excerpt: "Erstelle einen Algorithmus um einen Spielzug aus einem Kommando zu extrahieren."
categories: csharp-challenge
lernmoment: C#
lm-newsletter-group-id: 8
show-lm-newsletter-subscribe-box: false
share: true
tags: [C#, "TTT", "Übung", Syntax]
image:
  feature: csharp-challenge.jpg
modified:
date: 2016-07-03T06:00:00+01:00
---

**Übungsfokus:** C# Syntax - Methoden mit Parameter & Rückgabewert, Strings; Design - Algorithmus
**Geschätzte Übungsdauer:** ca. 20 Minuten

In der [letzten Übung](/csharp-challenge/uebung-6-spielerwechsel/) hast du die Klasse `Spiel` erweitert um den Spielerwechsel auszuführen. Somit könnten schon mal 2 Spieler abwechseln ihre Spielzüge ausführen. Allerdings kann die Anwendung bisher die möglichen Kommandos `ende`, `neustart` und Spielzug (in Form einer Koordinate) noch nicht unterscheiden. Darum geht es in dieser Übung.

In dieser Übung liegt der Fokus auf der Erstellung eines Algorithmus um ein eingegebenes Kommando zu analysieren und zu entscheiden ob es sich um einen Spielzug handelt. Dabei ist auf dieser Ebene nicht relevant, ob es sich um einen gültigen Spielzug handelt.

Ein Spieler kann unserem TicTacToe Spiel mitteilen, dass er einen Spielzug machen möchte in dem er eine Koordinate eingibt. Dabei besteht eine Koordinate immer aus einem Buchstaben (an erster Stelle) und einer Zahl (an zweiter Stelle). Sofern eine Eingabe diesem Schema folgt, kann in einem nächsten Schritt (siehe nächste Übung) der Spielzug ausgeführt werden. Dann kann auch beispielsweise im `Spielbrett` entschieden werden ob es sich um eine für den aktuellen Spielstand gültige Koordinate handelt.

Damit du dich auf den Algorithmus fokussieren kannst, solltest du die Methode, welche den Algorithmus realisiert einfach in `Program.cs` als statische Methode realisieren. Um deine Methode zu testen kannst du sie einfach mit einem Kommando aus `Main` aufrufen. Dein `Main` könnte zum Beispiel so aussehen:

```cs
static void Main(string[] args)
{
  if(IstSpielzug("B1"))
  {
    Console.WriteLine("ERFOLG: Der Algorithmus erkennt eine Koordinate als Spielzug.");
  }
  else
  {
    Console.WriteLine("FEHLER: Der Algorithmus erkennt eine Koordinate NICHT als Spielzug!");
  }

  if(IstSpielzug("ende"))
  {
    Console.WriteLine("FEHLER: Der Algorithmus sieht das ENDE-Kommando als Spielzug an.");
  }
  else
  {
    Console.WriteLine("ERFOLG: Der Algorithmus sieht das ENDE-Kommando NICHT als Spielzug an.");
  }
}
```

In diesem Beispiel beinhaltet die Methode `IstSpielzug` den Algorithmus, den du entwickeln sollst. Beachte, dass du bei der Entwicklung des Algorithmus auch weitere *Hilfs-Methoden* erstellen kannst. Gerne kannst du `Main` auch um weitere Testfälle erweitern.

*Hinweis:* Um aus einem `String` einen Teil zu extrahieren gibt es die Methode `Substring`.

Wenn dir die Hinweise noch nicht reichen, kannst du unten im Abschnitt *Lösung* die einzelnen Schritt anschauen die dich zu meiner Lösung bringen.

**WICHTIG:** Ein ganz elementarer Bestandteil einer jeden Übung (wenigstens, wenn sie dich weiterbringen soll) ist [das Reflektieren](http://clean-code-developer.de/die-grade/roter-grad/#Taeglich_reflektieren). Wenn du die Übung erledigt hast ziehe bitte eine Bilanz was die Übung dir bezüglich deiner Fähigkeiten gezeigt hat. So kannst du einfach für dich erkunden in welchen Bereichen du noch mehr Aufgaben machen solltest und welche Bereiche du schon gut beherrschst. Du kannst gerne die Ergebnisse deiner Reflexion hier als Kommentar hinterlassen. Dann kann ich dir weitere Übungen empfehlen.

### Erweiterung der Übung für Fortgeschrittene

Du hast eine Methode in wenigen Minuten entwickelt die identifiziert ob es sich bei einer Eingabe um einen Spielzug handelt? Glückwunsch! Dann ist es wohl an der Zeit, dass du die Aufgabe schwerer machst.

Wie wäre es beispielsweise, wenn du eine andere Technologie verwendest? Ich habe die Übung mit `Strings` gelöst. Eine Alternative ist, dass du reguläre Ausdrücke verwendest. Dazu gibt es in .NET eine eigene Klasse. Wenn du sowohl eine Lösug mit regulären Ausdrücken wie auch mit `Strings` hast, dann kannst du dir auch überlegen welche Lösung du besser findest und warum.

Eine weitere Alternative wäre, dass du diese Aufgabe mit dem [Interpreter - Entwurfsmuster](https://de.wikipedia.org/wiki/Interpreter_(Entwurfsmuster)) löst.

### Artikel, Videos & Links zu dieser Aufgabe

Hier ein paar Videos die dir bei der Lösung dieser Aufgabe helfen könnten und/oder dir zusätzliche Informationen bieten:

 - Im Abschnitt *Iteration #2 - Taschenrechner mit allen Grundrechenarten* meines Online-Kurses "C# für Einsteiger" erkläre ich dir alles wichtige rund um Methoden. Das Thema startet mit der Lektion ["Einführung in Methoden"](https://www.udemy.com/einstieg-in-csharp-software-programmieren-wie-ein-profi/learn/v4/t/lecture/4184288). Auch die danach folgenden Lektionen sind fokussiert auf das Thema Methoden.
 - Das Thema *Methoden* wird im [guidetocsharp](http://www.guidetocsharp.de/Classes.aspx#Methods) hervorragend erklärt.
 - Hier kommst du direkt zur Beschreibung der verschiedenen Varianten der [Substring Methode auf MSDN](https://msdn.microsoft.com/de-de/library/system.string.substring(v=vs.110).aspx)
 - Wenn du mehr Hintergrundinformationen zu Strings benötigst, dann kannst du mal in [diesem Kapitel vom Rheinwerk openbook](http://openbook.rheinwerk-verlag.de/visual_csharp_2012/1997_16_002.html) schauen. Darin wird auch `Substring` erklärt.

### Lösung

Hast du die Aufgabe umgesetzt, oder willst du nur ein wenig spicken? Mach es dir nicht zu einfach ;-). Du willst schließlich was lernen, oder?

Führe fogende Schritte aus, wenn du keine Idee hast, wie du die Übung angehen kannst:

  - [  ] Erstelle den Methodenkopf `static bool IstSpielzug(string kommando)`
  - [  ] Überlege dir welche Schritte notwendig sind um zu überprüfen ob das `kommando` ein Spielzug ist. Schreibe die einzelnen Schritte als Kommentar in den Methodenrumpf der eben erstellten Methode.
  - [  ] Nun versuche für jeden einzelnen Schritt eine mögliche Lösung in Quellcode zu verfassen. Diese kannst du immer unter den entsprechenden Kommentar im Methodenrumpf schreiben.
  - [  ] Wenn du eine komplette Lösung hast, kannst du sie analysieren ob du einige Anweisungen mehrfach machst und diese in eine separate Methode auslagern.
  - [  ] Überlege ob du den Quellcode der unter dem Kommentar steht auch ohne den Kommentar verstehst. Wenn nicht, dann kannst du versuchen die entsprechenden Zeilen in eine eigene Methode mit einem aussagekräftigen Namen zu packen. Damit wirst du üblicherweise auch dem Single Level of Abstraction Prinzip wieder näher kommen.
  - [  ] Denkst du noch an das Reflektieren? 

Meine Lösung siehst du [in diesem Commit](). 

Viel Spaß beim Üben

Jan

PS: Wenn du noch nicht zur Challenge angemeldet bist, aber trotzdem teilnehmen möchtest und [die vielen Boni](/csharp-challenge/deine-vorteile-bei-anmeldung/) bekommen möchtest, dann melde dich schnell an! Unter anderem bekommst du **ein kostenloses Einzelcoaching** mit mir:

<div class="subscribe-notice">
  <h5>Hier unverbindlich und kostenlos anmelden:</h5>
    {% include lernmoment-subscribe.html %}
</div>
