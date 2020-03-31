---
layout: post
title: "Was macht ein Cast (Typkonvertierung / Umwandlung) in C#?"
excerpt: "Manchmal stehst du vor dem Problem, dass du ein Objekt von Typ X hast, aber eins vom Typ Y benötigst. Dann kann dir ein Cast helfen."
categories: csharp-tutorial-deutsch
lernmoment: C#
lm-newsletter-group-id: 1
share: false
show-lm-newsletter-subscribe-box: true
tags: [Syntax, Konzept, Datentypen]
image:
  feature: lernmoment-csharp-banner.jpg
modified:
date: 2020-03-26T09:13:09+01:00
---

Mmmmmoin und willkommen zu deinem LernMoment!

Bei der Entwicklung von Oberflächen (wie z.B. im [kostenlosen WPF-Übungskurs](/lernmail-kurse/wpf-tictactoe-fuer-einsteiger/tag1-spielfeld-anlegen-new-sub/)) wie auch an einigen anderen Stellen, hast du einen Wert vom Datentyp X, aber du bräuchtest eigentlich Datentyp Y. Unter gewissen Randbedingungen hilft dir dann ein *Cast*. Hier ein Beispiel für das eigentliche Problem:

```csharp
private void Kaestchen_0_0_Click(object sender, RoutedEventArgs e)
{
  sender.Content = "X"; // IntelliSense zeigt Fehler CS1061 "object" enthält keine Defintion für "Content", ....

  // es folgt weiterer Code, aber dieser ist für den cast nicht wichtig.
}
```

In diesem Beispiel ist ein *EventHandler* (also letztlich eine Methode) mit dem *Parameter* `sender` vom Datentyp `object` definiert. Nur möchte ich in dem Beispiel gewisse Eigenschaften des `sender` verändern. Versuche ich direkt mit dem `sender` zu arbeiten, dann bekomme ich sofort den [Compiler-Fehler `CS1061`](https://docs.microsoft.com/de-de/dotnet/csharp/language-reference/compiler-messages/cs1061). Was also tun?

### Typumwandlung mit explicit cast
Bevor wir zur Lösung des vorherigen Beispiels kommen, möchte ich dir das Prinzip und die grundlegende Idee eines *Cast* erklären.

#### Typumwandlung bei Werttypen (`int`, `double`, ...)
Es gibt in C# doch einige Werttypen wie z.B. `int`, `short` oder auch `double` die sich in ihrem Wertebereich (und einigen anderen Aspekten) unterscheiden. Nehmen wir beispielsweise an, dass du die Variable `aShortValue` hast vom Datentyp `short`. Dieser Datentyp hat einen Wertebereich von *-32.768* bis *32.767* (siehe [hier](https://docs.microsoft.com/de-de/dotnet/csharp/language-reference/builtin-types/integral-numeric-types) für weitere Details). Möchtest du nun den Wert aus dieser Variable der Variablen `anIntValue` vom Datentyp `int` (Wertebereich von *-2.147.483.648* bis *2.147.483.647*) zuweisen, ist das kein Problem. Egal welchen Wert `aShortValues` besitzt, er passt immer in `anIntValue` rein. Der Wertebereich von `short` ist ja wesentlich kleiner als der von `int`. Bei einer solchen Zuweisung wird der *Datentyp* implizit von `short` nach `int` umgewandelt.

Wenn du das jedoch andersrum probierst (also `aShortValue = anIntValue`), dann bekommst du den Fehler `CS0266` vom *Compiler* angezeigt. Der *Compiler* weiß nämlich nicht welchen tatsächlichen Wert die Variable `anIntValue` zur Laufzeit haben wird. Daher schaut er auf die Datentypen und merkt, dass der Wertebereich von `int` wesentlich größer ist als der von `short`. Würde er die Zuweisung nun zulassen und `anIntValue` hätte beispielsweise den Wert *32.768* (also exakt um eins größer als der zulässige Wertebereich von `short`), dann gäbe es einen Überlauf. D.h. der Wert von `aShortValue` wäre dann *-32.768*. Er wird also plötzlich negativ. Dies kann dann potentiell alle möglichen anderen Fehler nach sich ziehen.

Um solche Fehler zu vermeiden, wurde *C#* als *statisch typisierte* Programmiersprache entworfen. D.h. du bekommst einen Compilerfehler, wenn du versuchst Datentypen in einander zu konvertieren bei denen ein Überlauf stattfinden kann. Hier das passende Beispiel zu der ganzen Theorie (probiere es ruhig als Konsolenanwendung aus):

```csharp
static void Main(string[] args)
{
    short aShortValue = 10;
    int anIntValue = aShortValue; //hier findet eine implizite Typumwandlung statt - OKAY!

    anIntValue = short.MaxValue + 1;
    //aShortValue = anIntValue; //CS0266 - Der Typ "int" kann nicht implizit in "short" konvertiert werden.

    aShortValue = (short)anIntValue;
    Console.WriteLine($"anIntValue hat den Wert {anIntValue}");
    Console.WriteLine($"aShortValue hat den Wert {aShortValue} nach dem explicit Cast");
}
```

Wie du in diesem Beispiel siehst, habe ich dann doch die Zuweisung `aShortValue = (short)anIntValue;` gemacht (ohne Fehler vom Comipler). Dies liegt an dem Zusatz `(short)`. Dabei handelt es sich um eine explizite Typumwandlung (oder *Cast* auf Englisch). Damit sage ich dem *Compiler*: "Ja ich weiß, dass das dumm ist, aber ich will es trotzdem machen!" Wenn du dir dann die Ausgabe in dem Beispiel ansiehst, siehst du auch prompt den Überlauf.

Es gibt verschiedene Szenarien in denen ein *Cast* angewendet wird. Üblicherweise dann, wenn du dir sicher bist, dass dadurch keine Informationen verloren gehen oder wenn der Informationsverlust für die weitere Bearbeitung nicht wichtig ist. Grundsätzlich solltest du jedoch bei jedem *Cast* misstrauisch sein.

Das grundlegende Konzept eines *Cast* sollte dir nun bekannt sein. Ein Zuweisung mithilfe einer expliziten Typumwandlung folgt immer dem gleichen Muster:

```csharp
short aShortValue;
//Variable vom Zieltyp = (Zieltyp)Variable vom Ausgangstyp
double aDoubleValue = (double)aShortValue;
```

#### Typumwandlung bei Referenztypen
Bei den Referenztypen, also Klassen, Arrays, `string` usw., gibt es sowohl implizite wie auch explizite Typumwandlung. Eine implizite Typumwandlung passiert, wenn du von einer *abgeleiteten Klasse* in eine *Basisklasse* konvertieren möchtest. Ein einfaches Beispiel könnte so aussehen:

```csharp
class MeineTolleKlasse { } // jede Klasse in C# erbt automatisch von object

class Program
{
    static void Main(string[] args)
    {
      MeinTolleKlasse eineVariable = new MeineTolleKlasse();
      //im folgenden findet eine implizite Konvertierung statt
      object eineAndereVariable = eineVariable; 
    }
}
```

Durch die Definition der Klasse ist dem *Compiler* (während des kompilierens) klar, dass eine abgeleitete Klasse den Anteil jeder Basisklasse enthält. Somit kann es zu keinen Problemen kommen.

Versuchst du es jedoch in die andere Richtung (Umwandlung einer Variablen der Basisklasse in eine abgeleitete Klasse), dann bockt der *Compiler* wieder mit der Meldung `CS0266`. Die vollständige Fehlermeldung ist dann:

```
Fehler	CS0266	Der Typ "object" kann nicht implizit in "MeineTolleKlasse" konvertiert werden. 
Es ist bereits eine explizite Konvertierung vorhanden (möglicherweise fehlt eine Umwandlung).
```

Wie es bei einer "guten" Fehlermeldung sein sollte, gibt sie uns bereits einen Hinweis wie eine Behebung aussehen könnte. Machen wir wie uns geheißen und verwenden einen *Cast*, dann funktioniert das plötzlich ganz hervorragend:

```csharp
class MeineTolleKlasse { } // jede Klasse in C# erbt automatisch von object

class Program
{
    static void Main(string[] args)
    {
      MeinTolleKlasse eineVariable = new MeineTolleKlasse();
      object eineAndereVariable = new MeineTolleKlasse();
      //im folgenden findet eine explizite Umwandlung statt
      eineVariable = (MeineTolleKlasse)eineAndereVariable;
    }
}
```

Dafür das dieser *Cast* funktioniert, muss jedoch die Variable vom Typ der Basisklasse (in diesem Beispiel also `eineAndereVariable`) auf ein Objekt der abgeleiteten Klassen in die der Typ umgewandelt werden soll (in diesem Beispiel also `MeineTolleKlasse`) zeigen. Ist das nicht der Fall, dann gibt es eine `InvalidCastException`:

![InvalidCastException]({{ site.url }}/images/typkonvertierung-mit-cast/invalid-cast-exception.jpg)

Wie du siehst, hebelst du also mit einem *Cast* die Typisierung aus. Wie bereits erwähnt solltest du dir also wirklich sicher sein was du tust und vor allem was **zur Laufzeit** in deiner Anwendung passieren kann, wenn du einen *Cast* verwendest.

Nach diesem umfangreichen Exkurs geht es nun zum Beispiel vom Anfang des Kapitels zurück. Dort gab es einen *EventHandler* in dem ich auf den `sender` zugreifen wollte:

```csharp
private void Kaestchen_0_0_Click(object sender, RoutedEventArgs e)
{
  Button kaestchen = (Button)sender;
  kaestchen.Content = "X";

  // es folgt weiterer Code, aber dieser ist für den cast nicht wichtig.
}
```

Wie du siehst ist die Lösung ganz einfach. Ich verwende einen *Cast* um den `sender` vom Typ `object` in einen `Button` zu wandeln mit dem ich dann arbeiten kann. In diesem Fall habe ich mich für den *Cast* entschieden, weil ich die Gefahr einer `InvalidCastException` für vertretbar halte. Solange ich den *EventHandler* nicht an einem Steuerelemente anmelde welches nicht vom Typ `Button` ist, läuft alles ohne Probleme.

### `is` Operator als Sicherheitsnetz für einen *Cast*
Bisher habe ich immer auf die Gefahren des *Cast* hingewiesen. Um diese abzumildern, gibt es 2 weitere Operatoren in C# die dich bei Typumwandlungen unterstützen. Einer davon ist `is`.

Bevor ich in die Details gehe, gibt es eine Frage die du dir im Zusammenhang mit einem *Cast* eines Referenztypen stellen solltest:

*Wie sicher ist es, dass die Referenz auf ein Objekt zeigt, welches vom gewünschten Typ ist?*

Im Beispiel mit dem `Button` ist also die Frage wie sicher bin ich mir, dass hinter dem `sender` tatsächlich ein `Button` steckt? Dafür möchte ich 2 mögiche Antworten betrachten:

1. *`sender` **sollte** auf einen `Button` zeigen* -> Wenn `sender` nicht auf einen `Button` zeigt ist irgendwas komplett falsch gelaufen. In diesem Beispiel könnte es sein, dass ich z.B. den *EventHandler* an einem anderen Steuerelement als einem `Button` anmelde. Das ist jedoch ein Fehler und die `InvalidCastException` die durch den *Cast* entsteht macht dieses eindeutig.
2. *`sender` **könnte** auf einen `Button` zeigen* -> Wenn ich beispielsweise eine Auflistung von verschiedenen Steuerelementen durchlaufe und möchte eine gewisse Aktion für alle `Button` darin ausführen, dann ist der *Cast* nicht das passenden Mittel. Vorhang auf für den `is` Operator!



Viel Spaß auf deinem Weg vom Einsteiger zum C# Entwickler

Jan von LernMoment.de
