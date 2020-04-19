---
layout: page
title: "Übung #5: Hinweise im Spiel anzeigen"
excerpt: "Die Hinweise die du momentan mit einer MessageBox anzeigst sind bezüglich Bedienerfreundlichkeit nicht optimal. Das ändern wir in dieser Übung."
search_omit: true
lm-newsletter-group-id: 128
banner: uebung-buchstaben
image:
  feature: banner/lernmoment-wpf-ttt.jpg
modified:
date: 2020-03-17T09:30:00+01:00
---

Mmmmmoin und willkommen zur **fünften Übung** im WPF-Übungskurs für Einsteiger!

Herzlichen Glückwunsch! Du solltest heute bereits eine funktionierende WPF-Anwendung vor dir haben. Ab nun geht es darum, dass wir sie weiter optimieren. Dazu werden wir uns heute nochmals dem Thema Bedienerfreundlichkeit widmen. Das "ewige" bestätigen von `MessageBox`-Dialogen ist nicht wirklich der Hit. Daher wirst du heute die Hinweise direkt auf dem *Spielfeld* anzeigen.

Bevor ich dir jedoch die neue Aufgabe zeige, hier erstmal die Musterlösung zur vorherigen Übung!

## Musterlösung der letzten Aufgabe

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/7KrcUFQhJ7w" frameborder="0" allow="encrypted-media" allowfullscreen></iframe>

**Musterlösung:** [Hier meine Musterlösung als zip-Datei.](https://github.com/LernMoment/tictactoe-wpf/releases/tag/teil4)

**Musterlösung Schritt-für-Schritt** (durch Klick auf die Links siehst du die Änderungen im Quellcode von einem Schritt zum nächsten):
1. [Eine Gewinnreihe ermitteln](https://github.com/LernMoment/tictactoe-wpf/commit/b12d72ba1fcca69f2303a8e49c5095b56f257f4e)
2. [Alle Gewinnreihen ermitteln](https://github.com/LernMoment/tictactoe-wpf/commit/065842600edde1b8209f7c8c0a87d2504b8098d8)
3. [Gewinner anzeigen](https://github.com/LernMoment/tictactoe-wpf/commit/3a29f2bcac98263bf6e28e40be4c1833d1d00d02)
4. [Gewinnreihe im Spielfeld hervorheben](https://github.com/LernMoment/tictactoe-wpf/commit/cadf71197c5cfbe84f0d469d1d642a737d22d93b)
5. Ist bereits in den vorherigen Schritten enthalten

**Alternative:** Mir gefällt nicht, dass in der bisherigen Musterlösung die Markierung der Gewinnreihe in der Methode `IstSpielGewonnen()` gemacht wird. Der Methodennamen `IstSpielGewonnen()` impliziert für mich, dass nur eine Abfrage stattfindet und keine Änderung. Daher habe ich noch eine Alternative umgesetzt. [Hier findest du die Alternative](https://github.com/LernMoment/tictactoe-wpf/commit/1b6df48a5042a4aff1eb0072b8744fd5e62e1240) mit der Methode `SucheGewinnReihe()`.

**Fragen & Rückmeldung:** Wenn du Fragen hast oder Rückmeldung zu deiner aktuellen Umsetzung von TicTacToe haben möchtest, schreibe mir doch ein [Issue hier auf GitHub](https://github.com/LernMoment/tictactoe-wpf/issues). Damit können andere auch an der Diskussion teil haben. [Hier](https://github.com/LernMoment/tictactoe-wpf/blob/master/README.md#teilnehmerliste) findest du Links zu den Lösungen von anderen Teilnehmern dieses Übungskurses. Ich würde mich sehr freuen auch deine Lösung dort zu verlinken. Schick mir einfach den Link zu deinem GitHub-Repository.

## Die neue Aufgabe
Die Anzeige von Hinweisen (insbesondere das Spielresultat) über eine `MessageBox` ist okay, aber auch nicht wirklich toll. Darum soll heute die Anzeige von Hinweisen direkt in das `MainWindow` integriert werden. Das Resultat könnte dann ungefähr so aussehen:

![Mein TicTacToe mit Spiel gewonnen Label]({{ site.url }}/images/lernmail-kurse/spiel-gewonnen-label-tag5.jpg)

Um das zu erreichen, kannst du folgende Schritte umsetzen:

1. Platziere ein `Label` über der mittleren Zeile des `Spielfeld`. Solange du keinen Hinweis anzeigen möchtest, bekommt das `Label` einen leeren `string` als `Content`.
2. Zeige den Hinweis *"Dieses Kästchen ist bereits belegt! Wähle ein anderes."* im `Label` an (vorher war er in einer `MessageBox`). Blende den Hinweis aus, wenn ein weiteres Mal auf das Spielfeld geklickt wird. *Hinweis:* Du kannst den Text z.B. auf *"Kästchen belegt"* verkürzen.
3. Zeige den Spielstand beim Spielende im `Label` an. Auch dieser Hinweis soll beim nächsten Klick ausgeblendet werden.
4. Verbessere die Sichtbarkeit der Hinweise in dem du dem `Label` eine halbtransparente Hintergrundfarbe verpasst.
5. Verwende eine Eigenschaft des `Label` um es wirklich auszublenden (nicht nur den `Content` auf einen leeren `string` setzen), wenn es nicht benötigt wird. 
6. Überlege dir welche Szenarien du testen solltest, führe die Tests durch und beschreibe [als Kommentar an diesem Issue](https://github.com/LernMoment/tictactoe-wpf/issues/3) deine Testfälle, die Testresultate und eventuell gefundene Fehler.
7. [optional] Blende den Hinweis aus Schritt 2 (*"Kästchen belegt!"*) automatisch nach 2-3 Sekunden wieder aus.
8. [optional] Sofern du es noch nicht getan hast, mache einen `Commit` für deine ganzen Änderungen und schiebe alles via *Sync* auf GitHub.

## Lösungshinweise

1. Falls du nochmals eine Auffrischung brauchst wie du das `Label` im `Grid` platzieren kannst, sollte dich [dieser Artikel von mir](/alle/wpf-grid-panel-xaml-grundlagen/) weiterbringen.
2. Dazu kannst du bei einem Klick überprüfen ob momentan etwas im `Content` vom `Label` steht und wenn ja, dann setzt du es auf `string.Empty` zurück. So verschwindet das `Label` nicht komplett, aber darum kümmern wir uns gleich.
3. siehe 2.
4. Es gibt verschiedene Möglichkeiten dem Hintergrund eines Steuerelementes eine Transparenz zu geben. Eine Möglichkeit ist, dass du den *Alpha-Kanal* der `Background`-Eigenschaft verwendest. Das kannst du am einfachsten im *Eigenschaften-Fenster* machen. Weiter unten findest du ein Bild welches dir hoffentlich hilft. Mehr zum Thema Transparenz gibt es in einem separaten Artikel. Den muss ich aber erst noch schreiben 😁.
5. Sofern du dich noch nicht mit `Visibility` und `IsEnabled` auseinander gesetzt hast, findest du in [meinem Artikel](/alle/wpf-controls-deaktivieren-verstecken/) alles was du brauchst um die Aufgabe zulösen.
6. Dazu sage ich erstmal nichts. In der Lösung zu dieser Aufgabe wird es ein komplettes Video dazu geben.
7. Im [Ballspiel-Projekt auf YouTube](https://www.youtube.com/watch?v=ugji-_yWoRk&t=930s) habe ich bereits einen `DispatcherTimer` verwendet. Vielleicht bringt dich das in die richtige Richtung.

Hier noch das Bild wo du den *Alpha-Kanal* im *Eigenschaft-Fenster* in *Visual Studio* findest. Dazu gehst du erst im *XAML* auf das Label und wählst dann im *Eigenschaften-Fenster* erst *Pinsel* und dann *Background* aus.

![Alpha-Kanal im Eigenschaften-Fenster]({{ site.url }}/images/lernmail-kurse/alpha-kanal-tag5.jpg)

*Du möchtest automatisch informiert werden und alle 3 Tage die Musterlösung und nächste Teilaufgabe bekommen?*

<div class="subscribe-notice">
  <h5>Melde dich jetzt (unverbindlich und kostenlos) für den WPF Übungskurs an:</h5>
    {% include lernmoment-subscribe.html %}
</div>

Bis dahin wünsche ich dir viel Spaß beim Üben

Jan von LernMoment.de