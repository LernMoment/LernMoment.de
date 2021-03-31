---
layout: page
title: "LernMail 6/21 - .NET-Technologien für die GUI Entwicklung"
excerpt: ""
search_omit: true
image:
  feature: banner/lernmoment-csharp.jpg
modified:
date: 2021-03-31T09:30:00+01:00
---

Mmmmmoin und willkommen zu deiner LernMail!

Die grafische Benutzerschnittstelle (GUI - Graphical User Interface) ist eines der wichtigsten Elemente von vielen Anwendungen. Alleine für Windows-Anwendungen hat Microsoft mittlerweile einige Technologien im Angebot. In dieser LernMail möchte ich dir einen kleinen Einblick geben welche Technologien es gibt und welche du lernen solltest.

### Welche Technologien gibt es?

Im Laufe der verschiedenen Versionen von .NET (eine Übersicht dieser gab es in LernMail 1/21) hat Microsoft unterschiedliche Technologien für die Entwicklung von Oberflächen etabliert:
 - *Windows Forms **(WinForms)*** - [*WinForms*](https://docs.microsoft.com/de-de/dotnet/desktop/winforms/windows-forms-overview?view=netframeworkdesktop-4.8) ist die erste Technologie für Oberflächenentwicklung, die in .NET verfügbar war. Sie wird auch heute noch von Microsoft gepflegt und hat eine große Anhängerschaft in der Community. Aus meiner Sicht eignet sie sich besonders gut für die Erstellung eines schnellen Prototypen.
 - *Windows Presentation Foundation **(WPF)*** - [*WPF*](https://docs.microsoft.com/de-de/visualstudio/designers/getting-started-with-wpf?view=vs-2019) wurde entwickelt um die Arbeit zwischen Entwicklern (verantwortlich für die Logik) und Designern (verantwortlich für das Aussehen) bessern zu trennen und Oberflächen attraktiver zu machen. So gibt es hier umfassende Möglichkeiten das Aussehen der Oberfläche zu verändern. Allerdings ist WPF auch schwerer zu lernen als *WinForms*.
 - *Universal Windows Platform **(UWP)*** - [*UWP*](https://docs.microsoft.com/de-de/windows/uwp/get-started/universal-application-platform-guide) zielt darauf ab Anwendungen zu entwicklen die über den Microsoft Store veröffentlicht werden und verschiedene Geräte-Klassen (z.B. XBox, HoloLens, Tablets, ...) unterstützen.
 - *Windows UI Library **(WinUI)*** - [*WinUI*](https://docs.microsoft.com/de-de/windows/apps/winui/) ist aktuell noch in der Entwicklung. Es wird zukünftig *Controls* bereit stellen die das [Fluent Design System](https://www.microsoft.com/design/fluent/#/) umsetzen. Damit erhält deine Anwendung das "typische" Windows 10 Aussehen. Im Vordergund steht bei WinUI das es auf allen (Win10) Geräten läuft und eine bessere Performance bietet. Laut Microsoft ist dies die Technologie für alle zukünftigen Anwendungen mit Windows 10 als Betriebssystem.
 - *Xamarin* - [*Xamarin*](https://docs.microsoft.com/de-de/xamarin/get-started/) ist die Technologie, die es dir erlaubt mithilfe von C# Anwendungen für iOS und Android zu entwickeln. Der Fokus liegt darauf mit möglichst wenig (doppeltem) Aufwand eine mobile Anwendung zu entwickeln die sowohl unter iOS wie auch unter Android verwendet werden kann.
 - *Uno Platform* - [*Uno*](https://platform.uno/docs/articles/intro.html) setzt auf *Xamarin* auf und bietet die Möglichkeit einen Großteil des Quellcodes zwischen mobile Apps (iOS und Android) und Web-Apps (WebAssembly) auszutauschen. Es ist also eine Art Erweiterung zu Xamarin um auch das Web zu bedienen. Diese Technology kommt allerdings nicht direkt von Microsoft, sondern ist ein eigenständiges Open Source Projekt.
 - *MAUI Platform* - [*MAUI*](https://devblogs.microsoft.com/dotnet/introducing-net-multi-platform-app-ui/#:~:text=Single%20Project%20Developer%20Experience.NET%20MAUI%20is%20built%20with,into%20a%20single%20project%20to%20target%20multiple%20platforms.) ist die Weiterentwicklung von *Xamarin.Forms* welches zukünftig nicht nur iOS und Android unterstützen soll, sondern auch Windows und macOS. Allerdings ist diese Technologie aktuell noch in der Entwiclung und wird voraussichtlich nicht vor 2022 veröffentlicht.

Dieses ist nur ein ganz kurzer Einstieg in die verschiedenen Technologien. Beachten solltest du, dass sich nicht alle dieser Technologien auf der gleichen Ebene befinden. Beispielsweise werden *UWP, WPF und WinForms* als Platformen bezeichnet die eigene Controls (Steuerelemente wie *Buttons*) mitbringen. Anders ist es bei WinUI. Obwohl auch hier wieder eigene Controls definiert sind, kann *WinUI* von jeder der gerade genannten Platformen genutzt werden. Darüberhinaus kann *WinUI* auch jetzt schon in *Uno* und zukünftig auch in *MAUI* verwendet werden.

Microsoft hat [hier](https://docs.microsoft.com/de-de/windows/apps/desktop/choose-your-platform) eine Art Leitfaden zur Auswahl der passenden Technologie. Brauchst du weitere Unterstützung bei der Auswahl der passenden Technologie? Dann [schreib mir deine konkrete Frage](mailto:jan@lernmoment.de) und ich werde darauf in einer der nächsten LernMails eingehen.

### Was solltest du lernen?
Wie du der Auflistung entnehmen kannst, sind die unterschiedlichen Technologien mehr oder weniger gut für unterschiedliche Einsatzbereiche geeignet. Daher kann ich leider keine klare Empfehlung geben welches die richtige Technologie für dich ist.

Wichtig ist, dass *XAML* (eine auf xml basierte Beschreibungssprache für Oberflächen) im Mittelpunkt all dieser Technologien steht, mit Ausnahme von *WinForms*. Egal für welche der Technologien du dich entscheidest, *XAML* wird dich immer begleiten. Auch wenn es in den unterschiedlichen Technologien einen jeweiligen Dialekt von XAMl gibt.

Daher würde ich dir die Empfehlung geben dich nach dem von dir bevorzugten Anwendungsgebiet zu entscheiden. Auch wenn ich manchmal das Gefühl habe, dass *UWP* schon relativ tot ist, sind die aktuellen Bemühungen von Microsoft doch so, dass *UWP* immer eine wichtige Rolle spielt. Möchtest du also eine Anwedung entwickeln die über den Microsoft Store "vertrieben" wird, dann ist *UWP* eine gute Wahl. Für "klassische" Anwendungen kann ich nach wie vor *WPF* empfehlen. Insbesondere mit der Möglichkeit *WinUI* zu verwenden, ist WPF auch zukünftig gut aufgestellt. Machst du das ganze eher zum Hobby und das Aussehen ist dir nicht ganz so sicher? Dann solltest du wahrscheinlich am besten mit *WinForms* anfangen.

Wenn du einfach erstmal eine Technologie ausprobieren möchtest um eine erste Idee zu bekommen, kann ich dir meinen [WPF-Übungskurs](https://www.lernmoment.de/lernmail-kurse/wpf-tictactoe-fuer-einsteiger/) empfehlen. Darin entwickeln wir gemeinsam eine kleine Anwendung in *WPF* und du lernst die Grundlagen der Oberflächenentwicklung.

Hast du schon eine Idee mit welcher Technologie du zukünftig entwickeln möchtest? Hast du spezifische Fragen zu einer oder mehreren? [Dann schreib mir eine kurze Mail](mailto:jan@lernmoment.de). So kann ich zukünftig die Inhalte der LernMail noch besser auf dich anpassen.

Nun wünsche ich dir erstmal ein wunderschönes Oster-Wochenende!

Viel Spaß beim Ostereier suchen (das ist in Bielefeld besonders schwierig, weil Bielefeld gibt es ja gar nicht ;)

Jan von [LernMoment.de](https://www.lernmoment.de)
