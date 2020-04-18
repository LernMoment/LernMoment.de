---
layout: page
title: "Übung #2: Spielfeld verschönern"
excerpt: "Im zweiten Teil des Übungskurses geht es bereits um eine sehr mächtige Funktion von WPF. Du verschönerst die Buttons mithilfe eines Styles."
search_omit: true
banner: uebung-buchstaben
image:
  feature: banner/lernmoment-wpf-ttt.jpg
modified:
date: 2020-03-17T09:30:00+01:00
---

Mmmmmoin und willkommen zur **zweiten Übung** im WPF-Übungskurs für Einsteiger!

Heute geht es darum, dass wird das *Spielfeld* etwas schöner machen wollen. In der ersten Übung habe ich dir dazu schon einiges über das `Grid` erklärt. Jetzt lernst du eine der mächtigsten Funktionen für die Gestaltung der Oberfläche in *WPF* kennen. Du sollst nämlich heute einen `Style` anlegen der allen `Button` im *Spielfeld* ein einheitliches Aussehen gibt.

Bevor ich nun jedoch weiter ins Detail bezüglich der neuen Aufgabe gehe, hier die Lösung der ersten Aufgabe.

## Musterlösung der letzten Aufgabe

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/zt1pTNvhLuM" frameborder="0" allow="encrypted-media" allowfullscreen></iframe>

**Musterlösung:** [Hier meine Musterlösung als zip-Datei.](https://github.com/LernMoment/tictactoe-wpf/releases/tag/teil1)

**Musterlösung Schritt-für-Schritt** (durch Klick auf die Links siehst du die Änderungen im Quellcode von einem Schritt zum nächsten):
1. [*WPF* Projekt erstellen](https://github.com/LernMoment/tictactoe-wpf/commit/593a68022b9545916f996d480c5883479ad5fe98)
2. [`MainWindow` anpassen](https://github.com/LernMoment/tictactoe-wpf/commit/f2588d972cc804e1296cb5884dc4304875660a1a)
3. [Erstelle ein `Grid` als Basis für das *Spielfeld*](https://github.com/LernMoment/tictactoe-wpf/commit/637c04ac98a442401dc7bb0fe1af0c07b6992545)
4. [Fügt in jedes Kästchen einen `Button` ein](https://github.com/LernMoment/tictactoe-wpf/commit/af4ce60c5989d4a7fd1c22ed4ce85ee2612a6853)

## Die neue Aufgabe
Für die "Verschönerung" des Spielfelds darfst du heute einen neuen `Style` anlegen:

1. Mach das Layout für **einen** `Button` (z.B. den oben links) über seine Eigenschaften:
  - Wähle eine dunklere Farbe für den Hintergrund. Probiere verschiedene bis dir eine gefällt. (Ich verwende das "LernMoment"-Türkis `#00A8C6`)
  - Wähle eine hellere Farbe für die Schrift. Probiere verschiedene bis dir eine gefällt. (Ich verwende das "LernMoment"-Beige `#F9F2E7`)
  - Erhöhe die Schriftgröße so das es "gut" ;-) aussieht. (Ich verwende `70`)
  - Die Buttons sollen eine dünne Abgrenzung zu einander haben die nicht zu hell und nicht zu dunkel ist.
2. Erstelle nun einen `Style` der **alle** `Buttons` mit diesem Aussehen versieht.
3. Beim Klick auf einen Button deiner Wahl (z.B. wieder oben links) soll die Hintergrundfarbe und die Textfarbe invertiert werden. (Dieses braucht nur einmalig geschehen, weil wir in der nächsten Übung noch weitere Änderungen vornehmen.) *Hinweis:* Lösung in `MainWindow.xaml.cs` (code-behind) und nicht XAML!
4. [optional] Sofern du es noch nicht getan hast, mache einen `Commit` für deine ganzen Änderungen und schiebe alles via *Sync* auf GitHub.

## Lösungshinweise
Durch den ersten Schritt in dieser Aufgabe sollte es dir möglich sein erstmal die "richtigen" Eigenschaften am `Button` zufinden. Wenn du die gefunden hast, dann kannst du sie in einen `Style` übernehmen.

Konkretere Hinweise zu den einzelnen Schritten findest du hier:
1. Auf Microsoft Docs findest du eine [Auflistung aller Eigenschaft eines `Button`](https://docs.microsoft.com/de-de/dotnet/api/system.windows.controls.button?view=netframework-4.8#properties). Ja, es ist ziemliche Sucherei, aber das ist halt das Leben eines C# Entwicklers ;-).
2. Eine Einführung in das Thema `Style` gebe ich dir in [diesem Artikel](/alle/wpf-style-xaml-grundlagen/).
3. Dafür brauchst du einen *EventHandler* für das `Button.Click` *Event*. Darin kannst du dann die entsprechenden Eigenschaften des `Button` auch im C# Quellcode anpassen. Wie du einen solchen *EventHandler* anlegst zeige ich dir [hier im BallSpiel Projekt](https://youtu.be/ugji-_yWoRk?t=929). Mehr über Maus- und Tastatur- *Events* gibts im [2. Teil des BallSpiel Projekts](https://youtu.be/L99fv0Gzx4Y).

## Weiterführende Artikel / Videos

- Eine gute Einführung in das Thema `Style` gibt es auch im freiverfügbaren [Openbook von Rheinwerk Computing](http://openbook.rheinwerk-verlag.de/visual_csharp_2012/1997_23_004.html).
- Im Artikel [Exemplarische Vorgehensweise: Erstellen einer Schaltfläche mit XAML](https://docs.microsoft.com/de-de/dotnet/framework/wpf/controls/walkthrough-create-a-button-by-using-xaml) auf *Microsoft Docs* gibt es ein umfangreiches Tutorial mit wesentlich mehr Optionen für das *Styling* eines `Button`. Allerdings wird es zum Ende schon etwas anspruchsvoller.

In wenigen Tagen bekommst du eine weitere Mail von mir mit meiner Musterlösung und der nächtsen Teilaufgabe.

Bis dahin wünsche ich dir viel Spaß beim Üben

Jan von LernMoment.de