---
layout: page
title: "LernMail 13/21 - Parse oder Convert? Wer konvertiert was?"
excerpt: ""
search_omit: true
image:
  feature: banner/lernmoment-csharp.jpg
lm-newsletter-group-id: 1
modified:
date: 2021-05-21T09:30:00+01:00
---

Mmmmmoin und willkommen zu deiner LernMail!

Egal ob Konsolen-, Web-, Desktop- oder sonstige Anwendungen, immer wieder stehst du vor dem Problem, dass du Informationen in einem Datentypen hast, aber einen anderen Datentypen benötigst. C# bietet dir nun verschiedenste Möglichkeiten Werte und Datentypen zu konvertieren. Wenn du dir sicher bist, dass bei einer Typumwandlung keine Daten verloren gehen bzw. dich das nicht stört, dann wahrscheinlich ein `cast` der richtige Weg. Was das ist und was du beachten musst, habe ich in [diesem Artikel](https://www.lernmoment.de/csharp-tutorial-deutsch/typkonvertierung-mit-cast/) beschrieben.

In dieser LernMail möchte ich auf die Konvertierung mit `Convert` und `Parse` eingehen. Dies möchte nämlich Tugrul in meinem Kurs  ["Einstieg in C#"](https://www.udemy.com/course/einstieg-in-csharp-software-programmieren-wie-ein-profi/?referralCode=73784B79162D93219DEC) gerne genauer verstehen. Daher hat er mir folgende Frage geschickt:

> Wo exakt liegt der Unterschied zwischen ConvertTo(-Klasse ) und TryParse(-Methode) bzw. wann wird Parse/TryParse und wann Convert verwendet?

Damit du ein wenig den Kontext der Frage verstehen kannst hier einmal ein Beispiel mit `Convert`:

```cs
double stringAlsDouble = Convert.ToDouble("42.0815");
```

Das gleiche Beispiel sieht mit `Parse` dann so aus:

```cs
double stringAlsDouble = double.Parse("42.0815");
```

Wenn du diese beiden Konvertierungen in einer Anwendung ausprobierst, wirst du sehen, dass sie zu dem exakt gleichen Resultat kommen. Was ist also der Unterschied? Warum gibt es überhaupt unterschiedliche Ansätze, wenn doch das gleiche Ergebnis herauskommt? Und warum gibt es `Parse` **und** `TryParse`?

Fragen über Fragen! Wollen wir sie uns gemeinsam anschauen? (Ups, das ist ja schon wieder eine Frage ;)

#### Die Klasse `Convert` - Allgemeine Konvertierung
Wenn du dir die [Dokumentation](https://docs.microsoft.com/de-de/dotnet/api/system.convert?view=net-5.0#remarks) der Klasse `Convert` anschaust, wirst du auf folgende Aussage treffen:

> Die statischen Methoden der Klasse `Convert` werden hauptsächlich verwendet, um die Konvertierung in und aus den Basis Datentypen in .net zu unterstützen. Die unterstützten Basis-Typen sind `Boolean`, `Char`, `SByte`, `Byte`, `Int16`, `Int32`, `Int64`, `UInt16`, `UInt32`, `UInt64`, `Single`, `Double`, `Decimal`, `DateTime` und `String` Darüber hinaus enthält die Klasse `Convert` Methoden, um andere Arten von Konvertierungen zu unterstützen. - [Dokumentation der Klasse Convert](https://docs.microsoft.com/de-de/dotnet/api/system.convert?view=net-5.0#remarks)

Hier geht es also darum, dass die Methoden der Klasse `Convert` dir eine Möglichkeit bieten zwischen den Basis-Datentypen zu konvertieren. Schauen wir uns dazu noch ein Beispiel an:

```cs
int charAlsInt = Convert.ToInt32('a');
```

Hier benutze ich `Convert.ToInt32` um ein Zeichen (`char`) in eine Zahl (`int`) zu konvertieren. Wenn du auch diese Konvertierung mal selber ausprobierst, dann wirst du erstaunt sein, dass das Resultat **97** ist. Die Erklärung dazu ist ganz einfach, wenn du einen Blick in eine *ASCII-Tabelle* wirfst. 97 ist nämlich der dezimale *ASCII-Code* für den kleinen Buchstaben *a*. Somit ist klar, dass die Klasse `Convert` für die Konvertierung von `char` zu `int` die *ASCII-Tabelle* verwendet. Ganz so einfach ist es nicht, weil es ja noch Unicode und co. gibt, aber für diese Diskussion bleiben wir mal bei den einfachen Dingen ;-).

Die Klasse `Convert` definiert also verschiedene Regeln wie ein Datentyp in einen anderen konvertiert werden kann. Diesen Ansatz kannst du sogar für deine eigenen Klassen verwenden. Möchtest du beispielsweise eine Klasse schreiben die mithilfe von `Convert.ToInt32` in eine Ganzzahl konvertiert wird, dann kannst du dies erreichen in dem deine Klasse das `IConvertible` Interface implementiert. Ein Beispiel findest [du hier bei Microsoft](https://docs.microsoft.com/de-de/dotnet/api/system.iconvertible?view=net-5.0#examples).

#### `string` konvertieren mit `Parse`
Nun weißt du schon einiges über `Convert`, aber was genau macht `Parse`? Schauen wir uns auch dazu wieder einen Ausschnitt der [entsprechenden Dokumentation](https://docs.microsoft.com/de-de/dotnet/standard/base-types/parsing-numeric) an:

> Alle numerischen Typen weisen zwei statische Analysemethoden auf, Parse und TryParse, mit denen Sie die Zeichenfolgendarstellung einer Zahl in einen numerischen Typ konvertieren können. - [Analysieren numerischer Zeichenfolgen in .NET](https://docs.microsoft.com/de-de/dotnet/standard/base-types/parsing-numeric)

Im Gegensatz zu `Convert` geht es bei `Parse` also **"nur"** um die Konvertierung von `string` in einen anderen Basis-Datentyp. Dabei wird davon ausgegangen, dass der Inhalt des `string` auch tatsächlich konvertierbar ist. Versuchst du beispielsweise *"Hugo"* mit `int.Parse` zu konvertieren, dann gibt es eine `FormatException`.

`Parse` nimmt sich also den Inhalt des `string` und analysiert (oder besser gesagt parst) ihn nach den Regeln des Datentyps in den der `string` konvertiert werden soll.

Damit ist schon mal klar, dass `Parse` für einen spezifischen Zweck der Konvertierung genutzt wird und `Convert` eher ein allgemeiner Ansatz ist. Das sowohl `Convert` wie auch `Parse` von `string` in andere Basis-Datentypen konvertieren, ist also eher der Konsistenz geschuldet. Theoretisch hätte Microsoft die `Convert` Methoden für `string` weglassen können, aber dann wäre das Konzept von `Convert` nicht mehr konsistent gewesen. "Unter der Haube" verwendet `Convert` dann auch tatsächlich `Parse`.

#### TryParse - Versuchen wir mal zu konvertieren
Grundsätzlich gilt für `TryParse` erstmal das Gleiche wie für `Parse`. Es wird eingesetzt um einen `string` in einen anderen Basis-Datentyp zu konvertieren. Häufig ist es jedoch so, dass du dir nicht sicher bist ob ein `string` in eine Zahl (oder anderen Basis-Datentyp) konvertiert werden kann. Dafür gibt es `TryParse`:

```cs
int zahlAusgeschrieben;
if (int.TryParse("zwei", out zahlAusgeschrieben))
{
  Console.WriteLine($"Eine ausgeschrieben Zahl ('zwei') kann konvertiert werden: '{zahlAusgeschrieben}'");
}
else
{
  Console.WriteLine("Eine ausgeschrieben Zahl ('zwei') kann NICHT konvertiert werden!");
}
```

`TryParse` versucht also den `string` zu konvertieren und gibt dir über seinen Rückgabewert die Info ob das klappt oder nicht. Damit du dann nicht nochmals die Konvertierung ausführen musst, gibt es einen `out` Parameter in der das Resultat der Konvertierung geschrieben wird. Das natürlich nur, wenn es auch geklappt hat!

Grundsätzlich würde diese Methode nicht unbedingt gebraucht, weil du selber einen `try-catch` Block um das `Parse` setzen könntest. Kommt eine `Exception` raus, dann klappt es nicht und ansonsten eben doch ;-). Allerdings ist es schon einfacher `TryParse` zu verwenden.

Ein weiterer Grund warum `TryParse` "besser" ist also ein `try-catch` Block um das `Parse` ist die Vermeidung der `Exception`. Das ist jedoch ein umfangreiches Thema, welches wir mal in einer weiteren LernMail besprechen können.

#### Fazit
Willst du einen `string` in einen Basis-Datentyp konvertieren und bist dir sicher, dass die Konvertierung möglich ist, dann verwende `Parse`. Bist du dir nicht sicher, ob die Konvertierung erfolgreich sein wird (was wohl häufig der Fall ist), dann verwenden `TryParse`.
Willst du einen Basis-Datentypen ausser `string` in einen anderen Basis-Datentypen konvertieren, dann verwendest du am besten `Convert`.
Weißt du, dass du den Wert in einem Basis-Datentyp in einen anderen Basis-Datentyp umwandeln kannst, dann überlege, ob du einen `Cast` (siehe [hier](https://www.lernmoment.de/csharp-tutorial-deutsch/typkonvertierung-mit-cast/)) verwenden solltest.
Willst du einen Referenz-Datentypen (also eine Klasse) in einen anderen Referenz-Datentypen wandeln, dann kannst du über `Cast`, den `is` oder den `as` Operator nachdenken (mehr dazu in [diesem Artikel](https://www.lernmoment.de/csharp-tutorial-deutsch/typkonvertierung-mit-cast/)).

Einen weiteren sehr ausführlichen und guten Artikel zu diesem Thema (allerdings in Englisch) findest du [hier]( https://blog.elmah.io/csharp-how-to-convert-a-string-to-int/).

### Übungsmoment #5 - Finde die Konvertierungsfehler
Wie ich feststellen musste, habe ich im [Taschenrechner-Projekt](https://github.com/LernMoment/einstieg-csharp-taschenrechner) die Konvertierung nicht so ganz nach den Regeln gemacht. Dafür gab es zwar einen Grund, aber es wäre schön, wenn du dir mal den Quellcode anschaust und herausfindest wo du vielleicht eine andere Art der Konvertierung nutzen würdest.

Ja, dass ist eine etwas umfangreichere Übung, weil du dich erstmal durch den Quellcode kämpfen musst. Allerdings ist das Lesen von Quellcode für deinen Lernfortschritt super wichtig. Du kannst mit diesem Übungsmoment also gleich 2 gute Taten für dein Wissen vollbringen ;-).

#### Erinnerung
**Akzeptierst du diese Übung?** Klicke auf folgenden Link damit wir dich in ein paar Tagen nochmals daran erinnern, dass du die Übung machen wolltest: [Ja, erinnere mich an diese Übung in ein paar Tagen](mailto:jan@lernmoment?subject=[LernMail%2013-21]%20Übungsmoment%20akzeptiert). (Kannst du einfach so abschicken und die Magie passiert. Wenn mehr Lesern die Idee gefällt, wird das natürlich automatisiert ;).

#### Lösung
Gibt es bisher noch keine. Wenn du Probleme hast, dann melde dich bitte einfach bei mir!

**Deine Lösung** kannst du [uns gerne schicken](mailto:jan@lernmoment?subject=[LernMail%2013-21]%20Übungsmoment%20Lösung). Sofern möglich werde ich dir dazu ein kleines Feedback schicken.

Wie immer freuen wir uns über jede [Rückmeldung](mailto:jan@lernmoment.de?subject=Rückmeldung%20LernMail%2013-21)

Mit einer `FormatException` (also falsch konvertierten Grüßen ;) aus Bielefeld

Jan von [LernMoment.de](https://www.lernmoment.de)

<div class="subscribe-notice">
  <h5>Dir gefällt diese LernMail? Dann melde dich auch für die nächste an ;-)</h5>
	{% include lernmoment-subscribe.html %}
</div>