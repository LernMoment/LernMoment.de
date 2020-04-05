---
layout: page
title: "TicTacToe-WPF-Übungskurs - Spielsteine setzen"
excerpt: "Im dritten Teil des Übungskurses fügst du dem Spiel die erste Logik hinzu. Es soll durch Klick in ein Kästchen immer abwechselnd ein Spielstein gesetzt werden."
search_omit: true
lm-newsletter-group-id: 16
banner: uebung-buchstaben
image:
  feature: lernmoment-wpf-banner.jpg
modified:
date: 2020-03-17T09:30:00+01:00
---

Mmmmmoin und willkommen zur **dritten Übung** im TicTacToe Übungskurs für WPF Einsteiger!

Nun haben wir zwar ein "schönes" Spielfeld (liegt sicherlich im Auge des Betrachters ;), aber von einem Spiel sind noch entfernt. Also wirst du heute die erste Logik einfügen. Die Spieler sollen abwechselnd auf ein leeres Kästchen klicken können und dadurch wird ihr Spielstein dort gesetzt.

Bevor ich nun jedoch weiter ins Detail bezüglich der neuen Aufgabe gehe, hier die Lösung der ersten Aufgabe.

## Musterlösung der letzten Aufgabe

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/ZAg_NGKHdy4" frameborder="0" allow="encrypted-media" allowfullscreen></iframe>

**Musterlösung:** [Hier meine Musterlösung als zip-Datei.](https://github.com/LernMoment/tictactoe-wpf/releases/tag/teil2)

**Musterlösung Schritt-für-Schritt** (durch Klick auf die Links siehst du die Änderungen im Quellcode von einem Schritt zum nächsten):
1. [Layout für einen Button](https://github.com/LernMoment/tictactoe-wpf/commit/cbf4f4082efcc678bf2e2546f202af6307644f9c)
2. [`Style` für alle Buttons](https://github.com/LernMoment/tictactoe-wpf/commit/e91e4c9e97e27ced77998a53cd03fbcaed1fe35a)
3. [Farben eines `Button` auf Klick invertieren](https://github.com/LernMoment/tictactoe-wpf/commit/fcf2e6d49514eba646275e055435fba3324c317b)

**BONUS:** Wenn du dir den Quellcode nochmals genau anschaust, wirst du sehen, dass (wenigstens bei mir) 3 Punkte unter dem `kaestchen_0_0_Click`-EventHandler angezeigt werden. Was sie bedeuten, wie du sie entfernst und welches Tastaturkürzel dir dabei hilft, zeige ich dir im folgenden "Bonus-Video". Darin erkläre ich auch wie ich Steuerelemente in *XAML* benenne:

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/Rp5eyWhFrnY" frameborder="0" allow="encrypted-media" allowfullscreen></iframe>

Wie diese Behebung den Quellcode verändert kannst du dir in [diesem Commit anschauen](https://github.com/LernMoment/tictactoe-wpf/commit/aa5c089053fb2475fe6644211023d28238b622c2)

## Die neue Aufgabe
Die Arbeit im *XAML* ist nun erstmal beendet. Heute geht es darum, dass du durch klicken auf die Kästchen einen Spielstein setzen kannst:

1. Durch einen Klick auf **ein** Kästchen (`Button`) soll darin abwechselnd der Spielstein vom ersten Spieler (*X*) und zweiten Spieler (*O*) angezeigt werden.
2. Erstelle die gleiche Funktionalität für **alle** Kästchen.
3. Setze nur einen Spielstein, wenn das angeklickte Kästchen wirklich leer ist. Ansonsten soll ein Hinweis ausgegeben werden und der gleiche Spieler ist nochmals am Zug.
4. Leere das Spielfeld vor dem ersten Zug.
5. Starte das Spiel erneut, wenn ein weiteres Kästchen angeklickt wird nachdem alle Kästchen belegt sind.
6. [optional] Wenn Spieler 2 (*O*) seinen Spielstein setzt, sollen die Vordergrund- und Hintergrundfarbe getauscht werden. Bei meinen Farben bedeutet das also beiges *X* auf türkisenem Grund und türkisenes *O* auf beige Grund. Bedenke auch, dass bei einem Neustart des Spiels alle Kästchen wieder die gleiche Hintergrundfarbe haben sollen.
7. [optional] Sofern du es noch nicht getan hast, mache einen `Commit` für deine ganzen Änderungen und schiebe alles via *Sync* auf GitHub.

**BONUS:** Je nachdem wie du die Schritte 1-5 in dieser Aufgabe umgesetzt hast, gibt es einige Fehlerquellen. Schaue deinen Quellcode nochmals genau an und identifiziere mindestens einen problematischen Abschnitt. Teile mit den anderen Teilnehmern des Kurses und mir deine Erkenntnis [an diesem GitHub Issue](https://github.com/LernMoment/tictactoe-wpf/issues/1). Vielleicht hast du selber eine Idee für eine Verbesserung oder wir finden gemeinsam eine.

## Lösungshinweise

1. Obwohl dieser erste Schritt ganz einfach aussieht, könnte es im Detail doch zu einigen Problemen kommen. Hier ein paar Hinweise:
  - [Artikel zum Zugriff auf den passenden Button mittels `sender`](/alle/zugriff-wpf-controls-code-behind/)
  - [In diesem Artikel](/csharp-tutorial-deutsch/typkonvertierung-mit-cast/) erkläre ich dir was ein *Cast* und wie du ihn einsetzt um im *EventHandler* auf die Eigenschaften des aufrufenden `Button` zu zugreifen.
  - In *XAML* wird der "Inhalt" eines `Button` über die Eigenschaft `Content` gesetzt. Dieses kannst du auch im C# Quellcode machen.
  - Mithilfe eines privaten Attributs in der `MainWindow` Klasse kannst du dir merken ob der erste oder zweite Spieler zuletzt am Zug war. 
  - Du nutzt am besten den *EventHandler* den du aus der letzten Übung schon haben solltest. Mehr Hinweise gebe ich nicht ;-)!
2. Geht es für einen `Button`, dann geht es in diesem Fall auch für alle `Buttons`. Der Trick ist den *EventHandler* für jeden `Button` im *Spielfeld* anzumelden. Mehr über Events erkläre ich dir im [2. Teil des BallSpiel Projekts](https://youtu.be/L99fv0Gzx4Y).
3. Hier noch ein paar Hinweise zur Frage ob ein Spielstein gesetzt ist und wie du einen Hinweis anzeigen kannst:
  - Theoretisch ist die Aufgabe einfach, weil du eigentlich nur überprüfen musst ob der `Content` gesetzt ist. Die Herausforderung könnte sein, dass der `Content = null` ist, weil den meisten `Button` noch kein Text zugewiesen wurde. Du musst also nicht nur schauen ob ein `string` mit einem Zeichen im `Content` steht sondern auch ob der `Content` vielleicht `null` ist. 
  - Wie du Hinweise anzeigen kannst, erkläre ich dir [in diesem Artikel](/alle/hinweise-anzeigen-mit-messagebox/)
4. Aus dem C# Quellcode kannst du auf jeden einzelnen Button zugreifen und den `Content` entsprechend setzen.
5. Dieser Schritt könnte für dich schon etwas kniffeliger sein. Für die Lösung kannst du die Eigenschaft `Children` des `Grid` verwenden. Über diese Eigenschaft bekommst du Zugriff auf alle Steuerelemente die im *Spielfeld* (also dem `Grid`) enthalten sind. Momentan sind das erstmal nur die *Kästchen* (also `Buttons`). Damit kannst du also jedes Kästchen anschauen und überprüfen ob im `Content` etwas enthalten ist.
6. Das eigentliche Tauschen der Vorder- und Hintergrundfarbe sofern Spieler 2 klickt schaffst du bestimmt. Hast du jedoch auch berücksichtigt, dass die Farben der Kästchen beim Neustart des Spiels wieder zurück gesetzt werden müssen? Tipp: Es ist einfacher allen Kästchen ihre ursprüngliche Farbe zu zuweisen.

## Weiterführende Artikel / Videos
Diese Aufgabe beinhaltet bereits sehr viel Futter für dich. Daher gibt es heute keine weiteren Ressourcen!

*Du möchtest automatisch informiert werden und alle 3 Tage die Musterlösung und nächste Teilaufgabe bekommen? Dann melde dich hier an:*

<div class="subscribe-notice">
  <h5>Melde dich jetzt (unverbindlich und kostenlos) für den WPF Übungskurs an:</h5>
    {% include lernmoment-subscribe.html %}
</div>

Bis dahin wünsche ich dir viel Spaß beim Üben

Jan von LernMoment.de