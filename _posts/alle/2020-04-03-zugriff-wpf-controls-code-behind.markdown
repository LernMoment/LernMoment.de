---
layout: post
title: "Eigenschaften von WPF-Steuerelementen im Quellcode setzen"
excerpt: "Eigenschaften (z.B. Text, Farbe, ...) von Steuerelementen kannst du zur Laufzeit aus dem C# Quellcode ändern."
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

Ein zentraler Aspekt der Entwicklung von Oberflächen ist, dass du zur Laufzeit Daten mithilfe der Steuerelemente auf der Oberfläche visualisieren kannst. Hier ein paar übliche Szenarien und wie sie ein Steuerelement beeinflussen können:

- Speichern von Einstellungen nur erlauben, wenn es tatsächlich Änderungen an den Einstellungen gab - Du hast das vielleicht schon bei einigen Anwendungen gesehen. Ein `Button` (z.B. *Ok* oder *Speichern*) kann erst dann angeklickt werden, wenn du in dem Fenster auch tatsächlich Änderungen vorgenommen hast.
- Anzeigen von Daten die während der Ausführung der Anwendung erzeugt werden - In einer Auftragsverwaltung gibt es beispielsweise die Möglichkeit einen neuen Auftrag anzulegen. Dieser wird dann als neuer Eintrag in einer tabellarischen Übersicht (z.B. in einem `DataGrid`) angezeigt, wenn er erfolgreich angelegt wurde.
- Anzeigen des aktuellen Verbindunsstatus zu einem Gerät (z.B. einem Server, einer Kamera, ...) - Um dem Anwender zu signalisieren ob eine Verbindung (z.B. zu einem benötigten Server) besteht, wird der Status beispielsweise in einem `Label` oder der `StatusBar` aktualisiert, wenn die Anwendung erkennt, dass die Verbindung hergestellt wurde oder abgebrochen ist.

Um diese Szenarien in *WPF* umzusetzen, gibt es folgende Möglichkeiten:
1. Verändern von Steuerelementen aus dem *code-behind* (eine Erklärung was *code-behind* ist findest du im Artikel [XAML, *.g.i.cs und code-behind in WPF](/alle/xaml-code-behind/))
2. Datenbindung

Im folgenden erkläre ich dir Möglichkeit 1 genauer. Das Thema Datenbindung gibt es dann in einem separaten Artikel.

### Steuerelemente via `sender` im EventHandler verändern
Eine Möglichkeit im *C#* Quellcode auf ein Steuerelement zu zugreifen, bietet dir jeder mit dem Steuerelement verbundene *EventHandler*. Das möchte ich dir anhand eines Beispiels zeigen. Nehmen wir dazu die Definition eines `Button` in einem `MainWindow.xaml`:

```xml
<Window x:Class="AnwendungWPF.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:AnwendungWPF"
        mc:Ignorable="d"
        Title="MainWindow" Height="500" Width="500">
  
  <Grid x:Name="einContainer">
    <Button x:Name="einTollerButton" Click="EinTollerButton_Click"/>
  </Grid>
</Window>
```

Dazu erzeugt dir *Visual Studio* automatisch (wenn du möchtest) einen *EventHandler* im *code-behind*:

```csharp
namespace AnwendungWPF
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

        private void EinTollerButton_Click(object sender, RoutedEventArgs e)
        {
        }
    }
}
```

Darin wird als erster Parameter der `sender` übergeben. Dieses ist bei allen *Events* von *WPF*-Elementen gleich. D.h. innerhalb des *EventHandlers* hast du immer Zugriff auf das Steuerelement welches den *EventHandler* zur Laufzeit aufruft. Da während der Entwicklung (damit meine ich bevor kompiliert und ausgeführt wird) noch nicht klar ist, welches konkrete Steuerelement (also insbesondere welcher Datentypen) der Aufrufer ist, hat der Parameter `sender` den Datenytyp `object`.

Möchtest du an dem aufrufendem Steuerelement etwas ändern, musst du wissen von welchem Datentyp es ist und dann kannst du den `sender` in diesen Datentyp umwandeln (im Artikel [Was macht ein Cast (Typkonvertierung / Umwandlung) in C#?](/csharp-tutorial-deutsch/typkonvertierung-mit-cast/) erkläre ich dir was das bedeutet). Da in unserem Beispiel nur der eine `Button` mit dem *EventHandler* `EinTollerButton_Click` verbunden ist, ist klar, dass es sich bei dem `sender` um einen `Button` handeln muss. Somit kannst du also den `sender` per *Cast* in einen `Button` umwandeln und dann kannst du auf seine Eigenschaften zugreifen.

Möchtest du beispielsweise den `Button` deaktivieren nachdem er geklickt wurde, dann würde dein *EventHandler* so aussehen:

```csharp
private void EinTollerButton_Click(object sender, RoutedEventArgs e)
{
  Button derSenderAlsButton = (Button)sender; // Cast auf Button -> gibt InvalidCastException, wenn sender kein Button ist!
  derSenderAlsButton.IsEnabled = false; // ab jetzt wird der Button grau dargestellt und kann nicht mehr geklickt werden.

  // hier folgt weiterer Quellcode den du bei einem Click ausführen möchtest
}
```

Wie im Kommentar geschrieben, musst du jedoch aufpassen, dass der `sender` wirklich ein `Button` ist. Ist er kein `Button` bekommst du an der Stelle eine `InvalidCastException` geschmissen. Weitere Details findest du wie gesagt im Artikel [Was macht ein Cast (Typkonvertierung / Umwandlung) in C#?](/csharp-tutorial-deutsch/typkonvertierung-mit-cast/).

### Steuerelement über das umgebende `Window` verändern
Nun hat nicht jedes Steuerelement einen *EventHandler* und du möchtest vielleicht auch an einem Steuerelement etwas verändern, wenn nicht gerade ein `Event` ausgelöst wurde. Dann kannst du im *code-behind* direkt auf das Steuerelement über seinen Namen zugreifen. Warum die Steuerelemente im *code-behind* verfügbar sind, erkläre ich dir im Artikel [XAML, *.g.i.cs und code-behind in WPF](/alle/xaml-code-behind/).

Kommen wir auf das Beispiel von eben zurück. Wenn du dir nochmals das *XAML* anschaust, siehst du, dass ich dort einen `Button` mit dem Namen `einTollerButton` angelegt habe. Nachdem die `InitializeComponent` Methode im *Konstruktor* vom `MainWindow` aufgerufen wurde, kannst du über den Namen auf das Steuerelement zugreifen:

```csharp
public partial class MainWindow : Window
{
    public MainWindow()
    {
        InitializeComponent();
        
        einTollerButton.Content = "Text auf Button!";
    }

    private void EineBeliebigeMethode()
    {
        // auch hier kann auf den Button zugegriffen werden, weil wir im Kontext des MainWindow sind.
        einTollerButton.IsEnabled = false;
    }
}
```

**Wichtig:** Durch die `InitializeComponent` Methode werden erst die ganzen Steuerelemente angelegt. Versuchst du vor dem Aufruf der Methode auf ein Steuerelement zu zugreifen, oder entfernst du den Aufruf dieser Methode, gibt es zur Laufzeit eine `NullReferenceException`!!!

### Zugriff auf Steuerelemente über den umgebenden Container
In jedem *XAML Root Element* muss mindestens ein *Container* definiert sein. Ein solcher *Container* ist beispielsweise das `Grid`-Panel (Mehr dazu im Artikel [Grundlagen des WPF Grid-Panels in XAML](/alle/wpf-grid-panel-xaml-grundlagen/)).

Steuerelemente werden nur angezeigt, wenn sie in einem *Container* enthalten sind. In *XAML* kannst du sogar ein *Steuerelement* nur innerhalb eines *Container* anlegen. Ansonsten beschwert sich der *Compiler*.

Jeder *Container* hat die Eigenschaft `Children` vom Typ `UIElementCollection`. Darin sind alle Steuerelemente enthalten, die im Kontext des *Container* definiert sind. Somit kannst du über die Eigenschaft `Children` auf die Steuerelemente zugreifen.

Um das am Beispiel zu zeigen, lege ich erstmal ein paar weitere Steuerelemente im *XAML* an (ich zeige jetzt nur noch das `Grid`, der Rest bleibt wie vorher):

```xml
<Grid x:Name="einContainer">
  <Label x:Name="einLabel" Content="Gib etwas ein:"/>
  <TextBox x:Name="eineTextBox" ToolTip="Gib einen Text ein!"/>
  <Button x:Name="okButton" Content="Ok"/>
  <Button x:Name="speichernButton" Content="Speichern"/>
</Grid>
```

Möchtest du nun beispielsweise alle Steuerelemente vom Typ `Button` deaktivieren (z.B. um erst eine Aktion auszuführen, wenn in der `TextBox` etwas eingegeben wurde), dann könntest du das so machen:

```csharp
foreach (UIElement item in einContainer.Children)
{
    if (item is Button derButton)
    {
      derButton.IsEnabled = false;
    }
}
```

Da die Eigenschaft `Children` vom Typ `UIElementCollection` ist, kannst du mithilfe der `foreach`-Schleife über alle enthaltenen Steuerelemente laufen. Um nun auf die jeweiligen Details der `UIElement` zugreifen zu können, teste ich mithilfe von `item is Button derButton` ob `item` vielleicht ein `Button` ist und wenn ja, dann deaktiviere ich ihn.

Wie du anhand des Beispiels siehst, ist diese Art des Zugriffs hauptsächlich dafür geeignet, alle Steuerelemente eines gewissen Typs zu manipulieren. Ansonsten ist der Zugriff über den *Namen* (wie im letzten Abschnitt beschrieben) wesentlich einfacher.

Nun kennst du die 3 wichtigsten Arten um auf die Steuerelemente im *code-behind* zu zugreifen. Das hier gewonnene theoretische Wissen kannst du im *WPF*-Übungskurs direkt in die Praxis umsetzen:

<div class="subscribe-notice">
  <h5>Melde dich jetzt (unverbindlich und kostenlos) für den WPF Übungskurs an:</h5>
  <a markdown="0" href="{{ site.url }}/lernmail-kurse/wpf-tictactoe-fuer-einsteiger/" class="notice-button">Los gehts >></a>
</div>


Viel Spaß auf deinem Weg vom Einsteiger zum C# Entwickler

Jan von LernMoment.de
