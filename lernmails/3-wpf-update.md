---
layout: page
title: "LernMail #3 - C# Lernen und den Alltag meistern. Kannst du beides?"
excerpt: ""
search_omit: true
image:
  feature: 
modified:
date: 2020-03-27T09:30:00+01:00
---

Mmmmmoin und willkommen zur LernMail #3!

Ich hoffe dir ist die Decke noch nicht auf den Kopf gefallen. Bei mir ist die ganze Familie im Homeoffice (meine Tochter vermisst die Schule ;). Obwohl ich schon seit Jahren von zu Hause arbeite (C# Entwickler sein ist cool 😉), ist das doch nochmal etwas anderes. Kannst du zu Hause lernen oder bist du froh den Alltag geregelt zu bekommen?

Die Inhalte in dieser LernMail sind (wie gewohnt) umfangreich. Daher ohne weitere Umschweife zu den Inhalten, die dich einen (oder vielleicht auch mehr) Schritt(e) weiterbringen auf deinem Weg vom Einsteiger zum C# Entwickler.

## Thema des Monats: Einstieg in WPF - UPDATE
Voller Tatendrang haben die ersten Teilnehmer mit dem [kostenlosen WPF-Übungskurs](/lernmail-kurse/wpf-tictactoe-fuer-einsteiger/tag1-spielfeld-anlegen/) begonnen. Dabei wurden bisher nicht nur tolle Ergebnisse erzielt, sondern auch bereits tolle Fragen gestellt. Eine die sowohl für Einsteiger wie auch Fortgeschrittene wichtig ist, kommt von Marco:

> Hallo Jan, Du beginnst die Benennung, also `x:Name ...`, immer mit einem Großbuchstaben. Auf der Microsoft-Seite habe ich es mit Kleinbuchstaben gesehen. Ist das egal oder gibt es da eine Richtlinie? - [Marco](https://github.com/LernMoment/community-fragen#wpf-3-wie-sollten-controls-in-xaml-benannt-werden)

"Meine" Schreibweise:
```xml
<Button x:Name="Kasten_0_0" Grid.Column="0" Grid.Row="0" Content="X"/>
````

Schreibweise von Microsoft:
```xml
<Button x:Name="btn1" Background="Pink" 
        Click="OnClick1" ClickMode="Hover">
  ClickMe1
</Button>
``` 

**Übung:** Hast du eine Antwort auf diese Frage oder vielleicht eine Meinung / Idee? Dann teile sie doch mit der Community und mir [auf GitHub](https://github.com/LernMoment/community-fragen/issues/7). 

Warum ich Namensgebung für richtig wichtig halte, erfährst du in der nächsten *LernMail*.

Du nimmst noch nicht am kostenlosen WPF-Übungskurs teil, aber bist doch gespannt was da so passiert? Kein Problem! Du kannst jederzeit über den folgenden Link mit dem Übungskurs starten und dich auch jederzeit wieder abmelden, wenn es dir nicht gefällt.

**Los gehts:** [Klicke einfach auf diesen Link und du kommst direkt zur ersten Teilaufgabe.](/lernmail-kurse/wpf-tictactoe-fuer-einsteiger/tag1-spielfeld-anlegen/)

## Frage/Übung der Woche: Wie kann ich einen String in ein Char-Array wandeln?
In meinem YouTube-Video [STRING: Einführung in Zeichenketten](https://youtu.be/HbZTrkIE9Io) stelle ich dir den Datentyp `string` vor. Neben einigen Grundlagen zu diesem wichtigen Datentyp erkläre ich auch, dass es sich bei einem `string` um ein *Array* von `char` handelt. Dazu gab es folgende Frage:

> Ich habe mal eine Frage und zwar habe ich probiert einzelne Zeichen von dem string in ein Array zu packen, nur bekomme ich Fehler. Ich hoffe du kannst mir helfen. Im folgenden noch mein Code. - [David](https://github.com/LernMoment/community-fragen#syn-1-wie-kann-ich-einen-string-in-ein-char-array-wandeln)

Und hier noch der Quellcode von David:
```csharp
string[] sUD = new string[8];
string text = Console.ReadLine();
for (int x = 0; x <= 7; x++)
{
    char sUD[x] = text[x];
}
```

**Übung:** Ja, es gibt eine "einfache" Lösung, wenn du eine *statische Methode* von `string` benutzt. Kennst du diese *Methode*? Es gibt aber auch (mindestens) eine Möglichkeit die Umwandlung ohne eine spezifische *Methode* vom *Framework* zu machen. Kannst du sie mir zeigen? Deine Antwort kannst du [hier abgeben](https://github.com/LernMoment/community-fragen/issues/new?assignees=&labels=answer&template=antwort.md&title=Antwort+zu+Frage%3A+%3CName+der+Frage+z.B.+WPF-1%3E). Du erhälst auch Rückmeldung zu deiner Antwort und einen Smiley für Fleißigkeit. Versprochen 🤩!
Meine Antwort auf diese Frage findest du [hier](https://github.com/LernMoment/community-fragen/issues/5).

## Neue und beliebte LernMomente
Hier einige neue LernMomente und das beliebteste aus dem Archiv:
- [**Grundlagen vom WPF Style Element in XAML**](/alle/wpf-style-xaml-grundlagen/) [Artikel - NEU] - *WPF* bietet für Designer (oder design affine Entwickler wie uns ;) fast uneingeschränkte Möglichkeiten das Aussehen sämtlicher Steuerelemente zu verändern. Wichtig ist dabei jedoch ein konsistentes *"look and feel"*. Damit du nicht jeden `Button`, `Label`, usw. einzeln ein einheitliches Aussehen verpassen musst, gibt es in *WPF* den `Style`. Die Grundlagen davon erfährst du in [diesem Artikel](/alle/wpf-style-xaml-grundlagen/).
- [**Synchronisiere dein Visual Studio 2019 Projekt mit GitHub**](/alle/projekt-auf-github-veroeffentlichen/) [Artikel - NEU] - Bereits im Video [Lernen durch Rückmeldung - Dein Weg zum C# Entwickler](https://youtu.be/2gNVyMGfZTI) habe ich dir gezeigt, wie du ein Projekt aus *Visual Studio* auf *GitHub* bekommst. In diesem neuen Artikel gebe ich dir dazu nochmals eine Schritt-für-Schritt-Anleitung **UND** ich zeige dir wie du im weiteren Projektverlauf dein *Visual Studio*- und *GitHub*-Projekt synchron hälst.
- [**Serialisierung - Objekte in (CSV) Datei speichern**](https://www.youtube.com/watch?v=-GBbsxPMzg8&list=PLP2TrPpx5VNkr-wmkjguVZAvN4T5EPJbF) [Video - ARCHIV] - Fast alle Anfragen für neue Online-Kurse beinhalten den Aspekt der Anbindung an eine *Datenbank*. Bevor du deine Daten in eine *Datenbank* schreibst, empfehle ich jedoch ganz klar, dass du erstmal die Daten in einer *Datei* speicherst. Für den Anfang sollte das ausreichen **und** du lernst grundlegende Konzepte die du im Zusammenhang mit einer *Datenbank* auch benötigst. Wenn du also nicht weißt wie Objekte gespeichert werden, dann schau dir [dieses Video aus dem Archiv an](https://www.youtube.com/watch?v=-GBbsxPMzg8&list=PLP2TrPpx5VNkr-wmkjguVZAvN4T5EPJbF).
- [**Command.CanExecute - WPF für Fortgeschrittene**](/csharp-programmieren/command-canexecute/) [Artikel - ARCHIV] - Wenn du bereits ein paar *WPF*-Anwendungen umgesetzt hast, dann bist du sicherlich schon mal über das *MVVM* (*Model-View-ViewModel*) Muster gestolpert. Ein wichtiger Bestandteil davon ist das `Binding` von Aktionen am *ViewModel* an den *View* mit einem `Command`. Mithilfe von `CanExecute` kannst du "automatisch" anzeigen ob das `Command` momentan ausgeführt werden kann. Die genaue Umsetzung inkl. Beispiel findest du [in diesem Artikel](/csharp-programmieren/command-canexecute/).

## Kurz vorgestellt: "Einstieg in GitHub"
Wie du alleine in dieser LernMail sehen kannst, ist für mich das Thema *GitHub* extrem wichtig. Du kannst auf GitHub üben, lernen, mit anderen Entwicklern in Kontakt kommen, Unterstützung für dein Open Source Projekt aus der Community bekommen und dein Wissen vermarkten. Es ist somit ein **Turbo für deine Karriere**, deine privaten Softwareentwicklungsprojekte und deine Fähigkeiten im Bereich der professionellen Softwareentwicklung.

Das wichtigste ist jedoch, dass du GitHub auch einsetzen kannst. Ein gepflegtes GitHub-Projekt und professionelle Issues und Pull Request können dein Ticket für einen neue Job sein. Einige Konzepte und Arbeitsschritte sind auf GitHub allerdings nicht unbedingt intuitiv. Das kommt auch daher, dass GitHub viele Freiheiten lässt. In diesem Online-Kurs zeige ich dir alles was du brauchst um *GitHub* auf deinem Weg vom Einsteiger zum C# Entwickler erfolgreich einzusetzen.

[Belege den Online-Kurs bis zum 02.04.20 mit dem LernMail-Abonnenten Rabatt. Los gehts!](https://www.udemy.com/course/github-fuer-entwickler/?couponCode=UGIK_10-LERNMAIL3)

LernMail #4 erscheint am 11.04.2020.

Bis dahin wünsche ich dir viel Spaß beim Lernen und Üben mit WPF und den LernMomenten

Jan von [LernMoment.de](https://www.lernmoment.de)

PS: **Wie hat dir diese LernMail gefallen?** Schreib mir deine Meinung als Antwort auf diese Mail.