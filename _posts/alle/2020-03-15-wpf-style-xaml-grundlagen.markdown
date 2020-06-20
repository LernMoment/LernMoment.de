---
layout: post
title: "Grundlagen vom WPF Style Element in XAML"
excerpt: "Eine der coolsten Funktionalitäten von WPF ist das Styling. Hier lernst du die Grundlagen anhand eines Beispiels kennen."
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
date: 2020-03-21T11:00:09+01:00
---

Eine von Microsofts Kernideen bei der Erstellung von *WPF* war die Trennung von Design und Entwicklung. Vielleicht hast du auch schon eine Anwendung gesehen bei der du dachtest: "Ein Entwickler sollte nicht die Gestaltung der Oberfläche übernehmen!" Dies ist zumindest einer der Gründe warum *WPF* sowohl Designer (mithilfe von *XAML* und [*Blend for Visual Studio*](https://docs.microsoft.com/en-us/visualstudio/xaml-tools/creating-a-ui-by-using-blend-for-visual-studio?view=vs-2019)) wie auch Entwickler ansprechen will.

*WPF* bietet für Designer (oder design affine Entwickler wie uns ;) fast uneingeschränkte Möglichkeiten das Aussehen sämtlicher Steuerelemente zu verändern. Eine ganz triviale Einstellung ist beispielsweise die Hintergrundfarbe eines `Button` zu ändern:

```xml
  <Button x:Name="startButton" Content="Start" Background="#00A8C6"/>
```

Natürlich könntest du auch etwas wagen und deinem `Button` einen Farbverlauf spendieren (denk aber dran das Entwickler häufig nicht die besten Designer sind ;):

```xml
  <Button x:Name="startButton" Content="Start">
      <Button.Background>
          <LinearGradientBrush>
              <GradientStop Offset="0.0" Color="#00A8C6" />
              <GradientStop Offset="1.0" Color="#F9F2E7" />
          </LinearGradientBrush>
      </Button.Background>
  </Button>
```

Möchtest du jedoch viele `Buttons` in dieser Art anpassen (wie z.B. im kostenlosen [WPF-Übungskurs](/lernmail-kurse/wpf-tictactoe-fuer-einsteiger/)), dann führt das zu ziemlich viel kopieren und redudantem XAML-Code. Daher gibt es in WPF den `Style`.

**Merke:** Mit einem `Style` kannst du das Aussehen von Steuerelementen verändern. Dabei kann ein `Style` an zentraler Stelle zur Verfügung gestellt werden und nach verschiedenen Kriterien den existierenden Steuerelementen zugewiesen werden.

### Wie ist ein `Style` aufgebaut?
Das Aussehen von Steuerelementen wird über ihre Eigenschaften bestimmt. Ein Beispiel ist der `Background` den ich dir in den Beispielen in der Einführung bereits gezeigt habe. Das *XAML*-Element für einen `Style` ist erstmal total unspektakulär: `<Style> </Style>`. Innerhalb des `<Style>`-Elements kannst du mithilfe des `<Setter>`-Elements jeweils eine Eigenschaft auf einen spezifischen Wert setzen:

```xml
  <Style>
      <Setter Property="Button.Background" Value="#00A8C6"/>
  </Style>
```    

Mit diesem `Style` wird also der Hintergrund auf das "LernMoment-Türkis" gesetzt. Natürlich kannst du auch den Farbverlauf so umsetzen. Dazu nimmst du den `Value` aus dem Einzeiler raus und definierst ihn innerhalb des `Setter`:

```xml
  <Style>
      <Setter Property="Button.Background">
        <Setter.Value>
          <LinearGradientBrush>
            <GradientStop Offset="0.0" Color="#00A8C6" />
            <GradientStop Offset="1.0" Color="#F9F2E7" />
          </LinearGradientBrush>
        </Setter.Value>
      </Setter>
  </Style>
```    

Anstelle des `Setter` gibt es noch einige weitere spannende Elemente die du innerhalb eines `Style` verwenden kannst. Das ist jedoch Futter für einen weiteren Artikel.

Da du ein aufmerksamer Leser bist, hast du dich bestimmt schon gefragt wieso ich die `Property` im `Setter` auf `Button.Background` und nicht einfach `Background` gesetzt habe. Um diese Frage zu lösen schauen wir uns erstmal an wie ein `Style` einem Steuerelement zugewiesen wird.

### Einen definierten `Style` zuweisen
Grundsätzlich gibt es 2,5 Möglichkeiten wie du definierst welches Steuerelement welchen `Style` bekommt:

1. Zuweisung zu allen Steuerelementen eines `TargetType`
2. Explizite Zuweisung mit `x:Key`

Okay, das sind nun nur 2. Was ist also mit der 0,5? Ganz einfach:

> **Merke:** Unabhängig vom verwendeten `Style` hat die Definition an einem Steuerelement immer vorang!

Definierst du also den `Background` über einen `Style` als rot, weist diesen `Style` einem `Button` zu und änderst an dem `Button` den `Background` auf weiß, dann wird der Hintergrund des `Button` weiß sein.

Nun schauen wir uns jedoch die ersten beiden Möglichkeiten im Detail an.

#### Allgemeine Zuweisung per `TargetType`
Möchtest du alle Steuerelemente eines Typs (z.B. `Button` oder `Label`) mit dem gleichen Aussehen gestalten, dann verwendest du den `TargetType`:

```xml
  <Style TargetType="Button">
      <Setter Property="Background" Value="#00A8C6"/>
  </Style>
```    

Mit dieser Definition bekommt einfach jeder `Button` im Geltungsbereich (dazu gleich mehr) des `Style` den türkisenen Hintergrund. Du kannst also einfach einen `Button` (z.B. in einem `Grid`) anlegen und dieser wird dann automatisch entsprechend des `Style` dargestellt:

```xml
  <Grid>
    <Button Content="Drück mich!"/>
  </Grid>
```

Wenn du dir den `Setter` genau ansiehst, dann merkst du, dass dort plötzlich `Background` steht und nicht `Button.Background`. Das liegt daran, dass nun klar ist, dass dieser `Style` nur für `Button` verwendet wird. Der Compiler kann also überprüfen ob der `Button` eine Eigenschaft `Background` hat (was er hat) und alles ist gut.

Im vorherigen Beispiel wurde kein `TargetType` angegeben und somit weiß der Compiler nicht auf was für eine Klasse sich die Eigenschaft bezieht. Dazu mehr beim Thema `x:Key`.

#### Explizite Zuweisung per `x:Key`
Nicht immer ist es sinnvoll alle Instanzen eines Steuerelements gleich zu gestalten. Vielleicht möchtest du jeden *Ok*-`Button` speziell hervorheben. Dann kannst du einen `Style` mit einem eindeutigen Schlüssel definieren:

```xml
  <Style x:Key="okStyle">
      <Setter Property="Button.Background" Value="#00A8C6"/>
  </Style>
```    

Nun reicht es jedoch nicht mehr aus einfach nur einen `Button` anzulegen, sondern du musst explizit sagen, dass dieser den `Style` bekommen soll:

```xml
  <Grid>
    <Button Content="Ok" Style="{StaticResource okStyle}"/>
    <Button Content="Drück mich!"/>
  </Grid>
```

So wird also der erste `Button` mit türkisenem Hintergrund dargestellt und der zweite Button ganz normal.

In dieser Art der Zuweisung ist allerdings für den Compiler nicht ersichtlich welchem Steuerelement der `Style` zugewiesen wird. Damit kann er auch nicht überprüfen ob es die entsprechenden Eigenschaften im `Style` überhaupt am Steuerelement gibt.

Verwendest du also diese explizite Art der Zuweisung, dann musst du bei der `Property` nicht nur den Namen der Eigenschaft angeben, sondern auch den Klassennamen des Steuerelements (also z.B. `Button.Background`).

**Pro-Tipp:** Manchmal möchtest du vielleicht das Aussehen verschiedener Steuerelemente beeinflussen die auch alle eine gewisse Eigenschaft haben. Dann kannst du in der Vererbungshierarchie der Steuerelemente nach oben gehen. Viele Steuerelemente werden beispielsweise von der Klasse `Control` abgeleitet. Wenn du die Eigenschaften der Klasse `Control` anschaust, dann siehst du, dass es dort beispielsweise `Background` und auch viele `Font`-bezogene Eigenschaften gibt. Möchtest du also beispielsweise einen Style erstellen der sowohl für `Button` wie auch `Label` verwendet werden kann, dann würde das so aussehen:

```xml
  <Style x:Key="proStyle">
      <Setter Property="Control.Background" Value="#00A8C6"/>
  </Style>
```    

Über den Schlüssel `proStyle` kannst du nun den verschiedesten Steuerelementen einen türkisenen Hintergrund verpassen.

### Wo ist ein `Style` verfügbar?
Eben habe ich bereits erwähnt, dass es einen Geltungsbereich für einen `Style` gibt. Der Ort an dem du einen `Style` definierst legt auch zugleich seinen Geltungsbereich fest:

1. Lokal am Steuerelement - Es ist tatsächlich möglich an einem Steuerelement einen `Style` zu definieren. Dieser wäre dann auch nur für das jeweilige Steuerelement gültig. Daher ist es relativ sinnlos, weil du ein einzelnes Steuerelement viel leichter über seine Eigenschaften anpassen kannst als über `Style`, `Setter` usw.
2. Am umgebenden Container - Der visuelle Bereich einer *WPF*-Anwendung ist hierarchisch aufgebaut. Die oberste Ebene ist die `App`. Darin enthalten sind ein oder mehrere `Window`. Darin enthalten sind wiederum Steuerelement wie das `Grid` oder auch `StackPanel` die als Container weitere Steuerelemente enthalten. Auf jeder Ebene gibt es den `Resources` Bereich und in diesem kannst du einen `Style` definieren.

Hier nun ein paar Beispiele für die Definition unseres `Style` auf unterschiedlichen Ebenen.

#### `App` in App.xaml
In jedem *WPF*-Projekt gibt es die Datei `App.xaml`. Sie ist die oberste Ebene. Wenn du hier einen `Style` definierst ist dieser innerhalb deiner kompletten Anwendung verfügbar:

```xml
<Application x:Class="TicTacToeWPF.App" 
     xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
     xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
     StartupUri="MainWindow.xaml">
  <Application.Resources>
    <Style TargetType="Button">
        <Setter Property="Background" Value="#00A8C6"/>
    </Style>
  </Application.Resources>
</Application>
```

#### `Window` z.B. in MainWindow.xaml
Jedes *WPF*-Projekt hat mindestens ein `Window`. Definierst du einen `Style` an einem `Window` dann ist er "nur" innerhalb dieses Fensters verfügbar. 

```xml
<Window x:Class="TicTacToeWPF.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:TicTacToeWPF"
        mc:Ignorable="d"
        Title="LernMoments TicTacToe in WPF" Height="500" Width="500">

    <Window.Resources>
        <Style x:Key="türkiserButton">
            <Setter Property="Button.Background" Value="#00A8C6"/>
        </Style>
    </Window.Resources>
</Window>
```

#### `StackPanel` in einem `Grid` in einem `Window`
Möchtest du noch weiter runter gehen und den `Style` nur in einem Teil eines Fensters verwenden, dann kannst du dieses auch machen:

```xml
  <Grid>
    <StackPanel x:Name="ersterStack">
      <StackPanel.Resources>
          <Style x:Key="türkiserButton">
              <Setter Property="Button.Background" Value="#00A8C6"/>
          </Style>
      </StackPanel.Resources>
    </StackPanel>
    <StackPanel x:Name="zweiterStack">
      </StackPanel.Resources>
    </StackPanel>
  </Grid>
```

Mit dieser Definition ist der `Style` im `ersterStack` verfügbar, aber nicht im `zweiterStack`. Allerdings wird es wohl wirklich wenig Anwendungsfälle geben wo du diese Variante einsetzen kannst.

Möchtest du das hier gelernte direkt in die Praxis umsetzen? Dann probiere meinen WPF-Übungskurs aus. Schon in der 2. Einheit geht es um das Styling.

<div class="subscribe-notice">
  <h5>Melde dich jetzt für den kostenlosen WPF Übungskurs an:</h5>
  <a markdown="0" href="{{ site.url }}/lernmail-kurse/wpf-tictactoe-fuer-einsteiger/" class="notice-button">Los gehts >></a>
</div>

So viel erstmal zu den absoluten Grundlagen im Bereich `Style`. Es gibt noch viel mehr spannende Funktionalitäten wie beispielsweise:
- Definition eines `Style` in einer separaten Datei (z.B. `MeinCoolerButtonStyle.xaml`) der dann auch zwischen verschiedenen Projekten ausgetauscht werden kann. Damit ist beispielsweise auch eine Art einheitliche "Design-Bibliothek" für alle Anwendungen in einer Firma realisierbar.
- Änderung des Aussehens von Controls anhand von definierten Ereignissen oder Werten einer bestimmten Variable.
- Animationen

Viel Spaß auf deinem Weg vom Einsteiger zum C# Entwickler

Jan von LernMoment.de
