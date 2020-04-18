---
layout: post
title: "WPF-Steuerelementen deaktivieren und verstecken"
excerpt: "Die Eigenschaften Visibility und IsEnabled verändern das Aussehen und Verhalten eines Controls."
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
date: 2020-04-18T09:00:09+01:00
---

Mmmmmoin und willkommen zu deinem LernMoment!

Im [WPF-Übungskurs für Einsteiger](/lernmail-kurse/wpf-tictactoe-fuer-einsteiger/) ist eine Aufgabe einen Hinweis in einem `Label` anzuzeigen. Grundsätzlich ist das erstmal keine Herausforderung, weil die einzige Aufgabe die ein `Label` hat, ist einen Text anzuzeigen 😁. Da das `Label` in diesem Fall jedoch über anderen Steuerelementen liegt, soll es ausgeblendet werden, solange kein Hinweis angezeigt wird.

Doch wie kann ein `Label` oder auch jedes anderen Steuerelement eigentlich ausgeblendet werden? Wenn du die Suchmaschine deines Vertrauens fragst, kommst du ziemlich schnell auf eine von 2 Eigenschaften:
 - `IsEnabled` - Gibt an ob ein Steuerelement aktiv ist
 - `Visibility` - Gibt an ob ein Steuerelement sichtbar ist

Dabei ist es wichtig zu verstehen, dass Aktivierung und Sichtbarkeit zwei unterschiedliche Dinge sind.

### Steuerelemente deaktivieren `IsEnabled`
Wenn du ein Steuerelement über `IsEnabled = false` deaktivierst, dann ist es immer noch sichtbar. Ein deaktiviertes Steuerelement ist allerdings nicht bedienbar. Um dem Benutzer zu zeigen, dass es nicht verwendet werden kann, ist ein deaktiviertes Steuerelement gräulich dargestellt.

Das hast du vielleicht schon mal bei einem `Button` zum speichern oder so gesehen. Solange es keine Änderungen gibt diee gespeichert werden können, kannst du einen solchen `Button` deaktivieren. Das signalisiert dem Benutzer, dass die Aktion momentan nicht verfügbar ist. Als Entwickler hilft es dir, dass du dir sicher sein kannst, dass eine Aktion nur dann ausgeführt wird, wenn sie auch tatsächlich sinnvolle Resultate liefern kann.

In folgendem Bild siehst du ein paar Steuerelemente und wie sie aussehen wenn sie aktiv bzw. nicht aktiv sind:

![Aussehen von Steuerelementen die aktiv bzw. nicht aktiv sind]({{ site.url }}/images/wpf-controls-deaktivieren/isenabled-example.jpg)

### Steuerelemente verstecken `Visibility`
Die Sichbarkeit eines Steuerelements wird durch die Eigenschaft `Visibility` beeeinflußt. Dabei gibt es die folgenden möglichen Werte für diese Eigenschaft:
 - `Visible` - Das Steuerelement ist sichtbar
 - `Hidden` - Das Steuerelement ist nicht sichtbar, aber es wird im Layout berücksichtigt, als wäre es sichtbar. Es entsteht also eine Lücke auf der Oberfläche wo ansonsten das Steuerelement angezeigt würde.
 - `Collapsed` - Das Steuerelement ist nicht sichtbar und wird nicht im Layout berücksichtigt. Die umgebenden Steuerelement nehmen also den entstehenden Platz ein.

![Steuerelementen mit Visibility.Hidden]({{ site.url }}/images/wpf-controls-deaktivieren/visibility-hidden.jpg)

![Steuerelementen mit Visibility.Collapsed]({{ site.url }}/images/wpf-controls-deaktivieren/visibility-collapsed.jpg)

Wichtig ist dabei, dass du nur einen Unterschied zwischen `Hidden` und `Collapsed` siehst, wenn dein Layout dieses zu lässt. In dem eingangs erwähnten Beispiel im [WPF-Übungskurs für Einsteiger](/lernmail-kurse/wpf-tictactoe-fuer-einsteiger/) verwenden wir ein `Grid`. Da jedes Steuerelement in seiner eigenen Zelle ist, wirst du dort zwischen `Hidden` und `Collapsed` keinen Unterschied sehen.

Nachfolgend noch der *XAML*-Code den ich verwendet habe für die beiden Bilder. Darin siehst du, dass die drei `Button` nebeneinander in einem `StackPanel` liegen. Daher ergibt sich auch ein Unterschied im Layout, weil so mit `Collapsed` der Platz frei wird, dass `Test3-Button` nach links rutschen kann.

```xml
<Grid TextElement.FontSize="30">
    <Grid.RowDefinitions>
        <RowDefinition Height="*"/>
        <RowDefinition Height="*"/>
    </Grid.RowDefinitions>
    <StackPanel Orientation="Horizontal" Grid.Row="0">
        <Button Content="Test1" Margin="10"/>
        <Button Content="Test2" Margin="10" 
                Visibility="{Binding ElementName=VisibilitySelector, Path=SelectedValue.Content}"/>
        <Button Content="Test3" Margin="10"/>
    </StackPanel>

    <ComboBox x:Name="VisibilitySelector" Grid.Row="1" Margin="50" SelectedIndex="0" 
              HorizontalAlignment="Center" VerticalAlignment="Center">
        <ComboBox.Items>
            <ComboBoxItem Content="Visible"/>
            <ComboBoxItem Content="Collapsed"/>
            <ComboBoxItem Content="Hidden"/>
        </ComboBox.Items>
    </ComboBox>
</Grid>
```

Möchtest du dein Wissen testen und etwas Erfahrung in der Erstellung von Windows-Oberflächen mit WPF und C# sammeln?

<div class="subscribe-notice">
<h5>Dann melde dich hier zum kostenlosen WPF Übungskurs für Einsteiger an.</h5>
<a markdown="0" href="{{ site.url }}/lernmail-kurse/wpf-tictactoe-fuer-einsteiger/" class="notice-button">Erfahre mehr >></a>
</div>

Viel Spaß auf deinem Weg vom Einsteiger zum C# Entwickler

Jan von LernMoment.de
