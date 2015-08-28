---
layout: post
title: Tastatureingabe an ICommands Binden
excerpt:
categories: csharp-programmieren
lernmoment: C#
lm-newsletter-group-id: 2
tags: []
image:
  feature: csharp-programmieren.jpg
modified:
date: 2015-08-29T06:00:00+02:00
---

Das du Benutzereingaben vom View zum ViewModel deiner WPF-Anwendung über `ICommand` schicken kannst, habe ich bereits im LernMoment [Command.CanExecute](/csharp-programmieren/command-canexecute/) beschrieben. Seit WPF 4.0 (veröffentlicht mit .NET 4.0) kannst du mit wenigen XAML-Anweisungen eine Taste an dein `Command` binden.

Die WPF Bedienelemente erben alle von `System.Windows.UIElement`. Diese Klasse bietet die für diesen Zweck die relevante Eigenschaft `InputBindings`. Dabei handelt es sich um eine Auflistung von Instanzen der Klasse `InputBinding` bzw. Instanzen der von ihr abgeleiteten Klassen `KeyBinding` oder `MouseBinding`.

Wenn du beispielsweise ganz allgemein eine Tastenkombination (wie Ctrl+O) zum Öffnen einer Datei oder ähnliches an deiner Anwendung definieren willst, dann kannst du das wie folgt machen:

```xml
<Window>
	<InputBindings>
		<KeyBinding Gesture="Ctrl+O" Command="{Binding OpenCommand}" />
	</InputBingings>
</Window>
```


Jetzt erstmal viel Spaß mit

Jan

### Merke

-	

### Lernquiz 

Verwende folgende Fragen, um das Gelernte von heute zu festigen:

-	

Am besten schaust du dir morgen und dann nochmal in ein paar Tagen die vorherigen Fragen an und beantwortest sie, ohne den Text vorher gelesen zu haben.

### Weitere Informationen

-	Den kompletten Quelltext zum heutigen Lernmoment findest du [hier](https://github.com/LernMoment/csharp/tree/master/tbd).

