---
layout: post
title: "Wie du fremden Quellcode analysieren kannst."
excerpt: "Im Kontext von #FragLernMoment habe ich gezeigt wie ich mich in fremden Quellcode einarbeite."
categories: csharp-tutorial-deutsch
lernmoment: C#
lm-newsletter-group-id: 1
show-lm-newsletter-subscribe-box: true
share: false
tags: [Debugging, C#, Video, Tutorial]
image:
  feature: csharp-tutorial-feature.jpg
modified:
published: false
date: 2016-12-22T07:00:00+01:00
---

> Schau dir auch die weiteren Folgen des [C# Tutorial Deutsch](/csharp-tutorial-deutsch/) an.

Den Teilnehmern meines Kurses ["Einstieg in C# - Software programmieren wie ein Profi"](/einstieg-sharp/) biete ich die Aktion *#FragLernMoment* an. Das bedeutet, dass sie im Diskussionsforum eine Frage stellen können. Diese beantworte ich natürlich schriftlich, aber pro Woche gebe ich die Antwort zu einer Frage auch per Video.

Diese Folge des *C# Tutorial Deutsch* ist genau solch ein Video. Darin zeige ich dir wie ich einen für mich fremden Quellcode analysiere um ihn zu verstehen. Die Frage dazu kam von einem Kursteilnehmer der einen [fremden Quellcode zum *Invertieren einer Zeichenkette*](https://gist.github.com/suchja/38996c238cd6c3209f63ad5e65e3bcd6) hatte und sich nicht sicher war ob er ihn richtig verstanden hatte.

Alles weitere erfährst du hier im Video:

<iframe width="560" height="315" src="https://www.youtube.com/embed/2HDA11673pU" frameborder="0" allowfullscreen></iframe>

<div class="subscribe-notice">
<h5>Du willst die Grundlagen und Konzepte von professioneller Entwicklung mit C# lernen?</h5>
<a markdown="0" href="https://www.udemy.com/course/einstieg-in-csharp-software-programmieren-wie-ein-profi/?couponCode=UCSK_N150_LM-ALL" class="notice-button">Hier geht's zum Online-Kurs "Einstieg in C#" >></a>
</div>

### Quellcode analysieren - Die wichtigsten Schritten

Fremden Quellcode verstehen ist eigentlich nicht schwer, aber es braucht etwas an Erfahrung. Daher ist es also wichtig, dass du es übst! Geh auf [Stackoverflow](https://www.stackoverflow.com) oder [GitHub](https://github.com), such dir dort einen Quellcode der dich interessiert und versuche ihn zu verstehen.

Das ganze geht (für mich) am einfachsten, wenn du *"oben"* anfängst. Such dir also den Einsprungpunkt in die Anwendung (z.B. die `Main` Methode bei einer Konsolenanwendung) und beginne dort deine Reise in den Quellcode.

Bei der Methode, die du als am wichtigsten ansiehst, gehst du nun Zeile für Zeile durch. Dabei versuche ich zu vermeiden in andere Methoden die aufgerufen werden rein zu springen. Ich bleibe also in der aktuellen Methode und treffe annahmen was die von dort aufgerufenen Methoden wohl machen.

So bekomme ich erstmal einen Eindruck was in der für mich wichtigen Methode überhaupt alles passiert. Wenn ich am Ende der Methode angekommen bin, dann kann ich mir überlegen welche der aufgerufenen Methoden für mich am interessantesten ist.

So kann ich Schritt für Schritt einen allgemeinen Überblick bekommen und kann mir die Stellen die mich besonders interessieren genauer anschauen.

Viel Erfolg beim Verstehen von fremden Quellcode

Jan
