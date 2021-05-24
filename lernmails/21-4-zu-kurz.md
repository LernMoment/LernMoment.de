---
layout: page
title: "LernMail 4/21 - (Clean) Code: Wie kurz ist zu kurz?"
excerpt: ""
search_omit: true
image:
  feature: banner/lernmoment-csharp.jpg
lm-newsletter-group-id: 1
modified:
date: 2021-03-17T09:30:00+01:00
---

Mmmmmoin und willkommen zu deiner LernMail!

Wenn es darum geht sauberen und lesbaren Quellcode zu schreiben, dann gibt es sehr unterschiedliche Ideen was das bedeutet. Insbesondere bei der Länge und Komplexität von Methoden solltest du dir die folgenden Fragen stellen:
 - Wie lang ist zu lang?
 - Wie kurz ist zu kurz?

### Wie lang ist zu lang?
Eine allgemeine Antwort auf diese Frage gibt es nicht. Robert C. Martin (auch bekannt als Uncle Bob) sieht es in seinem Buch "Clean Code" so:

> "The first rule of functions is that they should be small. **The second rule of functions is that they should be smaller than that.**" - Robert C. Martin

Dem fügt er noch hinzu, dass folgender Ratschlag bereits seit über 30 Jahren gegeben wird (meine Ausgabe von *Clean Code* ist aus dem Jahr 2009, also wird der Ratschlag seit über 40 Jahren gegeben ;):

> **"FUNCTIONS SHOULD DO ONE THING. THEY SHOULD DO IT WELL. THEY SHOULD DO IT ONLY."**

Es geht ihm darum, dass Funktionen, der Begriff Methode steht in diesem Fall synonym dafür, kurz sein sollen und das sie **genau eine Aktion** machen sollen.

Somit können wir die Frage *"Wie lang soll eine Methode sein?"* also beantworten. Möglichst kurz. In den Beispielen die im Buch gegeben werden sind es üblicherweise 3-5 Zeilen. Das mag dich überraschen, aber auch aus meiner Erfahrung ist das eine gute Richtlinie (die ich selber nicht immer erfülle ;). Darüber könnten wir sicherlich lange diskutieren, aber in dieser Mail möchte ich den Fokus auf die 2. Frage legen.

### Wie kurz ist zu kurz?
Immer wieder sehe (und schreibe) ich Quellcode wie diesen:

```csharp
static void Main(string[] args)
{
    Console.Write("Bitte gib den ersten Summanden ein: ");
    
    // Umwandlung in Dezimalzahlen
    decimal ersterSummand = Convert.ToDecimal(Console.ReadLine());
    Console.Write("Bitte gib den zweiten Summanden ein: ");
    decimal zweiterSummand = Convert.ToDecimal(Console.ReadLine());

    // Berechnung ausführen und ausgeben
    Console.WriteLine($"Die Summe von {ersterSummand} und {zweiterSummand} ist {ersterSummand + zweiterSummand}");
    Console.ReadLine();
}
```

Nun sag mit bitte sofort wie oft und wo genau Console.ReadLine() aufgerufen wird (Lösung am Ende der Mail). Hast du es beim ersten Lesen der Methode gesehen? Ich merke immer wieder, dass ich diese Stellen beim ersten "Überfliegen" übersehe. 

Die Motivation hinter dem Schachteln von Methodenaufrufen ist, dass der Entwickler (also du oder ich zum Beispiel ;) möglichst wenig Zeilen Code und möglichst wenig Variablen verwenden möchte. Auch wenn ich selber dieses Ziel von Zeit zu Zeit verfolge, finde ich es nicht gut.

Du fragst warum? Weil weniger Zeilen nicht gleichbedeutend sind mit gut lesbarem Quellcode. Ich hatte mal einen Kollegen der ein wirkliches Genie war. Er wusste alles und konnte auch alles in extrem kompakten Quellcode umsetzen. Allerdings hat genau auch das dazu geführt, dass er absolut nicht fähig war im Team zu arbeiten. Die Kollegen haben teilweise vor den Zeilen gehockt und Ewigkeiten gebraucht um zu verstehen was genau da passiert. Hätte der Kollege einfach das Ganze in ein paar mehr Zeilen geschrieben, dann wäre es für alle sofort verständlich gewesen.

Für mich ist Quellcode eine Beschreibung von dem was der Rechner für mich tun soll. Die muss der Rechner verstehen, aber genauso muss ich die in einigen Monaten verstehen können und andere Entwickler die auf unterschiedlichem Wissensstand sind ebenfalls. Da es aber auch schnell gehen soll, will ich den Code überfliegen und sofort verstehen was passiert.

Schauen wir uns also einmal die folgende Zeil aus der Methode von oben an:

```csharp
decimal ersterSummand = Convert.ToDecimal(Console.ReadLine());
```

Was ich sehe ist die Definition einer Variablen und dann die Konvertierung einer Zahl. Da ich das Ganze schnell überfliege, habe ich den Methodenaufruf im Methodenaufruf nicht wahr genommen. Nun wundere ich mich und frage mich was denn da überhaupt konvertiert wird. Also muss ich nochmals zurück und genauer hinschauen.

### Was du daraus lernen kannst

> Kurzer Quellcode ist nicht unbedingt lesbarer!

Mit diesem kleinen "Rant gegen möglichst kurzen Quellcode" möchte ich dich bestärken Dinge auszuprobieren und dann kritisch zu reflektieren. Du fragst dich also "Wie lang sollte eine Methode sein?" Probier es doch einfach aus und schreibe alles in eine Methode. Wenn dein Programm läuft, was fällt dir auf? Dann probierst du exakt das Gegenteil und versuchst viele kleine Methoden zuschreiben. Was fällt dir daran auf?

So hast du die Möglichkeit dir eine eigene Meinung zu bilden. **Danach** kannst du dann zu dem Thema recherchieren was andere Leute meinen.

Mir ist bewusst, dass das ein wenig Arbeit ist und du vielleicht sogar etwas Hilfe dabei brauchst. Es lohnt sich jedoch (insbesondere bei so wichtigen Themen wie der Lesbarkeit von Quellcode) und du kannst mich jederzeit gerne Fragen.

Mit kurzem Gruß (oder ist das schon zu lang?)
Jan von LernMoment.de

PS: Du solltest in der `Main`-Methode drei Mal `Console.ReadLine()` gefunden haben.

### Links zu diesem Thema:
- [http://clean-code-developer.de/](http://clean-code-developer.de/) - Clean Code Developer Initiative von Ralf Westphal und Stefan Lieser
- [https://www.lernmoment.de/csharp-programmieren/schreibe-kuerzeren-quelltext-mit-dem-null-conditional-operator/](https://www.lernmoment.de/csharp-programmieren/schreibe-kuerzeren-quelltext-mit-dem-null-conditional-operator/) - Schreibe kürzeren Quellcode mit dem null-conditional Operator (für Fortgeschrittene)
- [https://www.lernmoment.de/alle/aktivitaeten-zur-fehlervermeidung/](https://www.lernmoment.de/alle/aktivitaeten-zur-fehlervermeidung/) - Warum Clean Code dir hilft Fehler zu vermeiden


<div class="subscribe-notice">
  <h5>Dir gefällt diese LernMail? Dann melde dich auch für die nächste an ;-)</h5>
	{% include lernmoment-subscribe.html %}
</div>