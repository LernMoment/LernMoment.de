---
layout: page
title: "LernMail 1/21 - Vom .NET Framework über .NET Standard und Core zu .NET 5"
excerpt: "Schluss mit dem Verwirrspiel um die ganzen .NET Namen und Versionen!"
search_omit: true
image:
  feature: banner/lernmoment-csharp.jpg
lm-newsletter-group-id: 1
modified:
date: 2021-02-27T09:30:00+01:00
---

Mmmmmoin und willkommen zu deiner LernMail!

Wie du sicherlich bemerkt hast, gab es schon länger keine LernMail mehr. Das ändert sich nun. Es geht zurück zu der eigentlichen Ideen eines LernMoments. Dich erwartet also ein Thema rund um den "Weg vom Einsteiger zum C# Entwickler". Los gehts!

Eine Frage die ich insbesondere in meinen Kursen momentan häufiger bekomme ist: "Welche Projektvorlage (.NET Framework, .NET Core oder .NET) soll ich in Visual Studio verwenden?" Die schnelle Antwort dazu ist: "(fast immer) .NET". Die etwas längere Erklärung gibt es natürlich auch noch ;-).

Die Grundlage für alle Entwicklungen, die wir mit C# machen ist .NET. Neben der eigentlichen Laufzeitumgebung (*CLR - Common Language Runtime*) umfasst .NET mindestens eine Sammlung der grundlegenden Bibliotheken (*BCL - Base Class Library* also die Basisklassenbibliothek) und verschiedene App-Modelle (z.B. ASP.NET, WPF, ASP.NET Core, Xamarin.iOS, ...).

Die Entwicklung von .NET hat Microsoft bereits in den späten 90er Jahren gestartet. Das .NET Framework 1.0 wurde im Februar 2002 veröffentlicht. Wie du siehst geht die Historie von .NET ziemlich weit zurück (wenigstens für die IT ;). So ist es auch nicht verwunderlich, dass es bereits viele verschiedene Versionen von .NET gibt:
- *.NET Framework* - Dies ist die ursprüngliche Version von .NET welche von Microsoft explizit für Windows entwickelt wurde. Das .NET Framework hat viele Versionen von Windows überstanden. Die letzte Version ist das .NET Framework 4.8
- *.NET Core* - Im Jahre 2016 hat Microsoft parallel zum .NET Framework eine neue Version von .NET mit dem Namen .NET Core veröffentlicht. Die Idee von Microsoft war, dass .NET nicht nur auf Windows laufen soll, sondern auch auf anderen Geräten und vor allem Betriebssystemen. Insbesondere ab .NET Core 3.0 (die letzte offizielle Version ist 3.1) hat das ganze Fahrt aufgenommen.
- *Mono* - Einige Aspekte von .NET hat Microsoft früh als einen Standard veröffentlicht (ECMA-335). Das haben sich Entwickler von anderen Firmen und die Open Source Community bereits früh zu nutze gemacht und mit Mono eine freie und open-source Version von .NET erstellt. Dabei lag von Anfang an der Fokus auf cross-plattform Entwicklung. Daher war Mono immer ein wichtiger Bestandteil von Xamarin und wurde/wird auch von Xamarin (mittlerweile einem Tochterunternehmen von Microsoft) wesentlich voran getrieben. Neben dem cross-plattform Gedanken (Mono wird z.B. von GTK# verwendet) wird Mono auch im Bereich der Spieleentwicklung eingesetzt.

Wenn du mehr darüber lesen willst empfehle ich dir dazu einen Gastbeitrag auf meinem Blog:

[https://www.lernmoment.de/alle/warum-csharp-lernen-ueberblick-spieleframeworks](https://www.lernmoment.de/alle/warum-csharp-lernen-ueberblick-spieleframeworks) 

Die vielen verschiedenen Varianten und Versionen wurden im Laufe der Zeit nicht nur für Einsteiger, sondern auch für erfahrene Entwickler unübersichtlich und für Microsoft schwer zu warten. Somit wurde .NET 5 als .NET Core vNext vorgestellt. Daraus ergibt sich, dass .NET 5 eine Weiterentwicklung von .NET Core und nicht vom .NET Framework ist. Das macht Sinn, weil das .NET Framework nicht mehr weiterentwickelt wird. Was auch nicht schlimm ist, weil .NET Core nicht nur Linux und MacOS unterstützt, sondern natrülich auch Windows (ist ja cross-plattform ;).

Mit diesen Informationen sollte dir nun langsam klar sein warum du für neue Projekte am besten die Projektvorlagen mit .NET verwendest und nicht .NET Framework.

Solltest du mit der Entwicklung einer mobilen Anwendung über Xamarin.Forms liebäugeln, dann ist es noch wichtig, dass du den Begriff .NET Standard einordnen kannst. Auf dem Weg .NET für alle Plattformen und viele verschiedene Einsatzgebiete fit zu machen, hat Microsoft festgestellt, dass es nötig ist Bibliotheken zu entwickeln die auf allen .NET Varianten laufen. Daher wurde der .NET Standard definiert. Es ist sozusagen der kleinste gemeinsame Nenner zwischen allen .NET Varianten. Da .NET nun alles unterstützt ist .NET Standard eigentlich nicht mehr notwendig. Leider hat Microsoft jedoch Xamarin in .NET 5 noch nicht komplett umgesetzt (das ist eine der wesentlichen Änderungen die mit .NET 6 im November 2021 kommen soll). Daher siehst du aktuell beim Anlegen eines Xamarin.Forms Projekt noch den Hinweis, dass das allgemeine Projekt auf .NET Standard basiert.

Mehr zum Thema Bibliotheken erkläre ich dir auch in [diesem YouTube-Video](https://www.youtube.com/watch?v=xhD1HCVj5V0&t=1661s).

Ich hoffe dieser kleine Exkurs in die verschiedenen Varianten und Versionen von .NET hat dir etwas geholfen bei der Auswahl der "richtigen" Projektvorlage in Visual Studio. Es gibt zu den einzelnen Technologien und Begriffen noch wahnsinnig viel zu erzählen, aber ich möchte es ja kurz halten ;-). Wenn dich also etwas konkrete interessiert, würde ich mich über eine kurze Antwort auf diese LernMail von dir freuen.

Mehr zum Thema findest du unter folgenden Links:

- [https://devblogs.microsoft.com/dotnet/the-future-of-net-standard/](https://devblogs.microsoft.com/dotnet/the-future-of-net-standard/)
- [https://docs.microsoft.com/de-de/archive/msdn-magazine/2017/september/net-standard-demystifying-net-core-and-net-standard](https://docs.microsoft.com/de-de/archive/msdn-magazine/2017/september/net-standard-demystifying-net-core-and-net-standard)
- [https://devblogs.microsoft.com/dotnet/introducing-net-5/](https://devblogs.microsoft.com/dotnet/introducing-net-5/)


Ich freue mich darauf von dir zu hören.

Viele Grüße

Jan von [LernMoment.de](https://www.lernmoment.de)


<div class="subscribe-notice">
  <h5>Dir gefällt diese LernMail? Dann melde dich auch für die nächste an ;-)</h5>
	{% include lernmoment-subscribe.html %}
</div>