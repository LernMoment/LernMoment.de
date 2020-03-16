---
layout: post
title: "Grundlagen des WPF Grid-Panels in XAML"
excerpt: "Einer der wichtigsten Container in XAML ist das WPF Grid Panel. Damit kannst du Controls in Tabellenform anordnen und vieles mehr."
categories: alle
lernmoment: C#
lm-newsletter-group-id: 1
share: false
show-lm-newsletter-subscribe-box: true
tags: [WPF, XAML, Controls]
image:
  feature: csharp-tutorial-feature.jpg
modified:
date: 2020-03-15T11:00:09+01:00
---

Jedes `Window` in einer *WPF-App* wird standardmäßig mit einem `Grid` erstellt. Wie die anderen `Panel` Steuerelemente auch, handelt es sich dabei um einen `Container`. Du benötigst in einem `Window` immer ein `Container` Steuerelement in welches du weitere Steuerelement "stecken" kannst.

Mit einem `Grid` kannst du:
- andere Steuerelemente in Tabellenform (also Zeilen und Spalten) anordnen
- ein Steuerelement in eine spezifische Zelle setzen
- ein Steuerelement über mehrere Zellen anordnen
- mehrere Steuerelemente übereinander anordnen
- sicherstellen, dass enthaltene Steuerelemente ihre Größe proportional anpassen

Um dir die verschiedensten Möglichkeiten zu zeigen möchte ich [hier](https://github.com/LernMoment/wpf-tutorial-deutsch) einen kleinen *WPF-YouTube-Player* entwickeln. So wird das gute Stück aussehen, wenn es fertig sind:

![Fertige WPF Oberfläche des WPF YouTube Player]({{ site.url }}/images/wpf-youtube-player-grid-grundlagen.jpg)

Im folgenden zeige ich dir immer einzelne Ausschnitte vom *XAML* und erkläre dir was dadurch passiert. Du weißt nicht was *XAML* bedeutet und wo du es in Visual Studio 2019 eingibst? Dann kann ich dir [diesen praktischen und kostenlosen Einstieg in WPF](https://youtu.be/ugji-_yWoRk?t=175) empfehlen.

**Quellcode:** Den kompletten Quellcode zu dem Beispiel findest du [hier](https://github.com/LernMoment/wpf-tutorial-deutsch).

### Allgemeine Einstellungen am Grid
Bevor wir damit beginnen die einzelnen Spalten und Zeilen anzulegen und mit Steuerelementen zu füllen, will ich dir erstmal ein paar grundlegende Einstellungen am `Grid` zeigen.

```xml
<Grid x:Name="einGrid" Background="Gainsboro" ShowGridLines="True">
</Grid>
```

Wie du sehen kannst habe ich für das `Grid` in dem Beispiel die folgenden Eigenschaften verwendet:
- `x:Name="einGrid"` - wie bei allen *XAML* Elementen wird damit für dieses spezifische Steuerelemente ein Namen gesetzt mit dem wir später aus dem Quellcode das Steuerelement ansprechen können. Hier habe ich den sehr kreativen Namen *einGrid* gewählt.
- `Background="Gainsboro"` - Damit setzen wir die Hintergrundfarbe des Grids (in diesem Fall auf `Gainsboro`). Diese wird überall dort sichtbar wo kein Steuerelement platziert ist, oder ein Steuerelement teilweise durchsichtig ist. Das siehst du später z.B. beim `Label`. Im *XAML-Editor* werden dir bereits viele Farben vorgeschlagen und du kannst auch direkt *RGB*-Werte eingeben.
- `ShowGridLines="True"` - Damit wird definiert, dass gestrichelte Linien angezeigt werden. D.h. die Grenzen von Spalten und Zeilen werden damit visualisiert. Das ist meistens nur für Testanwendungen wie diese notwendig oder wenn du einen Fehler in deinem Layout suchst.

*Hinweis:* Solltest du den Drang verspüren wesentlich mehr Formatierung (z.B. unterschiedliche Farben für unterschiedliche Zellen oder Zeilen) einzufügen, bist du wahrscheinlich beim falschen Steuerelemente gelandet. Das `Grid` ist **nicht** zur Anzeige von Daten (dabei ist eine solche Formatierung ja wirklich hilfreich). Möchtest du Daten anzeigen und die Anzeige formatieren, dann solltest du besser das `DataGrid` verwenden.


### Spalten und Zeilen für das `Grid` in *XAML* definieren
Wie gesagt ist das `Grid` ein *Container* und alles was du im `Grid` darstellen möchtest musst du zwischen `<Grid ...>` und `</Grid>` schreiben. Um dem `Grid` zusagen welche Spalten und Zeilen benötigt werden habe ich in der Beispielanwendung folgendes definiert:

```xml
<Grid x:Name="einGrid" Background="Gainsboro" ShowGridLines="True">
  <Grid.ColumnDefinitions>
      <ColumnDefinition Width="Auto"/>
      <ColumnDefinition Width="*"/>
      <ColumnDefinition Width="*"/>
      <ColumnDefinition Width="*"/>
      <ColumnDefinition Width="Auto"/>
  </Grid.ColumnDefinitions>
  <Grid.RowDefinitions>
      <RowDefinition Height="Auto"/>
      <RowDefinition Height="Auto"/>
      <RowDefinition Height="*"/>
      <RowDefinition Height="Auto"/>
  </Grid.RowDefinitions>
</Grid>
```

Zwischen `<Grid.ColumnDefintions>` und `</Grid.ColumnDefintions>` werden die einzelnen Spalten angelegt. Wie du hier siehst habe ich 5 Spalten verwendet. Für jede Spalte kannst du definieren wieviel Platz einer Spalte im Layout zugeordnet wird. Dabei kannst du folgende Werte verwenden:
- `Auto` - eine Spalte wird so Breit wie der in ihr enthaltene Inhalt benötigt. Dabei wird über alle Zeilen geschaut und der breiteste Inhalt verwendet.
- Absoluter Wert (z.B. `Width="30"`) - die Spalte wird exakt so viele Pixel breit wie du angibst. In dem Beispiel also *30* Pixel
- `*` - Nachdem für ein Layout die Spalten mit `Auto` und *absoluter Wert* verwendet wurden, bleibt auf die gesamte Breite des `Grid` gesehen noch eine freie Fläche. Diese wird nun gleichmäßig zwischen allen Spalten aufgeteilt die Ihre Breite auf `*` gesetzt haben. In unserem Beispiel werden also die 2. bis 4. Spalte die exakt gleiche Breite haben. Wie breit sie genau sind hängt davon ab wieviel Platz die 1. und 5. Spalte einnehmen.

Die Definition der Zeilen geht genau wie die der Spalten halt nur mit `<Grid.RowDefinitions>` und `<RowDefinition>`.

*Hinweis:* für die "Größenangabe" `*` gibt es noch eine Erweiterung. Schreibst du bei einer Spalte (oder Zeile) eine Zahl vor den `*`, also z.B. `3*`, bedeutet das, dass diese Spalte dreimal soviel Platz bekommt wie eine Spalte die `*` gesetzt ist. Daraus ergibt sich, dass `*` die kurzschreibweise für `1*` ist.

### Steuerelemente den Zellen zuweisen
Nun könntest du einfach Steuerelemente in das `Grid` einfügen:

```xml
<Grid x:Name="einGrid" Background="Gainsboro" ShowGridLines="True">
  <Grid.ColumnDefinitions>
      <!--ColumnDefinition siehe oben -->
  </Grid.ColumnDefinitions>
  <Grid.RowDefinitions>
      <!--RowDefinition siehe oben -->
  </Grid.RowDefinitions>

  <Label Content="Ein Text"/>
  <Label Content="Ein anderer Text"/>
</Grid>
```

Dann siehst du allerdings, dass alles oben links in die erste Spalte und erste Zeile gesetzt wird. Um die verschiedenen Steuerelemente nun wirklich den einzelnen Zellen zuweisen zukönnen, musst du für jedes Steuerelement definieren in welcher Zeile und welcher Spalte es angezeigt werden soll:

```xml
<Grid x:Name="einGrid" Background="Gainsboro" ShowGridLines="True">
  <Grid.ColumnDefinitions>
      <!--ColumnDefinition siehe oben -->
  </Grid.ColumnDefinitions>
  <Grid.RowDefinitions>
      <!--RowDefinition siehe oben -->
  </Grid.RowDefinitions>

  <!--Zeile 0-->
  <Image Source="LernMomentIcon.png" Grid.Column="0" Grid.Row="0"/>
  <TextBlock Text="EinText" Grid.Column="1" Grid.Row="0"/>
  
  <!--Zeile 1-->
  <Label Content="Öffne:" Grid.Row="1" Grid.Column="0"/>
  <TextBox x:Name="YoutubeUrlTextBox" Grid.Row="1" Grid.Column="1"/>
  <Button x:Name="okButton" Content="Ok" Grid.Row="1" Grid.Column="4"/>
</Grid>
```

Die relevanten Eigenschaften sind also:
- `Grid.Column` - damit wird an einem Steuerelemente definiert in welcher **Spalte** es angezeigt werden soll. **Wichtig:** die erste Spalte (also ganz links) hat den Index 0!
- `Grid.Row` - damit wird an einem Steuerelemente definiert in welcher **Zeile** es angezeigt werden soll. **Wichtig:** die erste Zeile (also ganz oben) hat den Index 0!

Insbesondere wenn du viele Steuerelemente in einem `Grid` hast, dann kann es also schon etwas unübersichtlich werden. Daher habe ich in diesem Beispiel auch per *XAML*-Kommentar (`<!--Zeile 0-->`) festgehalten in welcher Zeile die folgenden Steuerelemente angezeigt werden. Für Visual Studio ist das zwar total egal, aber es hilft mir (mit ein wenig Disziplin ;) den Überblick zubehalten.

### Zeilenübergreifende/Spaltenübergreifende Steuerelemente
Häufig, wie auch in diesem Beispiel, ist es notwendig, dass du einzelne Steuerelemente über mehrere Spalten und/oder mehrere Zeilen in das `Grid` einfügst. Dazu gibt es die Eigenschaften `<Grid.ColumnSpan>` und `<Grid.RowSpan>`. Wenn du dir nochmals das Bild vom Artikelanfang anschaust, siehst du, dass sowohl der `TextBlock` in der ersten Zeile, wie auch die `TextBox` in der zweiten Zeile über mehrere Zeilen gehen. Daraus ergibt sich folgende Definition:

```xml
<!--Zeile 0-->
<Image Source="LernMomentIcon.png" Grid.Column="0" Grid.Row="0"/>
<TextBlock Text="Spielt YouTube Videos direkt in der Anwendung ab. Gib einfach die YouTube-URL ein und drücke 'Enter' oder klicke 'Ok'." 
            Grid.Column="1" Grid.ColumnSpan="4" Grid.Row="0"/>

<!--Zeile 1-->
<Label Content="Öffne:" Grid.Row="1" Grid.Column="0"/>
<TextBox x:Name="YoutubeUrlTextBox" VerticalAlignment="Center" 
          Grid.Row="1" Grid.Column="1" Grid.ColumnSpan="3"/>
<Button x:Name="okButton" Content="Ok" Grid.Row="1" Grid.Column="4"/>
```

Hier kannst du sehen, dass der `TextBlock` in der ersten Zeile mithilfe von `Grid.ColumnSpan="4"` den kompletten Platz (mit Ausnahme der ersten Spalte) einnimmt. Bei der `TextBox` in der zweiten Teile verwende ich `Grid.ColumnSpan="3"`, weil in der letzten Spalte noch der `Button` angezeigt werden soll.

Hier kannst du dir merken, dass du erst definierst in welcher Spalte/Zeile das Steuerelemente starten soll und dann gibst an, über wieviel Spalten/Zeilen das Steuerelement insgesamt gehen soll.

### Margin - Bitte Abstand halten
Wenn du meine finale Version der *XAML*-Datei siehst, wirst du entdecken, dass ich an einigen Steuerelementen die Eigenschaft `Margin` verwendet habe. Diese Eigenschaft ist nicht spezifisch für das `Grid`, aber hilft dir auch hier das Layout zu verbessern. Nehmen wir z.B. die Definition des `okButton`:

```xml
  <Button x:Name="okButton" Content="Ok" Grid.Row="1" Grid.Column="4" Margin="2,2,2,2"/>
```

Hier der `Button` im fertigen Layout **mit** Margin:
![Ok-Button des WPF YouTube Players mit Margin]({{ site.url }}/images/wpf-youtube-player-okbutton-mit-margin.png)

Mit dieser Definition der `Margin` sage ich, dass an allen Seiten (oben, rechts, unten, links) des `Button` zusätzlich 2 Pixel Platz gelassen werden soll. Damit wird nicht der `Button` kleiner, sondern für die anderen Elemente im `Grid` steht weniger Platz zur Verfügung. Für die Optik bedeutet dies aber einen wesentlichen Gewinn. 

Hier der `Button` im fertigen Layout **ohne** Margin:
![Ok-Button des WPF YouTube Players mit Margin]({{ site.url }}/images/wpf-youtube-player-okbutton-ohne-margin.png)

Diese letzteres Version ist für mich weniger attraktiv.

### Alignment - Position eines Steuerelements in der Zelle
Nun wollen wir uns noch um die Eigenschaften `VerticalAlignment` und `HorizontalAlignment` kümmern. Wie bei der `Margin` sind dies keine Eigenschaften die spezifisch für das `Grid` sind. Jedoch haben sie einen Einfluss auf das Layout im `Grid`.

Wie du an den beiden Bildern im vorherigen Kapitel sehen konntest nimmt die `TextBox` nicht die komplette Höhe der Zeile ein. Dabei habe ich kein `Margin` definiert:

```xml
<!--Zeile 1-->
<TextBox x:Name="YoutubeUrlTextBox" VerticalAlignment="Center" 
          Grid.Row="1" Grid.Column="1" Grid.ColumnSpan="3"/>
```

Allerdings habe ich dort die Eigenschaft `VerticalAlignment` auf `Center` gesetzt. Für das *Alignment* (*Horizontal* wie auch *Vertical*) gibt es die folgenden Werte:
- `Bottom` - Das Steuerelement wird am unteren Rand der Zelle platziert und nimmt nach oben soviel Platz ein wie sein Inhalt benötigt.
- `Center` - Das Steuerelement wird mittig in der Zelle platziert und nimmer dort soviel Platz ein wie sein Inhalt benötigt.
- `Stretch` - Das Steuerelement nimmt die komplette Zelle ein (unabhängig von dem tatsächlich benötigten Platz). Dieses ist der **Standardwert**.
- `Top` - Das Steuerelement wird am oberen Rand platziert und nimmt nach unten soviel Platz ein wie sein Inhalt benötigt.

Die Unterschiede kannst du anhand der `TextBox` sehr gut sehen. Wie hoch die `TextBox` ist, wird durch die Schriftgröße bestimmt. Verwendest du also wie in unserem Beispiel `VerticalAlignment="Center"`, dann bleiben in der Zelle oben und unten einige Pixel frei. Das liegt daran, dass in der Zelle mehr Platz in der Höhe ist (bedingt durch die Höhe des `okButton` der in der gleichen Zeile liegt), als die verwendete Schriftgröße benötigt. Würdest du beispielsweise die `FontSize` auf den Wert `20` setzen, dann würdest du sehen, dass die komplette Höhe der Zeile anwächst (weil für die Zeile `Height="Auto"` definiert ist) und das die `TextBox` wieder die ganze Höhe einnimmt.

Definierst du in diesem Beispiel nichts für `VerticalAlignment`, dann wird der Standardwert (`Stretch`) genommen. Somit wird zwar die `TextBox` in der kompletten Zelle angezeigt, aber ein enthaltener Text wird am oberen Rand gezeigt. Das sieht auch etwas komisch aus. 

![TextBox WPF YouTube Players mit VerticalAlignment=Stretch]({{ site.url }}/images/wpf-youtube-player-text-bei-stretch.png)

*Hinweis:* Noch spannendere Effekte bekommst du bei der `TextBox`, wenn du die `HorizontalAlignment` auf einen anderen Wert als `Stretch` setzt. Dann ist die `TextBox` nämlich fast nicht mehr sichtbar, wenn kein Text enthalten ist. Das liegt daran, dass für die Bestimmung des Platzbedarfs in der Breite der Text relevant ist. Die `TextBox` wird zwar breiter, wenn du darin tippst, aber das ist eine Oberflächengestaltung, die du wahrscheinlich nicht haben möchtest. Möchtest du einfach den Text in der Mitte positionieren, dann kannst du die Eigenschaft `TextAlignment` verwenden. Dort gibt es den Wert `Center` mit dem der Text mittig (bezogen auf die Breite der `TextBox`) positioniert wird.

### Steuerelemente übereinander platzieren
Bisher haben wir die Steuerelemente entlang der *X*- und *Y*-Achse platziert. Das `Grid` bietet aber auch die Möglichkeit Steuerelemente übereinander, also quasi entlang der *Z*-Achse, zu positionieren. Ob es wirklich viele Anwendungsfälle gibt überlasse ich dir. Einen habe ich jedoch und den möchte ich dir hier vorstellen:

```xml
<!--Zeeile 2-->
<cef:ChromiumWebBrowser x:Name="YouTubePlayer" Address="https://www.youtube.com/channel/UC5jCUQ6IPHtQP5r4y9byCqA"
                        Grid.Row="2" Grid.Column="1" Grid.ColumnSpan="3" Margin="5,5,5,5"/>
<Label x:Name="HinweisLabel" Grid.Row="2" Grid.Column="0" Grid.ColumnSpan="5" Content="Hinweis: Ein Ersatz für die MessageBox" 
        FontSize="35" FontWeight="Bold" HorizontalAlignment="Center" VerticalAlignment="Center"
        Background="#E5D5F3EB" Visibility="Hidden"/>
```

Wie bisher auch ist das `ChormiumWebBrowser` Steuerelement zentral in Zeile 2 angesiedelt. Außerdem habe ich bisher Nachrichten an den Benutzer über eine `MessageBox` ausgegeben. Es gibt allerdings auch einen visuell ansprechenderen Weg. Den habe ich hier mit dem `HinweisLabel` umgesetzt.

Wenn du der gleichen Zelle (oder auch mehreren Zellen wie in diesem Fall) mehrere Steuerelemente zuweist, dann werden sie während dem Layout übereinander platziert. Dabei ist die Reihenfolge in der sie in der *XAML*-Datei stehen von Relevanz. Das Steuerelement welches zu erst in der Datei steht wird als unterstes angezeigt. In unserem Beispiel wird also erst der *Browser* und dann das `Label` angezeigt.

Um nun den Effekt zu bekommen, dass das `HinweisLabel` nur für einen Hinweis angezeigt wird, verwende ich die `Visibility` Eigenschaft. Diese steht erstmal auf `Hidden`, also versteckt, und wird bei Bedarf aus dem Quellcode heraus auf `Visible` und nach einigen Sekunden zurück auf `Hidden` gesetzt. Wie das genau geht, siehst du [hier im Quellcode](https://github.com/LernMoment/wpf-tutorial-deutsch/blob/1f08c0ed79f2f51e5dbbd336dfca693eb9b5f619/GridGrundlagen/MainWindow.xaml.cs#L37).

### Zusätzliche Ressourcen
Solltest du noch weiteren Klärungsbedarf zum `Grid` haben, dann kann ich dir diese Ressourcen empfehlen:
- [Das Grid-Steuerelement - Openbook vom Rheinwerk Verlag](http://openbook.rheinwerk-verlag.de/visual_csharp_2012/1997_19_001.html#dodtp55f29b28-56fc-4781-943e-56e903b0bd27)
- [Übersicht über Panel-Elemente - Microsoft Docs](https://docs.microsoft.com/de-de/dotnet/framework/wpf/controls/panels-overview)
- [Die Grid Klasse - Microsoft Docs](https://docs.microsoft.com/de-de/dotnet/api/system.windows.controls.grid?view=netcore-3.1)

Ich hoffe dieser Artikel hat dir geholfen. Wenn du Fragen oder Rückmeldung dazu hast, dann [freue ich mich über eine Mail](mailto:jan@lernmoment.de).

Viel Spaß auf deinem Weg vom Einsteiger zum C# Entwickler

Jan von LernMoment.de
