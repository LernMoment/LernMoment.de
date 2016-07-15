---
layout: post
title: "Zusatzübung #2 - Designalternativen / Designentscheidungen"
excerpt: "Finde Klassen in die die weitere Funktionalität integriert werden kann."
categories: csharp-challenge
lernmoment: C#
lm-newsletter-group-id: 8
show-lm-newsletter-subscribe-box: false
share: true
tags: [C#, "TTT", "Übung", Design]
image:
  feature: csharp-challenge.jpg
modified:
date: 2016-06-30T06:00:00+01:00
---

**Übungsfokus:** Design - Klassen identifizieren & Designalternativen beurteilen
**Geschätzte Übungsdauer:** ca. 15 - ??? Minuten

Auch bei dieser Übung aus dem Bereich Design handelt es sich wieder um eine Zusatzübung. Sie ist nicht so fokussiert und klar wie die Übungen in denen es um Syntax geht. Trotzdem ist sie nicht minder wichtig. Du trainierst mit ihr dein Gespür für die Strukturierung von Quellcode in Klassen. Das ist eine der wichtigsten Fähigkeiten überhaupt.

In meinem aktuellen Design habe ich neben dem Hauptprogramm (`Main`) die Klasse `Spielbrett`. Diese besteht nur aus Methoden und Attributen die `static` sind. Nun gilt es zu überlegen in welche Klasse(n) die kommenden Funktionalitäten integriert werden sollten:

 - Neustart - Ein Spieler kann anstelle einer Koordinate das Kommando `neustart` eingeben und es wird ein neues Spiel mit leerem Spielbrett gestartet.
 - Spielerwechsel - Sofern vom aktuellen Spieler ein gültiger Spielzug ausgeführt wurde, soll ein es einen Spielerwechsel geben.
 - Wiederholen eines Spielzugs - Wenn das Spielfeld auf welches der aktuelle Spieler seinen Stein setzen will bereits besetzt ist, oder wenn die Kooridinate kein gültiges Spielfeld ist, muss der Spielzug wiederholt werden.
 - Auswertung der Eingabe - Neben dem Kommando `neustart` gibt es noch das Kommando `ende` und die Eingabe eines Spielzugs (in Form von einer Koorindate). Die Eingabe des aktuellen Spielers muss also validiert (ist es überhaupt ein gültiges Kommando?) und ausgewertet (welches Kommando ist es?) werden.
 - Gewinner ermitteln - Nach einem erfolgreichen Spielzug muss ermittelt werden, ob es einen Gewinner gibt.
 - Unentschieden ermitteln - Nach einem erfolgreichen Spielzug muss ermittelt werden, ob es ein Unentschieden gibt.

Überlege in welche Klassen du diese Funktionalitäten integrieren würdest und gib eine Begründung warum du dich für die Lösung entschieden hast. Für die Beschreibung verwendest du am besten das Designdokument in deinem GitHub-Projekt an. 

**WICHTIG:** Ein ganz elementarer Bestandteil einer jeden Übung (wenigstens, wenn sie dich weiterbringen soll) ist [das Reflektieren](http://clean-code-developer.de/die-grade/roter-grad/#Taeglich_reflektieren). Wenn du die Aufgabe erledigt hast ziehe bitte eine Bilanz was die Aufgabe dir bezüglich deiner Fähigkeiten gezeigt hat. So kannst du einfach für dich erkunden in welchen Bereichen du noch mehr Aufgaben machen solltest und welche Bereiche du schon gut beherrschst. Du kannst gerne die Ergebnisse deiner Reflexion hier als Kommentar hinterlassen. Dann kann ich dir weitere Übungen empfehlen.

### Erweiterung der Übung für Fortgeschrittene

Auch diese Aufgabe kannst du in alle Richtungen erweitern. Hier ein paar Inspirationen:

 - Dokumentiere mehrere Designalternativen, bewerte jede für sich und leite daraus ab, was für dich die beste Lösung ist.
 - Definiere (nicht-funktionale) Anforderungen und begründe damit warum du dich für deine Lösung entschieden hast.
 - Male UML Diagramme (z.B. Klassen- und Sequenzdiagramme) für jede Designalternative.

### Artikel, Videos & Links zu dieser Aufgabe

Bei dieser Übung können dir die Ressourcen aus [Zusatzübung #1 - Klassen identifizieren / Domänenanalyse](/csharp-challenge/zusatzuebung-1-klassen-identifizieren/) so wie deine Antwort zu der gleichen Zusatzübung helfen.

### Lösung

Zu dieser Übung gibt es keine Auflistung der Schritte die du umsetzen kannst. Die wichtigsten Schritte habe ich bereits in [Zusatzübung #1 - Klassen identifizieren / Domänenanalyse](/csharp-challenge/zusatzuebung-1-klassen-identifizieren/) beschrieben. Basierend darauf kannst du Abläufe für die oben genannten Funktionalitäten erstellen. Zum Beispiel ist ein möglicher Ablauf für die Funktionalität *"Wiederholen eines Spielzugs"*:

 - Spieler gibt als Kommando die Koordinate `A0` ein
 - `Main` ruft die Methode `SpielzugAusfuehren` an einer Instanz der Klasse `Spiel` auf
 - Innerhalb von `SpielzugAusfuehren` wird die Instanz von `Spielbrett` benutzt um zu ermitteln ob `IstSpielfeldBesetzt(string koordinate)`.
 - Da dies der Fall ist wird `SpielzugAusfuehren` verlassen, ohne dass der Spielstein gesetzt und der Spielerwechsel ausgeführt wurde.

Für diese Übung gibt es keine Musterlösung. Meine [Designdokument](https://github.com/LernMoment/ttt-challenge/blob/master/Design.md) enthält meine Antworten zu den Fragen oben. Allerdings sehe ich es nicht als Musterlösung an, weil gerade beim Softwaredesign gibt es viele verschiedene Möglichkeiten und auch selten ein Richtig oder Falsch.

Du kannst dir gerne meine Lösung anschauen, aber lass dich davon nicht verunsichern, bezüglich deiner eigenen Lösung.

Viel Spaß beim Üben

Jan

PS: Wenn du noch nicht zur Challenge angemeldet bist, aber trotzdem teilnehmen möchtest und [die vielen Boni](/csharp-challenge/deine-vorteile-bei-anmeldung/) bekommen möchtest, dann melde dich schnell an! Unter anderem bekommst du **ein kostenloses Einzelcoaching** mit mir:

<div class="subscribe-notice">
  <h5>Hier unverbindlich und kostenlos anmelden:</h5>
    {% include lernmoment-subscribe.html %}
</div>
