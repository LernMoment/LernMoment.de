---
layout: post
title: "XAML, *.g.i.cs und code-behind in WPF"
excerpt: "Zu jeder XAML-Datei gibt es eine code-behind Datei. In diesem Artikel erfährst du alles über die Zusammenhänge und dazugehörige Code-Generierung."
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
date: 2020-04-02T11:00:09+01:00
---

Mmmmmoin und willkommen zu deinem LernMoment!

Das Aussehen einer *WPF*-Anwendung definierst du überlicherweise in *XAML*. Neben (dem bevorzugten Weg) der Datenbindung, hast du auch die Möglichkeit deiner Anwendung Leben einzuflößen, in dem du *EventHandler* und weitere Logik im *code-behind* definierst. Doch was ist überhaupt *code-behind*, wie ist der Zusammenhang mit *XAML* und warum ist es möglich im *code-behind* auf die Steuerelemente zu zugreifen? Das alles erfährst du in diesem Artikel.

### XAML und das code-behind
![Dateien im Projektmappen-Explorer]({{ site.url }}/images/xaml-code-behind/projektmappen-explorer.jpg)
{: .pull-right}

Jede *XAML*-Datei in *WPF* hat eine mit ihr verbundene *C#*-Quellcodedatei. Im gezeigten Beispiel siehst du eine `MainWindow.xaml`. Klappst du den Knoten im *Projektmappen-Explorer* auf, dann findest du dort die `MainWindow.xaml.cs`. Diese Datei wird auch *code-behind* genannt. Der Name kommt aus der Überlegung, dass es der (*C#*)-Quellcode hinter einem `XAML`-Container ist. 

Um das etwas genauer zu verstehen, schauen wir uns die initiale `MainWindow.xaml` an:

```xml
<Window x:Class="TicTacToeWPF.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:TicTacToeWPF"
        mc:Ignorable="d"
        Title="MainWindow" Height="500" Width="500">
  <Grid>
  </Grid>
</Window>
```

In dieser *XAML*-Datei ist das `Window` das *Root Element*. Jede *XAML*-Datei benötigt genau ein *Root Element* welches das äußerste *XAML*-Element ist. In *WPF* wird üblicherweise eines der folgenden Elemente als *Root* verwendet:
- `<Page>` – Eine Seite mit Inhalten die in einem Browser angezeigt werden können (System.Windows.Controls.Page)
- `<Window>` – Ein WPF-Fenster (System.Windows.Window)
- `<Application>` – Eine WPF-Anwendung (System.Windows.Application)
- `<ResourceDictionary>` – Eine Sammlung von Ressourcen (System.Windows.ResourceDictionary)
- `<UserControl>` – Ein benutzerdefiniertes Steuerelement (System.Windows.Controls.UserControl)

Für dieses *Root Element* ist nun in der *XAML*-Datei, mithilfe des `x:Class` Attributs, definiert welche Klasse den zugehörigen *code behind* beinhaltet. In folgendem Quellcode siehst du, wie die Verbindung zwischen dem *XAML*-Element `Window` und der Klasse `MainWindow` in der Datei `MainWindow.xaml.cs` hergestellt wird:

```csharp
namespace TicTacToeWPF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
    }
}
```

Wie du siehst wird die Klasse `MainWindow` von der Klasse `Window` abgeleitet. Vereinfacht gesagt, gibt es also passend zum `Window` als *Root Element* in *XAML* die *C#*-Klasse `Window`.

### Alles ist ein Objekt!
Mit dem Aufruf der Methode `InitializeComponent` im Konstruktor von `MainWindow` kommen wir nun zum Abschluss dieses Ausflugs in die Theorie. Diese Methode zusammen mit einem *Code-Generator* ist das Bindeglied zwischen dem was du in deiner *XAML*-Datei definierst und dem was du im dazugehörigen *code-behind* verwenden kannst. Klappst du die Datei `MainWindow.xaml.cs` im *Projektmappen-Explrer* weiter auf, dann siehst du zum einen die Klasse `MainWindow`, aber auch die darin enthaltenen Attribute (Microsoft spricht hier von Feldern) und Methoden. Schaust du dir nun über einen Doppelklick den Quellcode der Methode `IntializeComponent` an, dann öffnet dir *Visual Studio* die Datei `MainWindow.g.i.cs`.

In den ersten Zeilen dieser Datei steht, dass es sich um eine automatisch generierte Datei handelt. Dieses kannst du sehen, wenn du dir den Inhalt der Datei anschaust, dann in der `MainWindow.xaml` ein Steuerelement hinzufügst und dir nochmals den Inhalt der Datei `MainWindow.g.i.cs` anschaust. Mit jeder Änderung der `*.xaml`-Datei, generiert *Visual Studio* die `*.g.i.cs` neu. Zwischen vielen (für uns) unwichtigen Informationen kannst du sehen, dass in dieser Datei die tatsächlichen Instanzen der Steuerelemente angelegt werden. Hier ein Beispiel:

```csharp
#line 36 "..\..\..\MainWindow.xaml"
[System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
internal System.Windows.Controls.Button kaestchen_0_0;
```

Mit diesem Quellcode aus meiner `MainWindow.g.i.cs` wird nun der `Button` mit dem Bezeichner `kaestchen_0_0` angelegt. Für das weitere Verständnis wichtig ist noch in welcher Klasse diese Instanz angelegt wird:

```csharp
namespace TicTacToeWPF {    
    
    /// <summary>
    /// MainWindow
    /// </summary>
    public partial class MainWindow : System.Windows.Window, System.Windows.Markup.IComponentConnector {
// den weiteren Quellcode lass ich aus platzgründen weg.
```

Setzt du nun die einzelnen Puzzleteile zusammen, dann siehst du, dass ein Teil der Klasse `MainWindow` in der Datei `MainWindow.xaml.cs` definiert ist und ein weiterer Teil dieser Klasse in der Datei `MainWindow.g.i.cs`. Da in beiden Klassen das Schlüsselwort `partial` verwendet wird, weiß der *Compiler* nun, dass es sich um eine Klasse handelt die in 2 Dateien definiert ist.

Fazit:
1. Es ist elementar, dass du verstehst, dass jedes Element (sowohl *Root Element* wie auch alle darin enthaltenen *Elemente*) letztlich im *C#*-Quellcode als Instanzen der jeweiligen Klassen angelegt werden.
2. Jedes Steuerelement aus einer *XAML*-Datei wird automatisch als Attribut im umgebenden *Root Element* im *C#*-Quellcode instanziiert.
3. Die Werte die du für Steuerelemente in einer *XAML*-Datei definierst, werden durch einen *Code-Generator* letztlich an die Instanzen (siehe 2.) übergeben.

<div class="subscribe-notice">
  <h5>Hast du die Schnauze voll von Theorie?</h5>
  <h5>Melde dich jetzt für den kostenlosen WPF Übungskurs an:</h5>
  <a markdown="0" href="{{ site.url }}/lernmail-kurse/wpf-tictactoe-fuer-einsteiger/" class="notice-button">Los gehts >></a>
</div>


Viel Spaß auf deinem Weg vom Einsteiger zum C# Entwickler

Jan von LernMoment.de
