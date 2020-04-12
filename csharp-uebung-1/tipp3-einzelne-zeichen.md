---
layout: page
title: "Lösungstipp #3 - Zeichenketten sind Ketten von (Unicode)-Zeichen"
excerpt: "Du kannst auf die einzelnen Zeichen einer Zeichenkette zugreifen und diese manipulieren."
search_omit: true
image:
  feature: 
modified:
lm-newsletter-group-id: 1
date: 2017-12-11T09:30:00+01:00
---

Für die Lösung dieser Aufgabe ist es wichtig, dass du folgende Aspekte kennst:

 - Ein `string` (also eine Zeichenkette) ist ein Feld von `char` (Zeichen)
 - In .NET werden in `strings` Unicode-Zeichen verwendet
 - Jedes Zeichen hat eine numerische ID und mit dieser kann "gerechnet" werden

## ToCharArray - String in ein Feld von Zeichen konvertieren

> Die Dokumentation der Methode findest du [hier auf MSDN](https://msdn.microsoft.com/de-de/library/ezftk57x(v=vs.110).aspx). 

Mit der `ToCharArray` Methode kannst du einen `string` in ein Feld vom Datentyp `char` konvertieren. Damit hast du nun lesenden und schreibenden Zugriff auf jedes einzelne Zeichen der Zeichenkette. Diese Methode kannst du wie folgt verwenden:

```cs
string eineZeichenkette = "Die Zeichenkette";
char[] einFeldMitZeichen = eineZeichenkette.ToCharArray();
```

Nun musst du noch überlegen wie du so ein Feld von Zeichen durchlaufen kannst und dabei jedes einzelne Zeichen bearbeiten kannst. Hört sich für mich nach einer Aufgabe für eine Schleife an ;-).

## Unicode - Die Zeichenkodierung von .NET strings

> Die von mir im Video gezeigte Unicode-Tabelle [findest du hier](https://unicode-table.com/de/)

Beim *Unicode* Standard handelt es sich um einen Zeichensatz bzw. eine Zeichenkodierung. Damit ist gemeint, dass Buchstaben, Ziffern, Sonderzeichen, ... ein digitaler Code zugewiesen wird. Im Kontext von Unicode hat beispielsweise *A* den Code bzw. die Id *65*. Die Besonderheit bei Unicode, im Vergleich zu anderen Zeichenkodierungen wie zum Beispiel *ASCII*, ist, dass diese Zeichenkodierung Schriftzeichen aus allen Schriftkulturen und Zeichensystemen definiert. Somit kann mit diesem Zeichensatz nicht nur ein deutscher Text, sondern beispielsweise auch ein arabischer oder koreanischer Text abgebildet werden.

Die Tatsache, dass jedes Zeichen im Unicode eine feste dezimale Zahl hat, können wir uns für die Lösung dieser Aufgabe zu nutze machen. Der Ansatz ist, dass das Zeichen in seine entsprechende Zahl umgewandelt wird, dann um 13 erhöht wird und die resultierende Zahl wieder zurück in ein Unicode-Zeichen gewandelt wird. Das setzt natürlich voraus, dass die Buchstaben dem Alphabet nach aufsteigend im Unicode-Standard definiert sind, aber das ist der Fall wie du in [dieser Tabelle](https://unicode-table.com/de/) sehr schön sehen kannst.

## Convert - Zeichen in Unicode-Ids konvertieren (und umgekehrt)

> Um ein Zeichen in seine Unicode-Id zu konvertieren verwendest du [Convert.ToUInt16()](https://docs.microsoft.com/de-de/dotnet/api/system.convert.touint16?view=netframework-4.7.1#System_Convert_ToUInt16_System_Char_)
> Zurück (von Unicode-Id in ein Zeichen) geht es mit [Convert.ToChar()](https://docs.microsoft.com/de-de/dotnet/api/system.convert.tochar?view=netframework-4.7.1#System_Convert_ToChar_System_UInt16_)

Zu diesen Methoden gibt es nichts weiter zu sagen. Hier noch ein Beispiel:

```cs
char einZeichen = 'B';
int codeDesZeichens = Convert.ToUInt16(einZeichen); // codeDesZeichens hat nun den Wert 66 - siehe Unicode-Tabelle

int codeDesNaechstenZeichens = codeDesZeichens + 1;
char dasNaechsteZeichen = Convert.ToChar(codeDesNaechstenZeichens); // nun haben wir ein C als dasNaechsteZeichen 
```

## BONUS: char.IsLetter - Überprüfen ob ein Zeichen ein Buchstaben ist

> Die Methode `char.IsLetter` ist [hier dokumentiert](https://docs.microsoft.com/de-de/dotnet/api/system.char.isletter?view=netframework-4.7.1#System_Char_IsLetter_System_Char_)

In der Aufgabe ist beschrieben, dass Zahlen und Sonderzeichen nicht konvertiert bzw. verschlüsselt werden sollen. Mit der `IsLetter` Methode kannst du überprüfen ob ein Zeichen ein Buchstaben oder etwas anderes ist. Mehr Tipps gebe ich jetzt aber nicht ;-).

[Zurück zur Übungsbeschreibung](/csharp-uebung-1/)

<br/>

<div class="subscribe-notice">
<h5>Lerne mehr über C# und professionelle Softwareentwicklung</h5>
<a markdown="0" href="https://www.udemy.com/course/einstieg-in-csharp-software-programmieren-wie-ein-profi/?couponCode=CS_95-0420_EXISTING" class="notice-button">Hier geht's zum Online-Kurs "Einstieg in C#" >></a>
</div>
