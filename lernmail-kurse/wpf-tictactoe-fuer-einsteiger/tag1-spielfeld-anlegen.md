---
layout: page
title: "WPF-Übungskurs: Tag 1 - Spielfeld anlegen"
excerpt: "Im ersten Teil des Übungskurses geht es darum, dass du ein neues WPF-Projekt anlegst, das Fenster konfigurierst und das Spielfeld mithilfe des XAML-Grid-Panels erstellst."
search_omit: true
image:
  feature: 
modified:
date: 2020-03-13T09:30:00+01:00
---

Mmmmmoin und willkommen zur ersten Übung im TicTacToe Übungskurs für WPF Einsteiger!

Solltest du *Tic-Tac-Toe* tatsächlich nicht kennen, dann findest du alle wichtigen Informationen dazu auf [Wikipedia](https://de.wikipedia.org/wiki/Tic-Tac-Toe). Ein einfaches Beispiel für Tic-Tac-Toe könnte so aussehen:

![Bild eines Tic-Tac-Toe Spiels]({{ site.url }}/images/lernmail-kurse/tictactoe-example.png)

## Die Aufgabe
Im ersten Schritt geht es darum, dass du das WPF-Projekt anlegst und das Spielfeld für TicTacToe erstellst.

1. Erstelle ein *WPF-App (.NET Core)*-Projekt in *Visual Studio 2019*
2. Passe das *MainWindow* an
  - Gib dem Fenster einen passenden `Title` (z.B. "Mein TicTacToe")
  - Setze die Fenstergröße (`Width` und `Height`) auf 500x500
3. Erstelle ein `Grid` mit *"spielfeld"* als `Name` in *XAML*. Das `spielfeld` soll je 3 Spalten und Zeilen gleicher Größe haben.
4. Fülle die 9 Zellen im `Grid` mit je einem `Button`. Der `Name` eines jeden `Buttons` sollte zeigen zu welcher Zeile und Spalte er gehört. Du kannst z.B. die Form "kaestchen_spaltennummer_zeilennummer" (also "kaestchen_2_2" steht für den Button in der Mitte) nehmen.
5. Bonus: Lade dein Projekt auf GitHub und schicke mir den Link zu deinem Projekt.

## Lösungshinweise
Vom Grundsatz her orientieren wir uns in den ersten Schritten sehr am [*BallSpiel-Projekt*](https://www.youtube.com/watch?v=ugji-_yWoRk&list=PLP2TrPpx5VNk2g07AKxyIGdsUJNA95CDt). Daher gebe ich dir zu den ersten Schritten dieser Aufgabe einfach die passenden Einsprungpunkte in das entsprechende Video:

1. Die Erstellung eines *WPF*-Projektes zeige ich dir [hier](https://www.youtube.com/watch?v=ugji-_yWoRk&list=PLP2TrPpx5VNk2g07AKxyIGdsUJNA95CDt)
2. Wie du den `Title` im `Window` änderst zeige ich dir [hier](https://youtu.be/ugji-_yWoRk?t=230). Die beiden Werte für die Fenstergröße sind genau daneben.
3. Alles was du für das Anlegen und Füllen des `Grid` brauchst habe ich [hier](/alle/wpf-grid-panel-xaml-grundlagen/) beschrieben.
4. Siehe 3.
5. Alles notwendige zeige ich dir in [diesem Video](https://youtu.be/2gNVyMGfZTI?t=174).

## Weiterführende Artikel / Videos

- Einen Überblick über die verschiedenen Bereiche / Fenster (z.B. XAML-Editor und Designer) zu WPF in Visual Studio gebe ich dir [hier](https://youtu.be/ugji-_yWoRk?t=143)
- Das [Tutorial: Erstellen einer einfachen (WPF-) Anwendung mit C#](https://docs.microsoft.com/de-de/visualstudio/get-started/csharp/tutorial-wpf?toc=%2Fdotnet%2Fdesktop-wpf%2Ftoc.json&bc=%2Fdotnet%2Fbreadcrumb%2Ftoc.json&view=vs-2019) auf *Microsoft Docs* zeigt dir auch nochmals die wichtigsten Schritte beim Anlegen einer WPF-Anwendungen.
