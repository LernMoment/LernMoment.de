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

1. Eine Idee haben,
2. überlegen wie eine Umsetzung aussehen könnte,
3. **dieses dann wirklich umsetzen**, 
4. die Resultate analysieren und 
5. mit Ideen für Verbesserungen den Prozess von vorne starten 

ist ein wichtiger Prozess in der Softwareentwicklung. Diesen Ablauf kannst du im folgenden mit deinem *Einstieg in WPF* üben.

Bevor wir nun aber in das neue Thema eintauchen, nochmal ein kurzer Rückblick auf die LernMail #1 zum Thema Visual Studio. Dort hatte ich genau diesen Prozess angewendet. Rückblickend kann ich sagen, dass ich mit dem Resultat nicht wirklich zufrieden bin. Ich habe wirklich tolle Rückmeldung bekommen (besonderen Dank an Dragana und Jörg). Trotzdem bin ich der Ansicht das eine so umfangreiche LernMail mit vielen Links nicht gut für dich zu konsumieren ist. Wenn du diesbezüglich noch Rückmeldung hast, wäre das echt super!

Meine Ideen zur Verbesserung sehen so aus:
1. [Auf dieser Schwerpunktseite auf LernMoment.de](/schwerpunkt/visual-studio/) findest du vieles zum Thema *Visual Studio* gebündelt. Dort kannst du hoffentlich die Inhalte die dich interessieren besser konsumieren als in der letzten LernMail.
2. Es gibt alle 2 Wochen eine LernMail mit den **neusten Artikeln, Videos, Übungen, Fragen und Angeboten** die dich auf deinem Weg vom Einsteiger zum C# Entwickler weiterbringen.
3. Es gibt ein **Thema des Monats** für welches du dich separat anmelden kannst. So kannst du entscheiden ob dich das Thema interessiert und bekommst nur die Mails von mir die für dich relevant sind.

So viel zu der Neuausrichtung der LernMail. Nun aber zum Wichtigsten, der Umsetzung, und wirklich coolen Inhalten!

## Thema des Monats: Einstieg in WPF
*WPF* steht für *W*indows *P*resentation *F*oundation und ist die Oberflächentechnologie für Desktopanwendung unter Windows. Es gab einige Gerüchte, dass *WPF* abgekündigt wird, aber mit dem Release von .NET Core 3.0 wurde *WPF* von .NET Framework auf .NET Core portiert. Außerdem hat Microsoft den kompletten Quellcode von WPF als ein [Open-Source-Projekt auf GitHub](https://github.com/dotnet/wpf) veröffentlicht.

Ein wichtiger Bestandteil von *WPF* ist die e*X*tensible *A*pplication *M*arkup *L*anguage (kurz *XAML*). Damit ist es möglich die komplette Oberfläche in einer Art XML zu beschreiben. *XAML* wird nicht nur in *WPF* eingesetzt, sondern auch für die Entwicklung von *Windows Store Apps* verwendet.

Grund genung, dass du dich mit *WPF* beschäftigst und erstmal die Grundlagen davon lernst. Dazu habe ich den kostenlosen [**TicTacToe Übungskurs für Einsteiger in WPF**](/lernmail-kurse/wpf-tictactoe-fuer-einsteiger/tag1-spielfeld-anlegen/) erstellt. Nach dem Kurs kannst du:
- Eine Oberfläche in XAML erstellen
- Den passenden Quellcode schreiben um die Oberfläche zum Leben zu erwecken
- Ein `DataGrid` mit einfacher *Datenbindung* anlegen

Dazu bekommst du im Abstand von 3 Tagen jeweils eine Mail mit einer **neuen Teilaufgabe, Lösungshinweisen und einer Musterlösung** für die vorherige Teilaufgabe. Am Ende dieser Serie hast du dann mit *WPF* ein kleines TicTacToe Spiel erstellt. Welches ungefähr so aussehen wird:

![Fertige WPF Oberfläche des zu entwickelnden TicTacToe-Spiels]({{ site.url }}/images/lernmails/2-ttt-final-ui.png)

**Los gehts:** [Klicke einfach auf diesen Link und du kommst direkt zur ersten Teilaufgabe.](/lernmail-kurse/wpf-tictactoe-fuer-einsteiger/tag1-spielfeld-anlegen/)

Zusätzlich zu den Mails und darin enthaltenen Videos bekommst du Zugriff auf ein GitHub-Projekt. Denn **gemeinsam lernt und übt es sich besser**. So kannst du sehen wie andere die Übungen lösen und kannst zu deiner eigenen Lösung Rückmeldung bekommen.

Ich hoffe du bist dabei!

## Frage/Übung der Woche: Wie private Methoden testen?
Das automatische Testen von Quellcode mithilfe von *Unit-Tests* ist nicht nur eine **qualitätssteigernde Maßnahme**, sondern kann manchmal auch etwas kompliziert werden.

Markus hat im Rahmen meines Online-Kurses [Einstieg in C#](https://www.udemy.com/course/einstieg-in-csharp-software-programmieren-wie-ein-profi/?couponCode=CS_95-0420_EXISTING) seine ersten *Unit-Tests* geschrieben. Dabei fragte er sich:

> Hallo Jan, beim Unit Test habe ich die Möglichkeit öffentliche Methoden einer Klasse zu testen. Was ist aber mit den privaten Methoden die es in der gleichen Klasse gibt? Ignoriert man diese beim Test, weil diese indirekt mit den öffenlichen mit getestet werden oder wie geht man damit um? - [Markus](https://github.com/LernMoment/community-fragen#tes-1-wie-sollten-private-methoden-einer-klasse-getestet-werden)

**Übung:** Wenn dich das Thema *Unit-Testing* interessiert, dann versuche doch diese Frage zu beantworten. Den größten Lerneffekt bekommst du, wenn du dieses schriftlich machst und mit mir und der LernMoment-Community teilst. Dieses kannst du [hier machen](https://github.com/LernMoment/community-fragen/issues/new?assignees=&filename=antwort.md&labels=answer&title=Antwort+zu+Frage%3A+%3CName+der+Frage+z.B.+WPF-1%3E). Meine Antwort zu der Frage findest du [hier](https://github.com/LernMoment/community-fragen#tes-1-wie-sollten-private-methoden-einer-klasse-getestet-werden)

## Neue und beliebte LernMomente
Hier einige neue LernMomente und das beliebteste aus dem Archiv:
- [**Lernen durch Rückmeldung - Dein Weg zum C# Entwickler**](https://youtu.be/2gNVyMGfZTI) [Video - NEU] - Alleine den Einstieg in C# zu meistern kann schwer sein. Dabei ist es egal ob du tolle kostenlose Tutorials hast oder viel Geld für Online- oder auch "Offline"-Kurse ausgibst. Es gibt jedoch eine recht einfache Methode wie du auch ohne einen Mentor, Trainer oder erfahrenen Kollegen gute Rückmeldung bekommst. Wie das geht erkläre ich dir in [diesem Video](https://youtu.be/2gNVyMGfZTI).
- [**Versionskontrolle mit Git und Visual Studio 2019**](/alle/git-mit-visual-studio-2019/) [Artikel - NEU] - Eine der häufigsten Reaktionen von Einsteigern beim Thema Versionskontrolle ist *"Brauche ich nicht!"* Dabei ist es **eine der wichtigsten Fähigkeiten** die du in jedem Job als C# Entwickler benötigst. Dazu kommt, dass der Einstieg in *Git* mit *Visual Studio 2019* wirklich einfach ist. [Probiere es doch mal aus](/alle/git-mit-visual-studio-2019/).
- [**ObjektOrientierung - Der schnelle Einstieg**](https://www.youtube.com/playlist?list=PLP2TrPpx5VNl4t9kS2MMWNveEWl41gEKX) [Video-Playlist - ARCHIV] - Beim Anschauen dieser Videos musste ich schmunzeln wie sehr sich meine Videos in den letzten Jahren doch verändert haben. Das Thema *Objekt-Orientierung* ist jedoch absolut elementar für angehende C# Entwickler. Sobald du also eine erste Idee der grundlegenden Elemente von C# (Variablen, Datentypen, Schleifen und co.) hast, solltest du dich unbedingt dem Thema *Objekt-Orientierung* widmen.

## Kurz vorgestellt: "C# Grundlagen üben mit System"
In dieser Rubik stelle ich dir in jeder LernMail eines meiner kostenpflichtigen Angebote vor. Heute dreht es sich... TROMMELWIRBEL... ums Üben!!! 🥳🙄 Ja ich weiß, dass gefühlt jeder 2. Satz das Wort "üben" beinhaltet. Es ist aber einfach das Wichtigste damit du C# Entwickler wirst.

**Durch diesen Online-Kurs entwickelst du dich:**

Vom Einsteiger der
- Erste Konzepte und Syntax verstanden hat
- Ein wenig unsicher ist wie diese Konzepte nun eingesetzt werden können um ein Problem zu lösen
- Wenig Erfahrung hat auf welche Aspekte geachtet werden muss und was zutun ist, wenn man nicht weiter kommt

Zum Einsteiger mit erster Erfahrung, der
- Ein Problem komplett eigenständig gelöst hat
- Erfahren hat was an seiner Lösung „gut“ ist und was verbessert werden kann
- Der den Prozess verstanden hat wie eine Aufgabe zu lösen ist und weiß wo es weitere Hilfe gibt

[Belege den Kurs bis zum 21.03.20 mit dem LernMail-Abonnenten Rabatt. Los gehts!](https://www.udemy.com/course/csharp-uebungskurs-einfach-verschluesselt/?couponCode=UROT_AKTION1_0320_BP)

LernMail #3 erscheint bereits am 28.03.2020.

Bis dahin wünsche ich dir viel Spaß beim Lernen und Üben mit WPF und den LernMomenten

Jan von [LernMoment.de](https://www.lernmoment.de)

PS: **Wie hat dir diese LernMail gefallen?** Schreib mir deine Meinung als Antwort auf diese Mail.