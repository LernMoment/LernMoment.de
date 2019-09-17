---
layout: post
title: "UPDATE: C# Tutorial Deutsch - Erste Schritte (VisualStudio 2019)"
excerpt: "Erstelle Schritt für Schritt deine erste C#-Anwendung mit Visual Studio 2019 Community Edition."
categories: csharp-tutorial-deutsch
lernmoment: C#
lm-newsletter-group-id: 1
show-lm-newsletter-subscribe-box: true
share: false
tags: [Tutorial, C#, Video]
image:
  feature: csharp-tutorial-feature.jpg
modified:
date: 2019-09-17T06:00:00+01:00
---

> Schau dir auch die weiteren Folgen des [C# Tutorial Deutsch](/csharp-tutorial-deutsch/) an.

Die ersten Schritte in Visual Studio können ganz schön kompliziert sein. In diesem Tutorial zeige ich dir Schritt für Schritt was du tun musst um deine erste C#-Anwendung mit **Visual Studio 2019** Community Edition zu erstellen. Dabei starten wir mit der Installation und hören auf mit einer fertigen (kleinen) Anwendung.

*Hinweis:* Da das Video etwas lang geworden ist, kannst du direkt zu den einzelnen Teilen springen. Die entsprechenden Links sind in der [Videobeschreibung auf YouTube](https://youtu.be/xhD1HCVj5V0) verfügbar.

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/xhD1HCVj5V0?rel=0" frameborder="0" allow="encrypted-media" allowfullscreen></iframe>

Egal ob du in deinem Beruf weiterkommen möchtest, im Studium mit den Informatikvorlesungen nicht zurecht kommst oder einfach für dich Programmieren lernen möchtest, in diesem kostenlosen C# Tutorial in Deutsch erfährst du alles, was du brauchst um deine erste (kleine) Anwendung zu erstellen. 

Schritt für Schritt zeige ich dir wie du Visual Studio 2019 in der Community Edition installierst, damit dein erstes Projekt erstellst, was Quellcode ist, wie du Quellcode in C# schreibst, wie Quellcode kompiliert wird, was kompilieren überhaupt bedeutet und wie du deine eigene Anwendung in der Konsole ausführst. 

<div class="subscribe-notice">
<h5>Lerne alles über C# und professionelle Softwareentwicklung</h5>
<a markdown="0" href="https://einstieg-in-csharp.lernmoment.de/vs2019-tutorial/" class="notice-button">Hier geht's zum Online-Kurs "Einstieg in C#" (inkl. Rabatt ;) >></a>
</div>

### Weitere Links

 - [Visual Studio 2019](https://www.visualstudio.com/de) - kostenlose Community Edition.
 - [Offizielle Installationsanleitung](https://docs.microsoft.com/de-de/visualstudio/install/install-visual-studio) - hier hat Microsoft im Detail beschrieben was du bei der Installation machen und beachten sollst. Habe ich dir im Video aber soweit alles erklärt.
 - [Neues in Visual Studio 2019](https://docs.microsoft.com/de-de/visualstudio/ide/whats-new-visual-studio-2019?view=vs-2019) - Artikel von Microsoft, der die wichtigsten Funktionalitäten in der aktuellen Version beschreibt.
 - [Offline Installation](https://docs.microsoft.com/de-de/visualstudio/install/create-an-offline-installation-of-visual-studio?view=vs-2019) - beschreibt wie die benötigten Komponenten von Visual Studio 2019 runtergeladen werden können und dann vorbereitet werden um sie auf einem Rechner ohne Internetverbindung zu installieren. Diesen Artikel gab es auch in Deutsch, aber momentan ist er nur auf Englisch verfügbar.

### Der komplette Quellcode für diese Folge:

```cs
using System;

namespace HelloWorld
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hallo Welt");

            Console.WriteLine("Anwendung wird beendet durch drücken von 'Enter'!");
            Console.ReadLine();
        }
    }
}
```


Viel Erfolg für deine C# Anwendung

Jan
