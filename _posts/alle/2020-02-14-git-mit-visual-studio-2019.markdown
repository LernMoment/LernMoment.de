---
layout: post
title: "Versionskontrolle mit Git und Visual Studio 2019"
excerpt: "Die wichtigsten Schritte um Quellcode mit Visual Studio in Git zu verwalten."
categories: alle
lernmoment: Hintergrund
lm-newsletter-group-id: 2
show-lm-newsletter-subscribe-box: true
share: false
banner: einstieg-csharp
tags: [Werkzeug, Versionsverwaltung]
image:
  feature: lernmoment-git-banner.jpg
modified:
date: 2020-02-14T06:00:00+01:00
---

*Git* ist DIE dezentrale Versionsverwaltung. Cool 😎! Aber was soll das sein und wofür ist das überhaupt gut? Das erkläre ich dir in diesem Artikel.

Dezentrale Versionsverwaltung bedeutet, dass es nicht einen zentralen Server gibt den du für alle Aktionen mit der Versionsverwaltung benötigst. D.h. *git* kannst du, wenn du möchtest, ganz alleine für dich auf deinem Rechner verwenden. Vielleicht hast du schon mal eine "gute" Version deines Quellcodes komplett kopiert (also alle Dateien die dazugehören im Datei-Explorer in ein Verzeichnis mit dem Namen *MeineAnwendung_GuteVersion* oder *MeineAnwendung_v2* kopiert) um diese Version nicht zu verlieren. Um dieses Problem auf eine elegantere Weise zu lösen verwendest du ab jetzt am besten *git*.

Neben dem lokalen Sichern von Versionen bietet dir *git* aber auch die Möglichkeit deinen Quellcode auf einem Server zusichern. Das kannst du machen als Backup oder insbesondere auch, wenn du mit anderen Entwicklern zusammen an einem Projekt arbeiten möchtest. Wenn du dein Projekt auf einen Server schieben möchtest, dann kannst du z.B. *GitHub* verwenden. Im [GitHub Tutorial Deutsch](https://www.youtube.com/playlist?list=PLP2TrPpx5VNlLOYo5pook-0_0Uy0YLdHW) zeige ich dir das ausführlich und in [GitHub ist nicht Git](https://www.youtube.com/watch?v=V_IDzTNA_ns&list=PLP2TrPpx5VNlLOYo5pook-0_0Uy0YLdHW) erkläre ich den genauen Unterschied zwischen *Git* und *GitHub*.

Mit *Git* kannst du Änderungen an deinem Quellcode mit einem Zeitstempel und einer Beschreibung speichern. Der passende Fachbegriff dafür ist *einen Commit erstellen*. Hast du nun mehrere *Commits* erstellt, kannst du dir die Historie anschauen und auch auf den Stand eines ganz spezifischen *Commits* aus der Vergangenheit zurückfallen. Dank *Git* kannst du das alles lokal auf deinem Rechner machen ohne irgendetwas zusätzliches zu installieren (außer Visual Studio ;). Möchtest du dann später doch dein Projekt öffentlich verfügbar machen, kannst du immer noch deine lokalen Änderungen mit *GitHub* synchronisieren.

In dieser Kurzanleitung zeige ich dir die wichtigsten Schritte um mit *Visual Studio* und *Git*

1. ein Projekt zu erstellen / initialisieren,
2. einen Commit aus deinen Änderungen zu erstellen,
3. den aktuellen Verlauf deiner Commits anzuschauen und
4. auf einen älteren Commit zurück zufallen.

<div class="subscribe-notice">
<h5>Lerne GitHub mit Visual Studio zu verwenden!</h5>
<a markdown="0" href="https://www.udemy.com/github-fuer-entwickler/?referralCode=D2FD5CBAC0A15B17A09E" class="notice-button">Zum Online-Kurs "Einstieg in GitHub" >></a>
</div>

## Ein Projekt erstellen

Jedesmal, wenn du ein *neues Projekt* erstell hast, kannst du über die *Auswahlbox:* `Zur Quellcodeverwaltung hinzufügen` (unten rechts in der Status-Bar von Visual Studio) *Git* auswählen. Wählst du diese Option, was du eigentlich immer machen solltest ;-), wird automatisch im obersten Verzeichnis deines Projektes ein Ordner mit dem Namen `.git` angelegt. Darin werden sämtliche Informationen von *Git* gespeichert.

![Zur Quellcodeverwaltung hinzufügen]({{ site.url }}/images/git-mit-vs2019/zur-quellcodeverwaltung-hinzufuegen.jpg)

Zusätzlich zum `.git` Verzeichnis werden auch gleich 2 *Commits* erstellt. Damit sind dann bereits alle zum Projekt gehörenden Dateien zur Versionsverwaltung hinzugefügt. Dieses wird dir im `Projektmappen-Explorer` in *Visual Studio* angezeigt. Dort siehst du vor den Dateien (z.B. `App.config`) ein Symbol welches aussieht wie ein Vorhängeschloss. Damit wird dir angezeigt, dass alle Änderungen in *Git* gespeichert sind.

Sobald du in einer Datei eine Änderung vornimmst, ändert sich das Symbol und zeigt einen *roten Haken* an. Dieser sagt dir, dass es Änderungen in der Datei gibt, für die bisher noch kein *Commit in Git* erstellt wurde.

**Die wichtigsten Schritte:**

1) Projekt erstellen mit:

```
Datei -> Neu -> Projekt...
```

oder über den Projekterstellungs-Assistent beim Start von Visual Studio.

2) Git aktivieren durch auswählen von

```
Zur Quellcodeverwaltung hinzufügen -> Git
```

## Einen Commit erstellen

Nachdem du nun dein Projekt von *Git* verwalten lässt, solltest du deine Änderungen von Zeit zu Zeit mit einem *Commit* bei *Git* "abliefern". *Git* sind alle deine Änderungen bekannt, aber es weiß nicht was deine Änderungen für dich bedeuten.

Hast du mehrere Dateien geändert, dann weiß *Git* auch nicht welche Änderungen für dich einen logischen Zusammenhang haben. Du könntest beispielsweise mehrere Änderungen gemacht haben, die dein Projekt um verschiedene Funktionalitäten erweitern. Ich versuche immer möglichst kleine *Commits* zu machen. Das bedeutet, dass ich nach wenigen Änderungen bereits ein Commit erstelle. Bevor ich hier jedoch wieder abschweife, zurück zur eigentlichen Anleitung (eine genauere Beschreibung der "best practices" für einen Commit bekommst du dann in einem späteren Artikel).

Der einfachste Weg alle deine aktuellen Änderungen in einen Commit zu packen ist, dass du in den `Team Explorer` gehst und dort den Bereich `Änderungen` auswählst. Dieser wird dir üblicherweise direkt angezeigt. Sollte das nicht der Fall sein, dann kannst du über das Haussymbol (`Startseite`) eine Übersichtsseite aufrufen und dort `Änderungen` auswählen.

![Änderungen-Seite im Team-Explorer]({{ site.url }}/images/git-mit-vs2019/aenderungen-dialog.jpg)
{: .pull-left}

Unterhalb vom gelben Textfeld siehst du alle aktuellen Änderungen aufgelistet. Diese Auflistung umfasst alle Dateien, die du seit dem letzten *Commit* geändert hast. Wenn du nun einfach eine Beschreibung für diese Änderung(en) in das gelbe Textfeld eingibst und den Button `Commit für alle` betätigst, hast du einen Commit erstellt. Damit verschwindet die Auflistung der Änderungen, weil diese ja nun in einem *Commit* beschrieben sind.

Diesen Prozess solltest du zukünftig kontinuierlich wiederholen. Damit kannst du dann im nächsten Schritt sehen welche Änderungen du wann und warum gemacht hast.

**Die wichtigsten Schritte:**

Im `Team Explorer`:

1. Commit-Beschreibung eingeben
2. `Commit für alle` Button betätigen

## Aktuellen Verlauf anzeigen

Sobald du einige *Commits* erstellt hast, kannst du dir in *Visual Studio* den bisherigen Verlauf anschauen. Dazu gehst du am besten in den `Projektmappen-Explorer`. Darin kannst du auf der Datei für die du den Verlauf sehen möchtest das Kontextmenü (rechte Maustaste) öffnen und `Verlauf anzeigen...` auswählen. Dies öffnet einen weiteren Tab.

Darin siehst du für jeden *Commit* sowohl das Datum und auch die Nachricht. Wenn du zu einem *Commit* die Details sehen möchtest, dann gehst du auf diesen *Commit* im *Verlauf* und rufst über das *Kontextmenü* den Punkt `Commitdetails anzeigen` auf. Damit wechselt *Visual Studio* automatisch vom `Projektmappen-Explorer` zum `Team Explorer`. Darin siehst du auch welche Dateien vom *Commit* verändert wurden.

Insbesondere im Verlauf siehst du warum gute *Commit-Beschreibungen* wichtig sind. Sobald du nämlich einige *Commits* gemacht hast, wird es immer schwieriger einzelne *Commits* wiederzufinden. Insbesondere wenn einige Tage oder gar Wochen vergangen sind, dann kommst du mit kryptischen Beschreibungen nicht wirklich weiter.

Möchtest du den Verlauf für das ganze Projekt sehen, dann musst du den `Team Explorer` bemühen. Darin gehst du am besten über das Haussymbol zur `Startseite`. Dort wählst du dann `Branches` aus. Üblicherweise siehst du in der folgenden Auflistung nur den Projektnamen und dadrunter den Eintrag `master`. Solltest du mehrere *Branches* haben, dann wird dir der Aktive mit fettgedruckten Buchstaben angezeigt.

<div class="subscribe-notice">
<h5>Du kennst dich noch nicht mit Visual Studio aus?</h5>
<a markdown="0" href="/einstieg-csharp/" class="notice-button">Hier geht's zum Online-Kurs "Einstieg in C#" >></a>
</div>

Auf dem gewünschten Branch kannst du im *Kontextmenü* ebenfalls `Verlauf anzeigen...` auswählen. Dann siehst du alle Commits die es bisher in dem ausgewählten Branch gegeben hat.

Solltest du das Thema *Branches* noch nicht kennen ist das kein Problem. Verwende einfach erstmal `master`.

**Die wichtigsten Schritte:**

Im `Projektmappen-Explorer:`

```
Via Kontextmenü "Verlauf anzeigen..." auf der gewünschten Datei ausführen
```

## Eine ältere Version (Commit) verwenden

Gerade wenn es darum geht auf eine ältere Version zurück zu gehen gibt es bei *Git* ein paar Herausforderungen zu meistern. Wenn du im *Verlauf* (siehe vorherigen Abschnitt) einen *Commit* auswählst und dir das Kontextmenü anzeigen lässt, dann findest du den Eintrag `Zurücksetzen`.

Dieser Eintrag setzt jedoch nicht dein ganzes Projekt auf den Stand des *Commits* zurück, sondern macht genau diesen einen *Commit* rückgängig. Hast du beispielsweise im letzten Commit einen Fehler gemacht, dann kannst du ihn auf diese Weise rückgängig machen.

Ich würde dir erstmal davon abraten das `Zurücksetzen` in einem anderen Kontext auszuführen. Es macht dir zwar nichts kaputt, weil das `Zurücksetzen` als ein weiterer *Commit* im *Verlauf* auftaucht, aber es wird dann unübersichtlich und kompliziert.

Eine Alternative bekommst du mit der Funktionalität `Neuer Branch...`. Diese kannst du ebenfalls aus dem Kontextmenü eines *Commits* im *Verlauf* aufrufen. Wenn du diese Funktionalität verwendest, erstellst du einen neuen Zweig in *Git*. Das bedeutet, dass alle bisherigen Änderungen erhalten bleiben und du unabhängig davon eine andere Lösung ausprobieren kannst.

Bevor du einen neuen *Branch* erstellen kannst, musst du alle noch ausstehenden Änderungen per *Commit* abgeben. Wenn es noch Änderungen gibt, dann kannst du keinen neuen *Branch* erstellen.

Willst du also dein Projekt ab einer gewissen Stelle im *Verlauf* verändern, dann gehst du auf den entsprechenden *Commit*, wählst `Neuer Branch...` aus dem Kontextmenü und gibst im `Team Explorer` einen Namen für deinen Branch ein. Dies könnte zum Beispiel sein *"Lösungsweg2"*. Es ist bereits `Branch auschecken` ausgewählt und dies solltest du auch belassen. Nun einfach den Button `Branch erstellen` betätigen und du hast einen neuen Branch mit dem Projektstand zum ausgewählten *Commit* erstellt. In diesem Branch kannst du Änderungen machen und beliebig viele *Commits* erstellen.

Hast du nun in deinem neuen Branch deine Lösung soweit entwickelt wie nötig, kannst du diesen Branch zurück führen in deinen Ausgangsbranch (das wird *Merge* genannt). Somit hast du nicht mehr zwei parallele Zweige an denen entwickelt werden kann.

Nachdem du alle Änderungen in deinem Branch per *Commit* abgegeben hast, kannst du zurück in den `master` Branch wecheseln. Das machst du im `Team Explorer` im Bereich `Branches`. Dort siehst du, dass der von dir erstellte Branch momentan fettgedruckt ist. D.h. er ist momentan aktiv. Mache nun einen Doppelklick auf den Branch `master` direkt im `Team Explorer`. Damit wird dieser aktiv gesetzt.

Wenn nun der `master` Branch aktiv ist, kannst du auf ihm im `Team Explorer` per Kontextmenü die Funktion `Mergen aus...` auswählen. Damit öffnet sich eine neue Eingabe im `Team Explorer` bei der du deinen Branch im Bereich `Mergen aus Branch:` auswählen kannst. Die restlichen Einstellungen können so bleiben und du führst mit einem Klick auf den Button `Merge` den Vorgang aus.

Nun kann es passieren, dass du noch *Konflikte* auflösen musst. Dabei solltest du dir alles im Detail anschauen, aber üblicherweise kannst du immer die Änderungen aus der `Quelle` übernehmen.

Hoffentlich hat dir diese Anleitung ein wenig geholfen beim Umgang mit Git und Visual Studio. Momentan fehlen dieser Anleitung noch ein paar Bilder. Diese werde ich in den nächsten Tagen nachliefern.

Viel Erfolg beim Verwalten deiner Versionen mit Git und Visual Studio

Jan
