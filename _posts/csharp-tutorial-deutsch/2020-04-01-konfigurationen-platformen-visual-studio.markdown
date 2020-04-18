---
layout: post
title: "Visual Studio für Einsteiger: Debug, Release und AnyCPU"
excerpt: "Wofür gibt es den Konfigurations-Manager? Wann verwendest du Debug und wann Release? Was bedeutet Any CPU?"
categories: csharp-tutorial-deutsch
lernmoment: C#
lm-newsletter-group-id: 1
share: false
show-lm-newsletter-subscribe-box: true
tags: [Werkzeug, Visual Studio]
image:
  feature: banner/lernmoment-vs.jpg
modified:
date: 2020-04-01T09:13:09+01:00
---

Mmmmmoin und willkommen zu deinem LernMoment!

Wenn du dir die Oberfläche von *Visual Studio* (insbesondere rund um den `Starten` Button) schon etwas genauer angesehen hast, dann bist du vielleicht über die `Kombobox` mit dem Inhalt ***Debug*** gestolpert. Das ist eine von 2 Standardkonfigurationen für die Projektmappe. Neben *Debug* gibt es in der Kombobox noch die Möglichkeit ***Release*** und ***Konfigurations-Manager*** auszuwählen.

Über *Debug* und *Release* kannst du u.a. steuern wie gut der *Debugger* deine Anwendung ausführen kann. Mit *Debug* werden die für den *Debugger* notwendigen Informationen vom *Compiler* erzeugt und der erzeugte **Binärcode ist nicht optimiert**. Verwendest du jedoch *Release*, dann versucht der *Compiler* einiges an Optimierungen für deinen Code umzusetzen und damit ist an einigen Stellen das Debugging nicht mehr ohne weiteres möglich.

Etwas mehr Details zum Thema *Binärcode* und was der *Compiler* mit dem Quellcode macht habe ich [an dieser Stelle](https://youtu.be/xhD1HCVj5V0?t=1783) im [Visual Studio 2019 Tutorial](https://youtu.be/xhD1HCVj5V0?t=1783) erklärt.

Die von *Visual Studio* verwendeten *Compiler* sind bei der Optimierung von Code ziemlich gut. Daher empfehle ich auch, dass du deinen Quellcode so schreibst, dass er **aussagekräftig und gut lesbar** ist. Häufig bekomme ich zuhören, dass beispielsweise durch die intensive Verwendung von Methoden die Anwendung langsam wird. Das ist definitiv nicht der Fall. Wenn du die verwendete Konfiguration auf *Release* stellst, dann wird an vielen Stellen der Code aus einer Methode genommen und direkt in die aufrufende Methode kopiert (das wird als *Inlining* bezeichnet). Dabei entscheiden die Compiler anhand verschiedenster Parameter wo eine solche Optimierung Sinn macht und wo nicht.

Der letzte Eintrag ist dann ***Konfigurationsmanager***. Dieses ist ein separates Fenster in dem du für jedes *Projekt* einer *Projektmappe* festlegen kannst welche Konfiguration verwendet wird und auch für welche *Platform* das *Projekt* übersetzt werden soll. Neben den bereits vordefinierten Konfigurationen kannst du hier bei Bedarf auch eigene erstellen.

Bleibt noch die Frage was ist mit *Platform* gemeint und **wofür steht *Any CPU*?** Auch hier gibt es wie beim Thema *Optimierung* viele Details. Für den Start solltest du dir erstmal merken, dass *Any CPU* die "zuverlässigste" Variante ist. Mit *Any CPU* wird deine Anwendung so kompiliert, dass sie nach Möglichkeit als 64-Bit Prozess ausgeführt werden kann und wechselt zurück zu 32-Bit, wenn nur dieser Modus verfügbar ist (für weitere Optionen siehe [hier](https://docs.microsoft.com/de-de/dotnet/csharp/language-reference/compiler-options/platform-compiler-option)). Die gängigen Alternativen sind *x64* mit denen deine Anwendung nur als 64-Bit Prozess ausgeführt wird (und somit nicht als 32-Bit Prozess laufen kann) und *x86* womit deine Anwendung nur als 32-Bit Prozess ausgeführt wird.

In einigen Fällen musst du die Konfiguration explizit auf *x86* oder *x64* setzen. Das kann beispielweise dann der Fall sein, wenn du externe Bibliotheken einbindest die nur in einer bestimmten Version verfügbar sind. Womit wir auch schon beim nächsten Thema sind.

*Tipp für Fortgeschrittene: Möchtest du dich intensiver mit dem Thema Debug, Release und deren Bedeutung für das Debugging beschäftigen, dann kann ich dir [diesen Artikel empfehlen](https://benhall.io/c-debug-vs-release-builds-and-debugging-in-visual-studio-from-novice-to-expert-in-one-blog-article/). Er ist allerdings auf Englisch.*

Viel Spaß auf deinem Weg vom Einsteiger zum C# Entwickler

Jan von LernMoment.de
