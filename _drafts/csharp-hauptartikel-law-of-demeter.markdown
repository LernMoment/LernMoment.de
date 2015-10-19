---
layout: post
title: CSharp-Hauptartikel - Law of Demeter
excerpt: Ein kompletter Artikel über das Law of Demeter
modified:
categories: csharp-programmieren
lernmoment: C#
lm-newsletter-group-id: 2
tags: [Konzept]
image:
  feature: csharp-programmieren.jpg
date: 2015-10-22T06:00:00+02:00
published: true
---

Um zukünftig mehr Inhalte für LernMomente und auch Artikel oder eBooks zu haben, werde ich zukünftig meine Recherche für LernMomente in Form eines umfangreicheren Artikels erstellen. Dazu möchte ich auch immer ein umfangreiches Beispielprojekt erstellen. Dieser Artikel beschäftigt sich mit dem *Law of Demeter*.

> Das "Law of Demeter" besagt, dass eine Methode f der Klasse C nur Methoden von den folgenden Entitäten aufrufen sollte:
>	- Klasse C
>	- Objekte erzeugt von f
>	- Objekte übergeben an f
>	- Objekte in Klassenattributen von C
>
> übersetzt aus Clean Code



### Weitere Informationen

-	Den kompletten Quelltext zum heutigen Lernmoment findest du [hier](https://github.com/LernMoment/csharp/tree/master/tbd).

