---
layout: page
title: "Lösungstipp #1 - Fokus auf kleine Schritte"
excerpt: "Unterteile eine Programmieraufgabe in einzelne Bestandteile und löse jede separat für sich."
search_omit: true
image:
  feature: 
modified:
lm-newsletter-group-id: 1
date: 2017-12-06T09:30:00+01:00
---

Um die komplette Aufgabe lösen zu können, musst du unterschiedliche Teilaufgaben erledigen. Daher macht es Sinn, dass du diese Teilaufgaben identifizierst und dann jede einzelnd (und fokussiert) erledigst. Hier hinter steht das allgemeine Prinzip *"Teile und Herrsche"*. D.h. es geht einfacher, wenn du eine komplexe Aufgabe solange in einzelne Teilaufgaben unterteilst, bis jede Teilaufgabe *"einfach"* umzusetzen ist.

Ich habe beispielsweise gesehen, dass ich die Übung in zwei Bereiche unterteilen kann:

 1. Interaktion mit dem Benutzer - hierbei geht es darum, dass ich den Text vom Benutzer erfrage, ihm den verschlüsselten Text anzeige und dann warte bis er die Anwendung beendet.
 2. Text verschlüsseln - dieses ist die eigentliche Aufgabe, welche wiederum aus weiteren Teilaufgaben besteht: Text in Großbuchstaben konvertieren, Umlaute "entfernen", Zahlen und Sonderzeichen ignorieren und schließlich alle Buchstaben um 13 Stellen verschieben.

Nun kann ich die einzelnen Bereiche und Teilaufgaben komplett los gelöst von einander umsetzen. Das ist wichtig, damit ich mich immer nur auf einen kleinen Teil konzentrieren kann und mich nicht von anderen Teilaufgaben ablenken lasse.

Damit ich das große Ganze im Auge behalte schreibe ich mir die einzelnen Schritte als Kommentare direkt in den Quelltext. Nun kann ich für jede Teilaufgabe unterhalb des entsprechenden Kommentars den passenden Quelltext schreiben. Damit habe ich nicht nur die Lösung und eine Dokumentation, sondern wenn ich später den Quelltext umstruktiere, kann ich anhand dieser Kommentare sehen wo potentielle Methoden sind.

## Vorgehen zur Lösung von Teilaufgaben

Nun sind zwar einzelne Bereiche identifiziert und Teilaufgaben vorhanden, doch wie geht es weiter?

Damit du dich nicht verzettelst ist es hilfreich, wenn du dir eine gewisse Routine angewöhnst. Bei mir geht das wie folgt:

 1. Lösung überlegen
 2. Quellcode schreiben
 3. Ausführen (Kompilieren und Starten) um Änderungen zu testen
 4. Änderungen in die Versionsverwaltung packen

Wie du sehen kannst habe ich hier nicht nur die Erstellung der Lösung drin, sondern auch die Überprüfung. Dieses ist mir sehr wichtig, weil ich versuche nie eine nihct lauffähige Version in der Versionsverwaltung zu haben.

Dieses Vorgehen gibt mir Sicherheit, weil ich immer genau weiß was der nächste Schritt ist. Außerdem erlaubt es mir (vorausgesetzt die Aufgabe ist wirklich klein) immer in kleinen Zeiteinheiten zu arbeiten. So fällt es mir leichter Unterbrechungen zu verkraften, weil ich immer weiß wo ich gerade war.

<br/>

<div class="subscribe-notice">
<h5>Lerne alles über C# und professionelle Softwareentwicklung</h5>
<a markdown="0" href="https://www.udemy.com/einstieg-in-csharp-software-programmieren-wie-ein-profi/?couponCode=UCSK_LM2016-110" class="notice-button">Hier geht's zum Online-Kurs "Einstieg in C#" (inkl. Rabatt ;) >></a>
</div>
