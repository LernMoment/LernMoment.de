---
layout: page
title: "LernMail #2 - Einstieg in WPF"
excerpt: "Einstieg in WPF und erster Broadcast"
search_omit: true
image:
  feature: 
modified:
date: 2020-03-13T09:30:00+01:00
---

Mmmmmoin und willkommen zur LernMail #2!

Eine Idee haben, überlegen wie eine Umsetzung aussehen könnte, **dieses dann wirklich umsetzen**, die Resultate analysieren und dann mit Ideen für Verbesserungen den Prozess von vorne starten ist ein wichtiger Ablauf in der Softwareentwicklung. Diesen Ablauf kannst du im folgenden mit deinem Einstieg in WPF üben.

Bevor wir nun aber in das neue Thema eintauchen, nochmal ein kurzer Rückblick auf die LernMail #1 zum Thema Visual Studio. Dort hatte ich genau diesen Ablauf angewendet. Rückblickend kann ich sagen, dass ich mit dem Resultat nicht wirklich zufrieden war. Obwohl ich auch wirklich tolle Rückmeldung bekommen habe (besonderen Dank an Dragana und Jörg), sieht es auch so aus, als ob eine so umfangreiche LernMail mit richtig vielen Links nicht gut zu konsumieren ist. Wenn du diesbezüglich noch Rückmeldung hast, wäre das echt super!

Meine Ideen zur Verbesserung sehen so aus:
1. [Auf dieser Schwerpunktseite auf LernMoment.de](/schwerpunkt/visual-studio/) findest du vieles zum Thema *Visual Studio* gebündelt. Dort kannst du hoffentlich die Inhalte die dich Interessieren besser konsumieren als in der letzten LernMail.
2. Es gibt alle 2 Wochen eine LernMail mit den **neusten Artikeln, Videos, Übungen, Fragen und Angeboten** die dich auf deinem Weg vom Einsteiger zum C# Entwickler weiterbringen.
3. Es gibt ein **Thema des Monats** für welches du dich separat anmelden kannst. So kannst du entscheiden ob dich das Thema interessiert und bekommst nur die Mails von mir die für dich relevant sind.

So viel zu der Neuausrichtung der LernMail. Nun aber zu dem wirklich coolen Inhalt!

## Thema des Monats: Einstieg in WPF
*WPF* steht für *W*indows *P*resentation *F*oundation und ist die Oberflächentechnologie für Desktopanwendung unter Windows. Es gab einige Gerüchte, dass WPF abgekündigt wird, aber mit dem Release von .NET Core 3.0 wurde WPF vom .NET Framework auf .NET Core portiert. Außerdem hat Microsoft den kompletten Quellcode von WPF als ein [Open-Source-Projekt auf GitHub](https://github.com/dotnet/wpf) veröffentlicht.

Ein wichtiger Bestandteil von *WPF* ist die e*X*tensible *A*pplication *M*arkup *L*anguage (kurz *XAML*). Damit ist es möglich die komplette Oberfläche in einer Art XML zu beschreiben. *XAML* wird nicht nur in *WPF* eingesetzt, sondern auch für die Entwicklung von *Windows Store Apps* verwendet.

Grund genung, dass du dich mit *WPF* beschäftigst und erstmal die Grundlagen davon lernst. Dazu habe ich den kostenlosen [**TicTacToe Übungskurs für Einsteiger in WPF**](/lernmail-kurse/wpf-tictactoe-fuer-einsteiger/) erstellt. Nach dem Kurs kannst du:
- Eine Oberfläche in XAML erstellen
- Den passenden Quellcode schreiben um die Oberfläche zum Leben zu erwecken
- Ein `DataGrid` mit einfacher *Datenbindung* anlegen

Dazu bekommst du im Abstand von 3 Tagen jeweils eine Mail mit einer neuen Teilaufgabe, Lösungshinweisen und einer Musterlösung für die vorherige Teilaufgabe. Am Ende dieser Serie hast du dann mit *WPF* ein kleines TicTacToe Spiel erstellt. Welches ungefähr so aussehen wird:

![Fertige WPF Oberfläche des zu entwickelnden TicTacToe-Spiels]({{ site.url }}/images/lernmails/2-ttt-final-ui.png)

[Schreibe dich hier ein für die Teilnahme am Übungskurs und du kannst sofort loslegen.](/lernmail-kurse/wpf-tictactoe-fuer-einsteiger/)

Zusätzlich zu den Mails und darin enthaltenen Videos bekommst du Zugriff auf ein GitHub-Projekt. Denn gemeinsam lernt und übt es sich besser. So kannst du sehen wie andere die Übungen lösen und kannst zu deiner eigenen Lösung Rückmeldung bekommen.

Ich hoffe du bist dabei!

## Frage der Woche: Wie private Methoden testen?
Das automatische Testen von Quellcode mithilfe von *Unit-Tests* ist nicht nur eine qualitätssteigernde Maßnahme, sondern kann manchmal auch etwas kompliziert werden.

Markus hat im Rahmen meines Online-Kurses [Einstieg in C#]() seine ersten *Unit-Tests* geschrieben. Dabei ist er auf die wirklich gute Fragen gekommen:

> Hallo Jan, beim Unit Test habe ich die Möglichkeit öffentliche Methoden einer Klasse zu testen. Was ist aber mit den privaten Methoden die es in der gleichen Klasse gibt? Ignoriert man diese beim Test, weil diese indirekt mit den öffenlichen mit getestet werden oder wie geht man damit um? - Markus

Bis dahin wünsche ich dir viel Spaß beim Lernen und Üben mit Visual Studio

Jan von [LernMoment.de](https://www.lernmoment.de)
