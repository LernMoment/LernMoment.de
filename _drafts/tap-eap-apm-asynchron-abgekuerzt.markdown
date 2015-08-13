---
layout: post
title: Asynchron Abgekuerzt: APM, EAP und TAP
excerpt: Wann du welchen Ansatz zur asynchronen Ausführung verwendest.
modified:
categories: csharp-programmieren
lernmoment: C#
lm-newsletter-group-id: 2
tags: [Konzept, Async]
image:
  feature: csharp-programmieren.jpg
date:
---

Je nach Zählweise, gibt es mindestens 6 verschiedene Technologien / Muster / Ansätze innerhalb von .NET, wie Aufgaben parallel ausgeführt werden. Dazu gibt es noch wesentlich mehr Klassen. Da dir die verschiedenen Ansätze an vielen Klassen innerhalb .NET begegnen, solltest du wissen wie sie zusammen hängen.

Die Basis von allem ist ["Managed Threading"](https://msdn.microsoft.com/de-de/library/3e8s7xdd(v=vs.110).aspx). Diese Technologie wurde bereits mit der ersten Version von .NET eingeführt und bildet die Grundlage für alles weitere. Die wichtigsten Klassen dieser Technologien findest du im Namensraum `Sytem.Threading`.

Die "Managed Threading" Technologie wurde von vielen Entwicklern als sehr kompliziert in ihrer Verwendung angesehen. Außerdem ist zu berücksichtigen, dass ein verwalteter Thread (managed Thread) nicht gleich einem Thread im Betriebssystem ist. Dies macht den Umgang noch komplizierter.

Um die Verwendung zu vereinfachen wurde das ["Asynchronous Programming Model (APM)"](https://msdn.microsoft.com/de-de/library/ms228963(v=vs.110).aspx) eingeführt. Das "APM" verwendet "Managed Thread" und eignet sich um eigene Methoden asynchron aufzurufen. Zusätzlich wurden in .NET viele synchrone Methoden mit asynchronen Methoden nach "APM" ergänzt.

Du erkennst asynchrone Methoden nach "APM" daran, dass `IAsyncResult` verwendet wird und das es eine `Begin...` Methode und eine `End...` Methode gibt. Die Klasse `FileStream` stellt zum Beispiel die Methoden `BeginRead` und `EndRead` zur Verfügung. Die Idee bei "APM" ist, dass du mit der `Begin...` Methode einen Thread startest in dem die jeweilige Aufgabe ausgeführt wird. Bei `FileStream.BeginRead` also das lesen aus der Datei. Mit der `End...` Methode kannst du dann später das Resultat abholen. Dabei kann sowohl per Polling als auch mit Callback auf die asynchrone Methode gewartet werden.

Nach "APM" wurde das ["Event-based Asynchronous Pattern (EAP)"](https://msdn.microsoft.com/de-de/library/ms228969(v=vs.110).aspx) eingeführt. Ab .NET 2.0 (bis .NET 4.5) empfiehlt Microsoft das "EAP" dem "APM" vorzuziehen (mit wenigen Ausnahmen).

Auch beim EAP wurden einige synchrone Methode mit asynchronen ergänzt. So bietet beispielsweise die Klasse `WebClient` die für "EAP" typischen `...Async` Methoden und das dazugehörige Event `...Completed` an. Die `WebClient.DownloadDataAsync` Methode startet einen Thread. Wenn die entsprechende Aufgabe abgearbeitet ist, in diesem Fall also die Daten geladen sind, dann wird das Event `WebClient.DownloadDataCompleted` ausgelöst.

Sowohl "APM" wie auch "EAP" wurden in .NET 4.5 durch das ["Task-based Asynchronous Pattern (TAP)"](https://msdn.microsoft.com/de-de/library/hh873175(v=vs.110).aspx) abgelöst. Dieses verwendet nicht mehr direkt Threads, sondern basiert auf Tasks, welche mit der ["Task Parallel Library (TPL)"](https://msdn.microsoft.com/de-de/library/dd460717(v=vs.110).aspx) in .NET 4.0 eingeführt wurden.

Methoden nach dem "TAP" erkennst du daran, dass sie `Task` oder `Task<T>` zurückgeben. Außerdem sollten sie nach Vorgabe von Microsoft `...Async` oder `...TaskAsync` genannt werden. Wenn du dir mal die Methoden von `WebClient` anschaust, wirst du erkennen, dass es dort Methoden nach "EAP" und "TAP" gibt. Zu "TAP" gehört zum Beispiel `DownloadDataTaskAsync`.

Wichtig bei dem ganzen ist, dass du die verschiedenen Ansätze erkennen und zuordnen kannst. Wenn du unter .NET 4.5 oder neuer arbeitest, dann solltest du möglichst immer "TAP" verwenden. Dies ist auch am einfachsten. Solltest du über Klassen stolpern, die noch "APM" oder "EAP" verwenden, dann kannst du sie recht einfach [nach "TAP" migrieren](https://msdn.microsoft.com/de-de/library/hh873178(v=vs.110).aspx).

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

