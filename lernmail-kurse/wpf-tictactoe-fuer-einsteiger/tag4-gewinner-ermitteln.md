---
layout: page
title: "Übung #4: Gewinner ermitteln und anzeigen"
excerpt: "In diesem Teil geht es darum, dass du ermittelst ob ein Spieler gewonnen hat und die Gewinnerreihe hervor hebst."
search_omit: true
banner: uebung-buchstaben
image:
  feature: banner/lernmoment-wpf-ttt.jpg
modified:
date: 2020-03-24T09:30:00+01:00
---

Mmmmmoin und willkommen zur **vierten Übung** im WPF-Übungskurs für Einsteiger!

Heute ist es soweit! Du fügst die weitere Logik hinzu und hast damit bereits ein **komplett funktionsfähiges TicTacToe-Spiel**. Damit sind wir zwar noch nicht am Ende des Übungskurses, schließlich will ich dir noch coole Dinge wie das `DataGrid` und *Datenbindung* zeigen, aber du hast einen ersten wichtigen Meilenstein geschafft.

## Musterlösung der letzten Aufgabe

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/JF8sW2fJHXY" frameborder="0" allow="encrypted-media" allowfullscreen></iframe>

**Musterlösung:** [Hier meine Musterlösung als zip-Datei.](https://github.com/LernMoment/tictactoe-wpf/releases/tag/teil3)

**Musterlösung Schritt-für-Schritt** (durch Klick auf die Links siehst du die Änderungen im Quellcode von einem Schritt zum nächsten):
1. [Spielstein in einem Kästchen setzen](https://github.com/LernMoment/tictactoe-wpf/commit/fcb37762201ad5291ba4da4fd54276148f03a337)
2. [Spielstein in allen Kästchen setzen](https://github.com/LernMoment/tictactoe-wpf/commit/d684feff03bde8e93b097b235843836c1ed021e6)
3. [Überprüfung ob Kästchen bereits belegt ist](https://github.com/LernMoment/tictactoe-wpf/commit/863fea9c1e1ee2d2493115f5206cef7849e93915)
4. [Spielfeld leeren vor Spielbeginn](https://github.com/LernMoment/tictactoe-wpf/commit/ef436ba596b6804bb3fcdfdb3a382f6978f7b621)
5. [Neustart des Spiels, wenn alle Kästchen belegt](https://github.com/LernMoment/tictactoe-wpf/commit/9807f02b25c3c46d9ba3258200d3660563e5d5f5)
6. [optional] [Unterschiedliche Farben für die Spieler](https://github.com/LernMoment/tictactoe-wpf/commit/5304b8eaf53e0c9f957b15007550f1cd19f3bc3d) - Die Erkärung dieses Schrittes habe ich im Video nicht mehr gemacht, weil das Video schon sehr lang war. Wenn du Probleme hast, dann schreib mir eine Mail. Ich beantworte deine Fragen gerne!

**Bonus:** Welche Fehlerquellen hast du in deinem Quellcode gefunden? Teile sie mit uns oder schaue was andere Teilnehmer an ihrer Lösung für Fehlerquellen erkannt haben. [An diesem GitHub Issue](https://github.com/LernMoment/tictactoe-wpf/issues/1) kannst du in die Diskussion einsteigen.

## Die neue Aufgabe
Im folgenden geht es darum, dass du ermittelst ob es einen Gewinner gibt. Dabei spreche ich teilweise von einer Gewinnreihe. Damit meine ich eine Zeile, Spalte oder Diagonale mit 3 gleichen Spielsteinen.

1. Schreibe eine Methode die ermittelt ob in der obersten Zeile einer der beiden Spieler alle 3 Kästchen (`Kaestchen_0_0` bis `Kaestchen_0_2`) belegt hat und somit gewonnen hat.
2. Nun stelle fest ob ein Spieler in einer der anderen 7 möglichen Gewinnreihen gewonnen hat.
3. Wenn ein Spieler gewonnen hat, dann gebe einen Hinweis aus welcher Spieler gewonnen hat.
4. Hebe die Gewinnreihe hervor indem du den Hintergrund der 3 Kästchen Gelb einfärbst.
5. Bei einem Neustart des Spiels müssen alle Kästchen wieder die gleiche Hintergrundfarbe haben.
6. [optional] Sofern du es noch nicht getan hast, mache einen `Commit` für deine ganzen Änderungen und schiebe alles via *Sync* auf GitHub.

**Bonus:** Auch heute finde ich es wieder super wichtig, dass du dir Gedanken machst über mögliche Fehlerquellen in deiner Lösung. Am besten du teilst dein Gedanken gleich mit uns [an diesem GitHub Issue](https://github.com/LernMoment/tictactoe-wpf/issues/1). Das bringt dich beim Lernen wirklich weiter!

## Lösungshinweise

1. Ob ein Kästchen belegt ist oder nicht, zeigt dir momentan die `Content` Eigenschaft des jeweiligen `Button` an. Da im `Content` jedoch mehr als nur ein Text gespeichert werden kann, ist diese Eigenschaft nicht vom Typ `string`. Zum Glück gibt es jedoch die `ToString()` Methode. Sofern im `Content` tatsächlich ein `string` enthalten ist, gibt dir die `ToString()` Methode diesen Text im passenden Typ zurück.
2. Bedenke, dass jedes Steuerelement ein ganz *normales* Objekt ist, welches du im C# Quellcode "herumreichen" kannst. Wenn du eine Methode schreibst die 3 Kästchen vergleicht ob sie den gleichen Inhalt haben (wie in Schritt 1 beschrieben) und diese dann für alle möglichen "Gewinnreihen" mit den jeweiligen `Button` aufrufst, bekommst du eine recht übersichtliche Lösung.
3. Ausser `MessageBox` brauche ich hier nichts weiter sagen, oder?
4. Das kannst du auch ohne Hinweis!
5. Wird wahrscheinlich schon "automagisch" klappen bei dir. Aber testen solltest du es trotzdem.

## Weiterführende Artikel / Videos
Im Lösungsvideo zur Übung #3 habe ich dir u.a. einige Tastaturkürzel für *Visual Studio* vorgestellt. In diesem Kontext könnten auch folgende Ressourcen für dich spannend sein:

- [Die Schwerpunktseite *Visual Studio* auf LernMoment.de](/schwerpunkt/visual-studio/) - auf dieser Seite sind meine wichtigsten Ressourcen zu *Visual Studio* verlinkt. Dort findest du u.a. auch einen Artikel zu den Tastaturkürzeln.
- [Tipps für Einsteiger in *Visual Studio* - Video](https://youtu.be/teb_83Vxou4) - in diesem Video zeige ich dir neben einigen Tastaturkürzeln weitere Tipps zum Umgang mit *Visual Studio*.
- [Zugriff auf XAML-Elemente aus dem code-behind](/alle/zugriff-wpf-controls-code-behind/) - wenn du nochmals nachlesen möchtest wie die verschiedenen Zugriffe auf die Steuerelemente aus dem code-behind funktionieren.
- [Einführung in die MessageBox](/alle/hinweise-anzeigen-mit-messagebox/) - hier nochmals der Artikel über die `MessageBox`. Vielleicht magst du heute nochmals ein paar Details nachlesen 😉.
- [Mehr Details zur `ToString()` Methode in diesem Video](https://youtu.be/g71JndA-0qA) - In diesem Video erkläre ich dir was die `ToString()` Methode macht und wie du selber eine für deine Klasse schreiben kannst.

In wenigen Tagen bekommst du eine weitere Mail von mir mit meiner Musterlösung und der nächtsen Teilaufgabe.

Bis dahin wünsche ich dir viel Spaß beim Üben

Jan von LernMoment.de