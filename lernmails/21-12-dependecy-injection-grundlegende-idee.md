---
layout: page
title: "LernMail 12/21 - Dependency Injection für Einsteiger"
excerpt: ""
search_omit: true
image:
  feature: banner/lernmoment-csharp.jpg
modified:
date: 2021-05-12T09:30:00+01:00
---

Mmmmmoin und willkommen zu deiner LernMail!

Heute mit einer wirklichen tollen Frage von Niklas aus meinem Online-Kurs ["Einstieg in C#"](https://www.udemy.com/course/einstieg-in-csharp-software-programmieren-wie-ein-profi/?referralCode=73784B79162D93219DEC):

> Hallo Jan,
>
> warum verwenden wir in der ConsoleView.cs folgenden Code:
> ```csharp
> private RechnerModel model;
> public ConsoleView(RechnerModel model)
> {
>     this.model = model;
> }
> ```

Niklas gibt in seiner Frage noch folgende Alternative an und fragt ob die nicht einfacher zu pflegen ist und gleichzeitig noch weniger Code hat:

> ```csharp
> private RechnerModel model = new RechnerModel();
> public ConsoleView()
> {
> }
> ```

Das Thema was darin verborgen ist nennt sich *Dependency Injection*. Um Niklas eine Antwort geben zu können möchte ich dieses Thema heute mit dir etwas näher beleuchten.

### Dependency Injection - Die Grundlagen
Wie du bereits in den Beispielen von Niklas siehst, geht es grundsätzlich um die Abhängigkeit zwischen Objekten. Eines der Grundprinzipien von Softwareentwicklung ist die Trennung von Verantwortlichkeiten (oder *Separation of Concerns* in Englisch). D.h. eine Klasse soll sich möglichst um eine Verantwortung kümmern und nicht mehr.

Da unsere Software üblicherweise sehr viele Funktionalitäten und somit auch verschiedenste Verantwortungen hat, werden wir nach und nach immer mehr Klassen bekommen. Weil sich eine Klasse nur um eine Verantwortung kümmern soll, kommt es nun häufiger vor, dass sie Objekte von einer oder mehreren anderen Klassen benötigt um ihre eigene Funktionalität umsetzen zu können.

Genau so ist es in dem Beispiel von Niklas. Die Klasse `ConsoleView` benötigt ein Objekt der Klasse `RechnerModel`. Wer ist nun aber dafür verantwortlich eine Instanz von `RechnerModel` zu erzeugen? Dieses ist eine zentrale Frage im Thema *Dependency Injection*. Ins Deutsche übersetzt heißt *Dependency Injection* soviel wie die *Abhängigkeiten injizieren*.

#### Was ist das Problem?
Im Beispiel von Niklas geht es um eine sehr einfache Abhängigkeit. Wie du siehst das eine Instanz vom `RechnerModel` mit `new RechnerModel();` angelegt werden. Allerdings ist es häufig so, dass du bestimmte Informationen benötigst um eine Instanz einer Klasse anlegen zu können. So kommt es häufig vor, dass ein Konstruktor einen oder mehrere Parameter benötigt. Je mehr Abhängigkeiten eine Klasse hat, umso mehr Informationen werden benötigt beim Anlegen der jeweiligen Objekte.

Eines der Problem ist also, dass das Anlegen von Objekten, insbesondere wenn es eine etwas komplexere Objektstruktur ist, schon als Verantwortung gesehen werden kann. Dann wird nämlich das Zusammenbauen der einzelnen Objekte schon relativ kompliziert.

Ein weiteres Problem bekommen wir bei der Testbarkeit. Bestimmt weißt du, dass es Sinn macht Klassen und deren Methoden zu testen. Dafür eignen sich besonderes gut automatisierte *Unit-Tests*. Ziel dieser Tests ist es, dass du beispielsweise Methodenaufrufe in Isolation testen kannst. Was aber passiert, wenn in einem Methodenaufruf nicht nur Algorithmen und Daten der jeweiligen Klassen verwendet werden, sondern wenn auch andere Objekte verwendet werden?

Wenn die zu testende Klasse (in diesem Beispiel die Klasse `ConsoleView`) sich selber das Objekt erstellt von dem sie abhängig ist (in diesem Beispiel die Klasse `RechnerModel`), dann werden in einem Test immer beide Klassen getestet. Grundsätzlich hört sich das vielleicht nicht schlecht an, aber das Problem ist, dass du in *Unit-Tests* nur eine bestimmte Funktionalität testen möchtest. Für diese Funktionalität solltest du nun verschiedene Szenarien testen. Je mehr Abhängigkeiten du jedoch hast, umso schwieriger wird es das gewünschte Resultat überhaupt zu erreichen.

#### Welche Lösung bietet DI dafür?
Okay, die Kernprobleme sind also der Verstoß gegen *Separation of Concerns* und eine schlechtere Testbarkeit. Nun höre ich dich fragen: "Jan, gibt es dafür keine Lösung?" - Doch, die gibt es sehr wohl. Die einfachste Lösung dafür ist, dass eine Klasse die Objekte von denen sie abhängig ist nicht selber erzeugt, sondern sie erzeugen lässt.

Genau das ist es, was ich beim `ConsoleView` gemacht habe. Ich habe das Erzeugen des `RechnerModel` aus dem `ConsoleView` rausgenommen und extern gemacht. Dem `ConsoleView` ist es nämlich ganz egal wie das `RechnerModel` erzeugt wird. Für ihn ist nur wichtig, dass er eine Instanz vom `RechnerModel` hat und darüber die benötigten Funktionalitäten bekommt. In diesem Beispiel bietet das `RechnerModel` beispielsweise die wichtigsten Berechnungen eines Taschenrechners an.

Wichtig ist, dass die meisten Funktionalitäten des `ConsoleView` nicht ohne das `RechnerModel` ausgeführt werden können. Daher habe ich mich entschieden, dass das `RechnerModel` über den Konstruktor des `ConsoleView` injiziert wird. Grundsätzlich kannst du auch Abhängigkeiten über Eigenschaften oder Methoden in eine andere Klasse injizieren. Allerdings solltest du immer darauf achten, dass ein Objekt einer Klasse nach der Ausführung des Konstruktors in sich konsistent und funktionsfähig ist. Darum werden Abhängigkeiten häufig über den Konstruktor injiziert.

Über die *Dependency Injection* können wir nun sicherstellen, dass die Verantwortlichkeit für das Erzeugen von Objekten nicht in einer Klasse stattfindet, die bereits eine andere Verantwortlichkeit hat. Wie ist es aber mit der Testbarkeit?

Der Vorteil von *Dependency Injection* für die Testbarkeit ist für mich der entscheidende Faktor. Darüber das das `RechnerModel` ausserhalb vom `ConsoleView` angelegt wird, bekommen wir in einem automatischen *Unit-Test* nun die Möglichkeit, eine Instanz des `RechnerModel` anzulegen und bereits mit den passenden Werten vorzubereiten. Dann können wir dieses vorbereitete `RechnerModel` dem `ConsoleView` bei seiner Erstellung übergeben.

Würde der `ConsoleView` eine Instanz des `RechnerModel` intern erzeugen, hätten wir keinerlei Möglichkeit das `RechnerModel` für unseren Test vorzubereiten. Ganz konkret könnte es beispielsweise so sein, dass wir testen wollen wie sich der `ConsoleView` verhält, wenn eine Division durch Null im `RechnerModel` erfolgt. Wie jedoch können wir ein solches Szenario testen, wenn wir vorher das `RechnerModel` nicht entsprechend vorbereiten können?

#### Was solltest du noch über DI wissen?
Auch wenn es bisher etwas theoretisch war, hast du hoffentlich eine erste Idee was *Dependency Injection* ist und warum das gut ist. Allerdings hört es an dieser Stelle noch nicht auf.

Für eine "normale" Anwendung die gar nicht mal so viele Funktionen hat, benötigst du einige Klasse und viele Objekte davon. Daher wird das Zusammenbauen von Objektstrukturen recht schnell kompliziert. Da es ein Problem ist, welches sich in vielen Anwendungen zeigt, gibt es natürlich eine "fertige" Lösung dafür. Es ist ein *Dependency Injection Container* (oder kurz *DI-Container*).

Bei einem *DI-Container* handelt es sich um eine Bibliothek die du in deine Software integrieren kannst und die dich unterstützt beim Bändigen von Abhängigkeiten. Allerdings ist das ein fortgeschrittenes Thema welches ich gerne mal in einer weiteren LernMail erklären, wenn du Interesse hast.

### Die Frage final beantwortet
Für dieses konkrete Beispiel muss ich Niklas wirklich recht geben. An diesem Punkt ist die Übergabe des `RechnerModel` im Kontruktor des `ConsoleView` noch nicht zwingend notwendig. Da das `RechnerModel` einfach zu erstellen ist, gibt es hier auch kein Problem beim Thema *Separation of Concerns*.

Einer der nächsten Schritte im Kurs ist dann allerdings die Erstellung von automatischen *Unit-Tests*. An dem Punkt macht dann die Verwendung von *Dependency Injection* wieder Sinn.

Grundsätzlich versuche ich immer die Abhängigkeiten über die hier vorgestellte (einfache) Form der *Dependency Injection* in Objekte zu injizieren. Das ist im Laufe der Zeit so in Fleisch und Blut übergegangen, dass ich gar nicht mehr drüber nachdenke. Daher war diese Frage auch für mich sehr lehrreich.

### Übungsmoment #4 - Wo ist er denn?
Die bisherigen Übungsmomente haben zu sehr wenig Rückmeldung geführt. Da uns für diese LernMail die Zeit davon läuft, warte ich mal, wie groß der Aufschrei ist, wenn es keinen Übungsmoment gibt ;-). Dir haben die vorherigen Übungsmomente gefallen und du möchtest auch weiterhin einen Übungsmoment in der LernMail? Dann freuen wir uns über deine entsprechende [Rückmeldung](mailto:jan@lernmoment.de?subject=Rückmeldung%20LernMail%2012-21)

Mit injizierten und abhängigen Grüßen aus Bielefeld

Jan von [LernMoment.de](https://www.lernmoment.de)