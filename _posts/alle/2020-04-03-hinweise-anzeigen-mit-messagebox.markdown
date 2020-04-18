---
layout: post
title: "Hinweise anzeigen mit WPF-MessageBox"
excerpt: "Für die Interaktion mit dem Benutzer ist es häufig notwendig in einer WPF Anwendung Hinweise anzuzeigen. Eine Möglichkeit dafür ist die MessageBox."
categories: alle
lernmoment: C#
lm-newsletter-group-id: 64
banner: uebung-buchstaben
share: false
show-lm-newsletter-subscribe-box: false
tags: [WPF, XAML, Controls]
image:
  feature: banner/lernmoment-wpf.jpg
modified:
date: 2020-04-03T09:00:09+01:00
---

Mmmmmoin und willkommen zu deinem LernMoment!

Es gibt verschiedene Szenarien in denen es hilfreich ist dem Benutzer einer *WPF*-Anwendung einen Hinweis anzuzeigen. Hier ein paar Möglichkeiten:

- Der Benutzer macht eine ungültige Eingabe
- Der Benutzer möchte eine Funktionalität ausführen die momentan nicht verfügbar ist (z.B. weil die Verbindung zu einem Server fehlt)
- Der Benutzer muss eine Eingabe bestätigen (z.B. das Löschen eines Datensatzes)
- Die Anwendung braucht zusätzliche Informationen um weiter machen zu können

Die einfachste Möglichkeit um solche Interaktionen mit dem Benutzer in *WPF* abzubilden ist die `MessageBox`:

![Anzeigen eines Fehlers mit einer MessageBox]({{ site.url }}/images/hinweise-anzeigen-mit-messagebox/messagebox-fehler-ok.jpg)

**WICHTIG:** Auch wenn die `MessageBox` einfach zu vewenden ist, ist sie häufig nicht die passende Wahl. Für die meisten Szenarien gibt es in WPF bessere Mittel, weil die `MessageBox` nicht das optimale *Bedienerlebnis (User Experience oder UX auf Englisch)* bietet. So ist es beispielsweise sinnvoller direkt an einer `TextBox` einen Eingabefehler kenntlich zu machen als einen Dialog anzuzeigen der nochmals vom Benutzer bestätigt werden muss. Trotzdem wirst du gerade beim Einstieg in *WPF* häufig die `MessageBox` verwenden was auch okay ist. Bessere Varianten zeige ich dir in weiteren Artikeln 😉.

### Text & Überschrift in einer MessageBox anzeigen
Die Klasse `MessageBox` bietet lediglich eine statische Methode mit unterschiedlichen Parametern an. Mithilfe von `MessageBox.Show("")` kannst du einen modalen Dialog anzeigen. In dieser einfachsten Form hat der Dialog keine Überschrift, kein zusätzliches Icon und lediglich einen `Button` (*Ok*):

```csharp
MessageBox.Show("Dieses Kästchen ist bereits belegt! Wähle ein anderes.");
```

Wahrend der Ausführung bekommst du damit diesen Dialog angezeigt:

![Einfachste Form einer MessageBox]({{ site.url }}/images/hinweise-anzeigen-mit-messagebox/messagebox-default.jpg)

Da es sich bei der `Show`-Methode um einen synchronen Aufruf handelt, wird deine Anwendung solange blockiert, bis der Anwender den Dialog wieder schließt. Verwendest du also `MessageBox.Show` an einer Stelle in deinem Quellcode, wird die nächste Zeile im Quellcode erst dann ausgeführt, wenn der Benutzer einen `Button` oder das `X` geklickt hat.

Der nächste Parameter in `MessageBox.Show()` ist dann die Überschrift:

```csharp
MessageBox.Show("Dieses Kästchen ist bereits belegt! Wähle ein anderes.", "Unzulässiger Zug");
```

Damit wird in der Titelzeile des Dialogs die Überschrift "Unzulässiger Zug" angezeigt (siehe Bild am Anfang des Artikels).

### Fragen stellen mit der MessageBox
Über einen weiteren Parameter in der `Show` Methode kannst du beeinflussen welche `Button` im Dialog angezeigt werden. Der Parameter hat den Typ `MessageBoxButton` welches ein `enum` mit den folgenden Werte ist:
- `OK`
- `OKCancel`
- `YesNoCancel`
- `YesNo`

Damit hast du eine gute Möglichkeit deinem Benutzer Fragen wie beispielsweise "Möchtest du die Änderungen wirklich verwerfen?" zustellen.

Nun reicht es natürlich nicht nur die `Button` anzuzeigen, sondern du möchtest bestimmt auch wissen welchen Button der Benutzer geklickt hat. Dazu gibt die `Show` Methode einen Wert vom Typ `MessageBoxResult` zurück. Die verschiedenen Werte und deren Bedeutung ist auf [Microsoft Docs](https://docs.microsoft.com/de-de/dotnet/api/system.windows.messageboxresult?view=netcore-3.1) erklärt.  Hier noch ein Beispiel:

```csharp
MessageBoxResult antwort = MessageBox.Show("Alle ungespeicherten Änderungen gehen verloren.", "Anwendung wirklich schießen?", MessageBoxButton.OKCancel);

if(antwort == MessageBoxResult.OK)
{
  System.Windows.Application.Current.Shutdown();
}
```

**Bitte beachte**, dass die Bedeutung von `MessageBoxResult` davon abhängig ist welche `MessageBoxButton` angezeigt werden. Wird nur der `MessageBoxButton.OK` angezeigt, dann kommt `MessageBoxResult.OK` zurück egal ob der Anwender den `Button` klickt, `ESC` drückt oder den Dialog über das `X` schließt. Wird jedoch `MessageBoxButton.OKCancel` angezeigt, dann kommt für `X` und `ESC` ein `MessageBoxResult.Cancel` zurück!

### Besseres Bedienerlebnis mit Image
Wie du am Anfang des Artikels gesehen hast, ist es auch möglich vordefinierte Bilder im Dialog anzuzeigen. Dazu gibt es die Auflistung `MessageBoxImage`. Die möglichen Werte kannst du dir auf [Microsoft Docs](https://docs.microsoft.com/de-de/dotnet/api/system.windows.messageboximage?view=netcore-3.1) anschauen.

Die `MessageBox` am Anfang des Artikels wurde mit folgendem Quellcode erstellt:

```csharp
MessageBox.Show("Dieses Kästchen ist bereits belegt! Wähle ein anderes.", "Unzulässiger Zug", MessageBoxButton.OK, MessageBoxImage.Error);
```

Mit solchen Bildern im Dialog machst du es dem Benutzer etwas einfacher zu erkennen worum es sich bei deinem Hinweis genau handelt.

Damit solltest du die wichtigsten Funktionen von `MessageBox.Show()` kennen. Möchtest du sie vielleicht gleich in der Praxis ausprobieren? 

<div class="subscribe-notice">
  <h5>Setze die MessageBox jetzt im kostenlosen WPF Übungskurs ein:</h5>
  <a markdown="0" href="{{ site.url }}/lernmail-kurse/wpf-tictactoe-fuer-einsteiger/" class="notice-button">Erfahre mehr >></a>
</div>


Viel Spaß auf deinem Weg vom Einsteiger zum C# Entwickler

Jan von LernMoment.de
