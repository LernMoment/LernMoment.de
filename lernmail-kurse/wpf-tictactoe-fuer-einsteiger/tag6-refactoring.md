---
layout: page
title: "Übung #6 - Aufräumen"
excerpt: "Meine MainWindow.xaml.cs umfasst mittlerweile fast 250 Zeilen, teilweise sich wiederholenden, Quellcode. Das soll nun geändert werden."
search_omit: true
banner: uebung-buchstaben
image:
  feature: banner/lernmoment-wpf.jpg
modified:
date: 2020-03-17T09:30:00+01:00
---

Mmmmmoin und willkommen zur **sechsten (und letzten) Übung** im WPF-Übungskurs für Einsteiger!

Erstmal meinen größten Respekt, dass du bis hier durchgehalten hast! Wenn alles geklappt hat, dann hast du erfolgreich wichtige Aspekte von WPF und C# geübt. 

Bereits in den letzten Übungen dieses Kurses habe ich dich darauf hingewiesen, dass ich an einigen Stellen, den Quellcode nicht optimiert habe, sondern es einfach habe laufen lassen. Bevor wir diesen Kurs nun beenden, möchte ich gerne, dass du selber eine Bestandsaufnahme machst und überlegst was vielleicht verbessert werden könnte.

Bevor es jedoch zur Aufgabe für heute geht, erstmal die Musterlösung für die Aufgabe vom letzten Mal.

## Musterlösung der letzten Aufgabe

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/NJzmN1ogEEs" frameborder="0" allow="encrypted-media" allowfullscreen></iframe>

**Musterlösung:** [Hier meine Musterlösung als zip-Datei.](https://github.com/LernMoment/tictactoe-wpf/releases/tag/teil5)

**Musterlösung Schritt-für-Schritt** (durch Klick auf die Links siehst du die Änderungen im Quellcode von einem Schritt zum nächsten):
1. [Label für Hinweise einfügen](https://github.com/LernMoment/tictactoe-wpf/commit/efed9873f3efc5ec6557c0b369e7ec68dcb7a263)
2. [Kästchen belegt im HinweisLabel](https://github.com/LernMoment/tictactoe-wpf/commit/3b0c2e89f1d3d33f468d8166be4ca711be6595d4)
3. [Spielstand im HinweisLabel](https://github.com/LernMoment/tictactoe-wpf/commit/f950abfa35f50c54370b81296906425e2c220e4d)
4. [Verbessere die Sichtbarkeit des HinweisLabel](https://github.com/LernMoment/tictactoe-wpf/commit/66345c6ba8d89aef8e233a6bd69851e2347057b8)
5. [Visibility des HinweisLabel](https://github.com/LernMoment/tictactoe-wpf/commit/a234b9216f619e5de364d57969bd732520c008d3)
6. Es gab doch einige Fehler bei mir:
  - [Spiel kann nicht unentschieden beendet werden](https://github.com/LernMoment/tictactoe-wpf/commit/76dd883f83b8f5e87b1be3b857dbf1ca744bffd0)
  - [Spielende "Unentschieden" wird nicht angezeigt](https://github.com/LernMoment/tictactoe-wpf/commit/3e5187a168dbbce24bc744695b62e763f1cf9625)
  - [Spiel startet nicht mit gleichem Spieler neu](https://github.com/LernMoment/tictactoe-wpf/commit/15cf3cfaed7385cb61cbf71411615ee70cba86c1)
  - [Spielfeld bleibt leer nach Klick für Neustart](https://github.com/LernMoment/tictactoe-wpf/commit/36c05d5d059e00fdaffe2d4d3cbeb15caeb4accb)
  - [Falsches Spielresultat, wenn Spieler mit letztem Zug gewinnt](https://github.com/LernMoment/tictactoe-wpf/commit/d5de15389e2e00dbf5429f6deaab4a15d9bbc405)
7. [Blendet Hinweis automatisch aus](https://github.com/LernMoment/tictactoe-wpf/commit/ee3ef1857297565eb3b1587145540cc9aec3cb5a)

**Bonus:** Wie du vielleicht bei dir selber gesehen hast, sind noch einige Fehler im Spiel enthalten. In diesem Video zeige ich dir den kompletten Ablauf wie ich meine Anwendung getestet habe, die Fehler gesucht habe und wie ich die Fehler behoben habe.

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/6kU-1RgWfxY" frameborder="0" allow="encrypted-media" allowfullscreen></iframe>

## Die neue Aufgabe
Heute geht es nicht um *XAML* und auch nicht um *C#*, sondern um etwas das C# Entwickler häufig machen, aber du vielleicht nicht so auf dem Schirm hast. Ich möchte, dass du dir deinen eigenen Quellcode genau anschaust und überlegst was dir daran nicht gefällt. Es wäre super, wenn du die Resultate dieser Überlegung [hier als neues Issue](https://github.com/LernMoment/tictactoe-wpf/issues) dokumentierst.

Wahrscheinlich fällt dir diese Aufgabe etwas schwer. Ich erwarte auch gar nicht, dass du mir eine umfangreiche Abhandlung schreibst 😉, aber es gehört zur Entwicklung dazu, dass du ein Gefühl entwickelst was im Quellcode problematisch sein könnte. Um dich etwas zu unterstützen hier ein paar Fragen mit deren Hilfe du deinen Quellcode analysieren kannst:

1. Welche Stellen verstehst du nicht und was daran verstehst du nicht?
2. Wo und warum hast du oder würdest du Kommentare einfügen?
3. Welche Stellen gefallen dir nicht und warum?
4. Wo hast du die meisten Fehler gefunden?

Es ist wichtig, dass du das ganze aufschreibst. Das bietet uns zum einen die Grundlage für eine Diskussion darüber und zum anderen ist das eine Tätigkeit die dir als Entwickler immer wieder abverlangt wird.

[Dokumentiere deine Überlegungen zum Verbesserungspotential. Lost gehts!](https://github.com/LernMoment/tictactoe-wpf/issues)

## Wie geht es weiter?
Wie schon gesagt ist das heute erstmal die letzte Übung. Allerdings gibt es in den nächsten Tagen noch einen Bonus für dich. Als eine Art Lösung für die heutige Aufgabe habe ich ein längeres Video erstellt in dem ich dir zeige wie ich meine bisherige Lösung komplett überarbeite um verschiedenste Aspekt im Quellcode zu verbessern. Natürlich erkläre ich dir darin auch warum ich das mache.

Dir hat dieser Übungskurs gefallen? Dann ist vielleicht der **Übungsmoment** genau das richtige für dich. Der Übungsmoment erscheint **einmal pro Woche** und bietet dir, ähnlich wie die einzelnen Teile in diesem Übungskurs, 
 - eine **Übung** (zu Themen die du selber mitbestimmen kannst), 
 - das notwendige **Lernmaterial** zur Lösung, 
 - eine **Musterlösung** (inkl. Erklärungsvideo),
 - **individuelle Rückmeldung** zu deiner Lösung (Optional) und
 - eine **Community** die dir hilft.

Habe ich dein Interesse geweckt? Dann erfahre hier mehr über den **Übungsmoment**

<div class="subscribe-notice">
<h5>Übungsmoment - kontinuierliches und systematisches Üben auf deinem Weg zum C# Entwickler</h5>
<a markdown="0" href="/uebungsmoment/" class="notice-button">Erfahre mehr >></a>
</div>

Bis dahin wünsche ich dir viel Spaß beim Üben

Jan von LernMoment.de