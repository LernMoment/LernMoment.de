---
layout: post
title: "Was bedeutet Debuggen?"
excerpt: "Beim Debugging geht es darum Syntaxfehler, Laufzeitfehler, Logikfehler und Ausnahmefehler zu beseitigen. Die Grundlagen und insbesondere wie du Haltepunkte (Breakpoints) verwendest, erfährst du in diesem Artikel."
categories: alle
lernmoment: C#
lm-newsletter-group-id: 1
show-lm-newsletter-subscribe-box: false
share: false
tags: [C#, Begriffe, Werkzeug]
author: daniel_gustorff
image:
  feature: csharp-programmieren.jpg
modified:
date: 2018-05-02T01:00:00+01:00
---

> Debuggen beschreibt in der Softwareentwicklung den Prozess der Fehlersuche.

Das Wort Debuggen kommt daher, dass es in der Frühzeit der Computer immer wieder vor gekommen ist, dass Käfer oder andere Kleintiere in den Computern herumgekrochen sind und dort zu Kurzschlüssen und damit Fehlverhalten geführt haben. Damals wurden zum Durchführen der Rechenoperationen Relais verwendet, die durch Tiere zusätzlich blockiert werden konnten. Es kam also zu Fehlern im Programmablauf durch Käfer (englisch Bugs). Um diese Fehler zu beseitigen, mussten die Tiere aus dem Gerät entfernt werden. Der Computer musste also Entkäfert (debugged) werden. Diese Bezeichnung hat sich bis heute für die Fehlersuche gehalten, auch wenn heute in der Regel keine Tiere mehr für die Fehler verantwortlich sind.

Wenn heute niemand mehr mit Lampen durch Computer krabbeln muss, was passiert dann, wenn es um Fehlerbeseitigung geht? 

Es gibt grob 2 Arten von Fehlern, die in der Softwareentwicklung vorkommen können. 

### Syntaxfehler

Bereits während der Entwicklung können Syntaxfehler auftreten. Diese Fehler führen dazu, dass der Code nicht kompiliert werden kann. Die meisten Entwicklungsumgebungen zeigen diese beim Kompilieren oder bereits während der Codeerstellung an. Dadurch ist es häufig nicht sehr aufwändig diese Fehler zu finden. VisualStudio unterstreicht fehlerhafte Eingaben zum Beispiel, um den Entwickler darauf hin zu weisen, dass hier ein Fehler vorliegt.

![Syntaxfehler im Quellcode]({{ site.url }}/images/was-bedeutet-debuggen/syntaxfehler-code.png)
{: .pull-left}

Hier fehlt das Semikolon am Ende der Zeile. Wenn man nun versucht den Code auszuführen, wird in der Fehlerliste ein Hinweis gegeben, dass ein Fehler vorliegt und um was für eine Art Fehler es sich handelt.

![Syntaxfehler iin Visual Studio]({{ site.url }}/images/was-bedeutet-debuggen/syntaxfehler-visualstudio.png)
{: .pull-left}

Durch diese Fehlermeldung ist es sehr einfach den Fehler zu beheben. Leider sind nicht alle Fehlermeldungen so eindeutig. Wodurch es auch beim Beheben von Syntaxfehlern die eine oder andere Schwierigkeit geben kann. Es gibt jedoch im Umfeld von VisualStudio auch die Möglichkeit eine Hilfe zu den Fehlermeldungen auf zu rufen, die bei der Behebung helfen können.

### Laufzeitfehler

Eine andere Fehlerart sind Laufzeitfehler. Wie der Name bereits sagt, treten diese Fehler erst zur Laufzeit auf. Hier kann man wiederum zwischen zwei Arten unterscheiden. Logische Fehler, das heißt das Programm tut nicht das, was man erwartet. Außerdem gibt Laufzeitfehler, die zum Absturz des Programms oder Endlosschleifen (Deadlock) während der Ausführung führen. Laufzeitfehler, die dazu führen, dass ein Programm nicht mehr Funktioniert, sind mit VisualStudio verhältnismäßig einfach zu entdecken. Hier hilft das Werkzeug mit. Kommt das Programm an eine Stelle, an der zum Beispiel durch 0 geteilt werden soll (das Ergebnis wäre unendlich, es lässt sich durch einen Computer jedoch nicht berechnen, so entsteht ein Ausnahmefehler, der bei der Ausführung angezeigt wird.

![Divide by zero exception]({{ site.url }}/images/was-bedeutet-debuggen/divide-by-zero-exception.png)

Fehler die ähnlich geartet sind, führen in der Regel zu solchen Ausnahmefehlern. Wenn man sein Programm aus der Entwicklungsumgebung startet, kann man sie sehr einfach erkennen und hoffentlich auch entsprechend schnell beseitigen. Klassische Fehler diese Art sind z.B. StackOverflow Fehler, hierbei wir eine Funktion immer wieder aufgerufen, oft z.B. weil man eine Funktion beim Verändern eines Parameters aufruft und darin wieder auf den Parameter zugreift. Immer wieder treten auch NullReferenz Fehler auf. In diesem Fall versucht man auf eine Instanz eines Objekts (oder Methoden bzw. Eigenschaften davon) zuzugreifen, welche noch gar nicht erstellt wurde.

Die andere Kategorie von Laufzeitfehlern sind logische Fehler. Diese zu erkennen und zu finden ist deutlich schwieriger. Ein Beispiel für einen logischen Fehler ist das nicht einhalten von Punkt-vor-Strich Rechnung bei der Berechnung von Zahlen.

```cs
class Program
{
  static void Main(string[] args)
  {
    int i=3;
    int j=4;
    int k=5;

    int ergebnis = i + j * k;

    Console.WriteLine("Ergebnis ist {0}", ergebnis);

    ergebnis = (i + j) * k;
    Console.WriteLine("Ergebnis ist {0}", ergebnis);

    Console.ReadLine();    
  }
}
```

In diesem Beispiel kann man sehen, dass es zu zwei unterschiedlichen Ergebnissen kommt, abhängig davon, ob man die Klammern gesetzt hat oder nicht. Diese Fehler kann man nur durch gezieltes Testen oder Ausprobieren finden.

#### Haltepunkt (Breakpoint)

Für andere logische Fehler kann es hilfreich sein, sich Haltepunkte im Programm zu setzten, um sich den momentanen Werte einer Variablen anzusehen. In diesem Beispiel wurde die Variable "Ergebnis" zwei Mal hintereinander auf unterschiedliche Wert gesetzt. Die erste Ausgabe zeigt den Wert, nach der ersten Berechnung, die zweite Ausgabe den Wert nach der zweiten Berechnung. Um nun nachvollziehen zu können, wann die Variable welchen Wert hat, kann man einen Breakpoint im Quellcode einfügen.

![Ergebnis Punkt vor Strich Rechnung]({{ site.url }}/images/was-bedeutet-debuggen/ergebnis-punkt-vor-strich.png)
{: .pull-left}

In diesem Beispiel kann man sehen, dass es zu zwei unterschiedlichen Ergebnissen kommt, abhängig davon, ob man die Klammern gesetzt hat oder nicht. Diese Fehler kann man nur durch gezieltes Testen oder Ausprobieren finden.

Für andere logische Fehler kann es hilfreich sein, sich Haltepunkte im Programm zu setzten, um sich den momentanen Werte einer Variablen anzusehen. In diesem Beispiel wurde die Variable "Ergebnis" zwei Mal hintereinander auf unterschiedliche Wert gesetzt. Die erste Ausgabe zeigt den Wert, nach der ersten Berechnung, die zweite Ausgabe den Wert nach der zweiten Berechnung. Um nun nachvollziehen zu können, wann die Variable welchen Wert hat, kann man einen Breakpoint im Quellcode einfügen.

![Quellcode mit Breakpoint in Visual Studio]({{ site.url }}/images/was-bedeutet-debuggen/breakpoint.png)

Während der Ausführung unterbricht das Programm an dieser Stelle und man kann sich die Variablen Werte bequem ansehen um Fehler oder ein bestimmtes Verhalten nachvollziehen zu können. In diesem Fall hat "Ergebnis" noch den Wert nach der ersten Berechnung, da diese Codezeile noch nicht ausgeführt wurde. Man kann nun Schritt für Schritt durch den Code gehen und jede einzelne Operation nachvollziehen. Finden muss man den Fehler jedoch immer noch selbst.

<div class="notice">
  Dies ist ein Gastartikel von Daniel Gustorff. Seit einiger Zeit unterstützt mich Daniel bei Entwicklungsarbeiten für Kunden. Als erfahrener Softwareentwickler beschäftigt sich Daniel viel mit der Interaktion zwischen Software auf einem Rechner und technischen Geräten (z.B. im Bereich der Gebäudeautomation). Er hält bei LernMoment die Fahne hoch für ein praktisches und pragmatisches Vorgehen. Daher freut es mich um so mehr, dass er nun auch seine Erfahrung mit dir teilt. DANKE!
  <br>
  Du erreichst Daniel unter: 
  {% if page.author %}
    {% assign author = site.data.authors[page.author] %}{% else %}{% assign author = site.owner %}
  {% endif %}
  {% if author.facebook %}<a href="http://facebook.com/{{ author.facebook }}" title="{{ author.name}} auf Facebook" target="_blank"><i class="fa fa-facebook-square"></i></a>{% endif %}
	{% if author.linkedin %}<a href="http://linkedin.com/in/{{ author.linkedin }}" title="{{ author.name}} auf LinkedIn" target="_blank"><i class="fa fa-linkedin-square"></i></a>{% endif %}
	{% if author.github %}<a href="http://github.com/{{ author.github }}" title="{{ author.name}} auf Github" target="_blank"><i class="fa fa-github-square"></i></a>{% endif %}
	{% if author.email %}<a href="mailto:{{ author.email }}" title="Schreib {{ author.name}} eine Mail" target="_blank"><i class="fa fa-envelope-square"></i></a>{% endif %}
	{% if author.web %}<a href="{{ author.web }}" title="Webseite von {{ author.name}}" target="_blank"><i class="fa fa-external-link-square"></i></a>{% endif %}	 
</div>
