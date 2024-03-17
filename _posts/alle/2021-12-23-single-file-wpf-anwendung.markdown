---
layout: post
title: "Anwendungen als einzelne Exe-Datei verpacken"
excerpt: ".NET 5 / 6 bieten einige Möglichkeiten eine Anwendung zu verpacke. 2 stelle ich dir in diesem Artikel vor."
categories: alle
lernmoment: C#
lm-newsletter-group-id: 1
banner: /lernmail-kurse/wpf-tictactoe-fuer-einsteiger/
share: false
show-lm-newsletter-subscribe-box: false
tags: [WPF, XAML, Controls]
image:
  feature: banner/lernmoment-csharp.jpg
modified:
date: 2021-12-23T09:00:09+01:00
---

Mmmmmoin und willkommen zu deinem LernMoment!

Bereits in .NET Core hat Microsoft erkannt, dass es nicht immer eine Installationsroutine benötigt, um eine Anwendung für andere Personen bereitzustellen. Nachdem in .NET 5 nochmals einige Verbesserungen für das *"single-file deployment"*, also die Bereitstellung deiner Anwendung in einer einzigen Exe-Datei, gemacht wurden, ist es nun Zeit, dass wir uns das Ganze mal anschauen. Natürlich ist folgendes mit .NET 6 und Visual Studio 2022 getestet. Du kannst also direkt eine Anwendung nach diesem Vorgehen erstellen.

### *Single File* oder *framework-dependent*?


- Single File deployment verfügbar seit .NET Core 3.0. Ab .NET 5 in einer verbesserten Version, die nicht erst alle Dateien aus der Anwendung entpacken muss um sie zu starten.
- [framework-dependent deployment model](https://docs.microsoft.com/en-us/dotnet/core/deploying/#publish-framework-dependent): erstellt eine kleinere Anwendung, die **nicht** die .NET runtime mitbringt. Diese muss auf dem Zielrechner separat installiert werden. Dafür ist diese Variante cross-platform tauglich. Es wird eine dll erzeugt und für jede ausgewählte Zielplatform (windows, macos, ...) ein entsprechendes Executable (welches letztlich wohl nur ein `dotnet ....dll` ausführt).
- self-contained applications: 

Natürlich kannst du auch eine Anwendung mit Oberfläche (z.B. in WindowsForms, WPF oder WinUI) in dieser Art und Weise verpacken. Du möchtest eine "kleine" kostenlose Übung machen, in der du lernst wie du eine Anwendung mit Oberfläche in WPF und C# erstellst? Da habe ich was für:

<div class="subscribe-notice">
<h5>Melde dich hier zum kostenlosen WPF Übungskurs für Einsteiger an.</h5>
<a markdown="0" href="{{ site.url }}/lernmail-kurse/wpf-tictactoe-fuer-einsteiger/" class="notice-button">Erfahre mehr >></a>
</div>

Viel Spaß auf deinem Weg vom Einsteiger zum C# Entwickler

Jan von LernMoment.de
