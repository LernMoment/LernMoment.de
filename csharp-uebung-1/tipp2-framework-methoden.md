---
layout: page
title: "Lösungstipp #2 - Fertige Methoden im Framework"
excerpt: "Es gibt bereits sehr viele fertige Methoden im .NET Framework. Nutze sie!"
search_omit: true
image:
  feature: 
modified:
lm-newsletter-group-id: 1
date: 2017-12-11T09:30:00+01:00
---

Du brauchst das Rad nicht immer neu erfinden! Der Umfang des .NET Frameworks, also der vorgefertigten Funktionalitäten die Microsoft uns bereit stellt, ist schier unglaublich. Du kannst Übungen wie diese sehr gut nutzen um dein Wissen über die bestehenden Methoden auszubauen und vor allem diese auch direkt anzuwenden!

Für die Umsetzung der Teilaufgabe *Interaktion mit dem Benutzer* (siehe [Lösungstipp #1](/csharp-uebung-1/tipp1-kleine-schritte/)) wirst du wahrscheinlich alles notwendige kennen. Eine Funktionalität die in diesem Kontext relevant ist, ist [*String Interpolation*](/csharp-programmieren/mit-csharp-6-noch-mueheloser-werte-in-strings-einfuegen/). Diese habe ich im Video zu *Lösungstipp #1* verwendet.

Etwas spannender wird es bei der Teilaufgabe *Text verschlüsseln*. Dabei kannst du sehr gut einige der bestehenden Methoden des Datentyps `string` verwenden:

 - [`string.ToUpper()`](https://msdn.microsoft.com/de-de/library/ewdd6aed(v=vs.110).aspx) - konvertiert alle Zeichen eines `string` in Großbuchstaben.
 - [`string.Replace()`](https://msdn.microsoft.com/de-de/library/fk49wtc1(v=vs.110).aspx) - ersetzt alle Vorkommnisse eines Zeichens oder Zeichenkette mit einer anderen.

Wenn du dir die [komplette Beschreibung](https://msdn.microsoft.com/de-de/library/system.string(v=vs.110).aspx) des Datentyps `string` anschaust, wirst du feststellen, dass noch viele spannende Methoden enthalten sind die dir das Leben wesentlich leichter machen.

**WICHTIG:** Ein `string` kann nicht verändert werden (darum wird ein `String` als *immutable* bezeichnet - mehr dazu [hier](/csharp-tutorial-deutsch/der-datentyp-string/))! Daher geben die meisten Methoden der Klasse `string` den "neuen" `string` zurück.

## Beachte deinen Übungsfokus

Bei diesem Tipp möchte ich nochmals an deinen [Übungsfokus](/alle/ueben-mit-coding-katas/) erinnnern! Je nachdem was in deinem Fokus steht solltest du die existierenden Methoden verwenden oder eben auch nicht.

Möchtest du beispielsweise *das Vorgehen zur Lösung eines Problems* üben, dann bietet sich die Verwendung solcher Methoden an. Genauso würde ich die Methoden verwenden, wenn ich übe mit möglichst wenig oder mit möglichst ausdrucksstarkem Quellcode die Lösung zu erstellen. Anders wäre es schon, wenn du die absoluten Grundlagen übst. Dann wäre es schon spannend zu überlegen wie das `ToUpper` oder auch ein `Replace` händisch umgesetzt werden kann.

[Weiter zu Tipp #3](/csharp-uebung-1/tipp3-einzelne-zeichen/)

<br/>

<div class="subscribe-notice">
<h5>Lerne mehr über C# und professionelle Softwareentwicklung</h5>
<a markdown="0" href="https://www.udemy.com/course/einstieg-in-csharp-software-programmieren-wie-ein-profi/?couponCode=UCSK_O150_LM-ALL" class="notice-button">Hier geht's zum Online-Kurs "Einstieg in C#" (inkl. Rabatt ;) >></a>
</div>
