---
layout: post
title: "Die wichtigsten Fenster in Visual Studio 2019 kennenlernen"
excerpt: "Erfahre das Wichtigste zum Editor, Eigenschaftenfenster, Projektmappenexplorer, Fehlerliste und mehr in aller kürze."
categories: csharp-tutorial-deutsch
lernmoment: C#
lm-newsletter-group-id: 1
share: false
show-lm-newsletter-subscribe-box: true
tags: [Werkzeug, Visual Studio]
image:
  feature: lernmoment-vs-banner.jpg
modified:
date: 2020-03-02T13:13:09+01:00
---

Der erste Start von Visual Studio 2019 kann schon etwas irritierend sein. Nachdem du dich für eine von vielen Projektvorlagen entschieden hast, werden dir viele Fenster angezeigt die für dich vielleicht erstmal keinen Sinn machen.

Im folgenden erkläre ich dir als Einsteiger in Visual Studio und C# welches die wichtigsten Fenster sind und was sie bedeuten. Wenn du eher der visuelle Mensch bist oder mehr Details brauchst, dann kannst du dir auch mein [Visual Studio 2019 Tutorial auf YouTube](https://youtu.be/xhD1HCVj5V0?t=1337) anschauen. Darin zeige ich dir die Fenster ~~am offenen Herzen~~ direkt in Visual Studio.

Hier ein Überblick über die Fenster und deren Funktionen die ich am wichtigsten finde:
  - **Editor** - Offensichtlich DAS wichtigste Fenster überhaupt. Hier gibst du deinen Quellcode ein. Dabei unterstützen dich Funktionen wie das **Refactoring** (vom einfach Umbenennen von Methoden bis hin zum automatischen Erstellen von Methoden aus markiertem Quellcode), die **vertikale Scrolleiste (Bildlaufleiste)** (zeigt dir Änderungen, Fehler, Breakpoints und sogar eine "Lupe" zur schnellen Navigation in der Datei) und **CodeLens / Tastaturkürzel zur Navigation**. Einen Überblick über diese und weitere Funktionen vom Editor findest du in [diesem Artikel von Microsoft](https://docs.microsoft.com/de-de/visualstudio/ide/writing-code-in-the-code-and-text-editor?view=vs-2019).
  - **Eigenschaftenfenster** - Dieses ist insbesondere dann relevant, wenn du eine Oberfläche z.B. mit WPF oder WinForms erstellst. Dann hilft es dir einen ersten **Überblick zu Eigenschaften und Events** zu bekommen (siehe dazu mein aktuelles [Einstieg in WPF Tutorial](https://www.youtube.com/playlist?list=PLP2TrPpx5VNk2g07AKxyIGdsUJNA95CDt)). Aber auch bei anderen Projekten nutze ich gerne die Möglichkeit mir den **Pfad einer Datei** anzusehen oder zu bestimmen ob eine **Datei ins Ausgabeverzeichnis kopiert** werden soll (siehe dazu das Video [Text-/XML-Datei in VisualStudio einbinden](https://youtu.be/874NuVyFg7I)).
  - **Projektmappenexplorer** - Dieses Fenster nutze ich neben dem Editor am meisten. Mir gibt es einen guten **Überblick über die Projektstruktur** (ein wichtiger Bestandteil der Softwarearchitektur), hier ist für mich der Einsprungpunkt zur Verwaltung von externen Bibliotheken via NuGet (siehe [dieser Artikel (inkl. Video)](https://www.lernmoment.de/alle/warum-nuget/) für Details) und ich lasse mir von hier häufig den Änderungsverlauf einer Datei anzeigen.
  - **Fehlerliste** - Die Fehlerliste ist eines der Hauptausgabefenster des Compilers (hier ein wirklich [super Artikel](https://www.imenja.io/die-microsoft-net-compiler-platform-roslyn-teil-1-grundlagen/) der dir einige Details zum Compiler erklärt). Ich nutze die Fehlerliste wenn ich mit einer Fehlermeldung nichts anfangen kann. Es gibt zu jedem Fehler den Link **Hilfe anzeigen**. Damit wird ein Browser geöffnet und die Suche gestartet direkt mit der Fehlermeldung. Weiterhin gibt es die Möglichkeit einen **Doppelklick auf einen Fehler** zu machen und so direkt an die passenden Stelle im Editor zukommen. Auch die Anzeige der Warnungen ist für mich immer relevant, weil ich versuche möglichst keine **Warnungen vom Compiler** zu haben. Denn obwohl die Anwendung trotzdem ausgeführt werden kann, ist jede Warnung eine potentielle Gefahrenquelle.
  - **Ausgabefenster** - Das Fenster in dem du sehen kannst wie die verschiedenen Tools (z.B. Compiler) aufgerufen werden. Ich benutze dieses Fenster aber auch teilweise zur Laufzeit. Denn hier findest du die **Ausgabe von `Debug.Writeline`**. Grundsätzlich empfehle ich die Verwendung eines "ordentlichen" Logs und natürlich des Debuggers, aber manchmal ist es wirklich hilfreich, wenn ich einfach mal kurz im Quellcode zur Laufzeit eine Ausgabe machen kann. Neben dieser Ausgabe findest du hier auch die **Ausgabe von `Git`**. Immer wenn du eine Aktion in der Quellcodeverwaltung über den Team-Explorer machst, wird "unter der Haube" `git` auf der Kommandozeile ausgeführt. Wenn es da mal zu Problemen kommt (was durchaus passiert), schaue ich immer zuerst in der Ausgabe ob ich weitere Hinweise finde.
  - **Teamexplorer** - Das Fenster für Aufgaben rund um die Quellcodeverwaltung. Ich benutze hier besonders intensiv die Möglichkeit **zwischen Branches zu wechseln** (dazu gibt es bald das *ultimative Git / GitHub mit Visual Studio 2019 Tutorial*), die aktuellen **Änderungen zu commiten** und natürlich mein lokales **Verzeichnis mit GitHub zu synchronisieren**.

Du hast Fragen zu Visual Studio die ich dir hier nicht beantwortet habe? Dann [schicke mir diese Frage per Mail](mailto:jan@lernmoment.de) oder stelle sie der kompletten LernMoment Community am [Community-Fragen GitHub Projekt](https://github.com/LernMoment/community-fragen/issues/new).

Viel Spaß auf deinem Weg vom Einsteiger zum C# Entwickler

Jan von LernMoment.de
