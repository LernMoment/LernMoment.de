---
layout: post
title: "Synchronisiere dein Visual Studio 2019 Projekt mit GitHub"
excerpt: "Da du dein C# Projekt schon mit git verwaltest, kannst du es auch auf GitHub zur Verfügung stellen."
categories: alle
lernmoment: Hintergrund
lm-newsletter-group-id: 1
show-lm-newsletter-subscribe-box: true
share: false
banner: einstieg-csharp
tags: [Visual Studio, GitHub, Versionsverwaltung]
image:
  feature: lernmoment-git-banner.jpg
modified: 2020-03-28T06:00:00+01:00
date: 2020-02-14T06:00:00+01:00
---

In [Versionskontrolle mit Git und Visual Studio 2019](/alle/git-mit-visual-studio-2019/) habe ich dir gezeigt, wie du dein C# Projekt in *Visual Studio 2019* mit *git* verwalten kannst. Im nächsten Schritt gibt es viele Gründe dein Projekt auch auf *GitHub* zu bringen:
- Du kann von mir [Rückmeldung zu deinem Projekt](https://youtu.be/2gNVyMGfZTI) bekommen
- Dein Projekt als *Open Source Projekt* anbieten
- Einfach ein Backup deines Projektes in einer "Cloud" speichern
- Mit anderen (die du explizit einlädst) an deinem privaten Projekt arbeiten
- Dein Projekt strukturiert bearbeiten & planen mit *Issues* und *Projects* auf *GitHub* 

und natürlich viele weitere 😁!

In dieser Kurzanleitung zeige ich dir die wichtigsten Schritte um mit *Visual Studio*

1. die *GitHub for Visual Studio - Erweiterung* zu installieren
2. dein Projekt auf *GitHub* zubringen und
3. kontinuierlich Commits zwischen *Visual Studio* und *GitHub* zu synchronisieren

Bevor du jedoch startest, sollte dir klar sein was genau die Unterschiede zwischen *git* und *GitHub* sind. Ich habe da mal was vorbereitet 😉: [GitHub ist nicht git - was dann?](https://youtu.be/V_IDzTNA_ns).

## 1 - GitHub Erweiterung in Visual Studio installieren
Bevor du anfängst solltest du dir in *Visual Studio* die *GitHub-Extension* installieren. Sie erleichtert das Zusammenspiel von *Visual Studio* und *GitHub* erheblich.

*Visual Studio Extensions* sind häufig kostenlos und es gibt einen [umfangreichen Markplatz](https://marketplace.visualstudio.com) dafür. Am einfachsten kannst du eine *Extension* jedoch direkt in *Visual Studio* installieren. Öffnest du den *Extensions verwalten* Dialog, siehst du im Bereich *Installiert* welche *Extensions* du bereits installiert hast (einige installiert *Visual Studio* bereits während der Installation). Ein Häkchen im grünen Kreis zeigt, dass eine *Extension* installiert ist.

Das folgende Bild und die nachfolgenden Schritte zeigen dir genau wie du die *GitHub Extension for Visual Studio* installieren kannst:

![GitHub Extension installieren]({{ site.url }}/images/github-mit-vs2019/vs-erweiterungen-verwalten.jpg)


**Die wichtigsten Schritte:**

1. *Erweiterungen* verwalten `Erweiterungen -> Erweiterungen verwalten...`
2. auf *Online* klicken
3. im Suchfeld oben rechts nach *GitHub* suchen
4. *Extension* runterladen `"Download" Button an "GitHub for Visual Studio" drücken`
5. *Visual Studio* neustarten:

```
- Alle Visual Studio Fenster schließen, 
- im "VSIX Installer"-Dialog auf "Modify" (bzw. "Ändern") klicken und 
- Visual Studio wieder starten
```

## 2 - Projekt auf GitHub veröffentlichen
Sobald du die *GitHub for Visual Studio Erweiterung* installiert hast, kannst du auch schon dein Projekt auf *GitHub* veröffentlichen. Eine weitere Voraussetzung dafür ist, dass du dein Projekt bereits der Versionsverwaltung hinzugefügt hast. Das habe ich bereits [hier](/alle/git-mit-visual-studio-2019/) beschrieben.

![Änderungen-Seite im Team-Explorer]({{ site.url }}/images/github-mit-vs2019/sync-tab-oeffnen.jpg)
{: .pull-left}

Sowohl das Hinzufügen deines Projektes wie auch das spätere Synchronisieren (siehe nächsten Schritt) machst du über den *Team-Explorer* in *Visual Studio*. Diesen findest üblicherweise in einem *Tab* neben dem *Projektmappen-Explorer* und im Menü *Ansicht*. Im *Team-Explorer* solltest du wie im Bild zu sehen in den Bereich *Sync* bzw. *Synchronisierung* wechseln.

**WICHTIG:** Wenn du die *GitHub for Visual Studio Erweiterung* das erste Mal verwendest, musst du dich bei *GitHub* anmelden. Damit meine ich, dass du bereits einen *GitHub*-Account hast und dich nun mit deinem Benutzernamen und Passwort anmelden musst. Während dieser ersten Anmeldung werden deine Zugangsdaten gespeichert und ab dann kannst du direkt auf *GitHub* aus *Visual Studio* ohne weitere Anmeldung zugreifen. Die Möglichkeit zur Anmeldung bekommst du automatisch, wenn du den im folgenden beschriebenen Prozess zur Veröffentlichung umsetzt.

<div class="subscribe-notice">
<h5>Lerne GitHub mit Visual Studio zu verwenden!</h5>
<a markdown="0" href="https://www.udemy.com/course/github-fuer-entwickler/?couponCode=GH_15-0420_EXISTING" class="notice-button">Zum Online-Kurs "Einstieg in GitHub" >></a>
</div>

![Projekt auf GitHub veröffentlichen]({{ site.url }}/images/github-mit-vs2019/projekt-veroeffentlichen.jpg)
{: .pull-right}

**Die wichtigsten Schritte:**

Im Bereich `Synchronisierung` des `Team Explorer`:

1. `In GitHub veröffentlichen` klicken
2. [optional] `Repositoryname` anpassen (*Visual Studio* verwendet automatisch den Projektnamen)
3. [optional, aber empfohlen] eine kurze (ein Satz) `Beschreibung` eingeben.
4. [optional] `Privates Repository` anwählen, wenn das Projekt nur für andere auf Einladung sichtbar sein soll.
5. `Veröffentlichen` klicken

Nun solltest du auf die [*GitHub*-Seite](https://github.com) wechseln und schauen ob dein neues Projekt verfügbar ist. Es dauert einen Moment bis alles auf *GitHub* angelegt wird. Außerdem zeigt dir *Visual Studio* in der Statuszeile (unten rechts am Fensterrand), das *GitHub* Icon mit dem Namen des erstellten Verzeichnis auf *GitHub*. So sieht es nach der erfolgreichen Veröffentlichung aus:

![Statusbar nach erfolgreicher Veröffentlichung]({{ site.url }}/images/github-mit-vs2019/statusbar-mit-github.jpg)

## 3 - Commits nach GitHub `pushen`
Mit dem veröffentlichen deines Projektes werden einmalig alle bisherigen Änderungen (Commits) automatisch nach *GitHub* geschoben (engl. *push*).

Machst du nun weitere Änderungen und übergibst sie per *Commit* an *git*, werden sie **nicht** automatisch nach *GitHub* geschoben. Anstelle dessen kannst du entweder direkt beim *Commit* anstelle von `Commit für alle` die Option `Commit für alle und push` auswählen oder **nachdem** du einen oder mehrere *Commits* gemacht hast, wechselst du wieder zum `Sync` Bereich im `Team Explorer` und wählst dort `Push` aus.

Die *Statusbar* (unten rechts am Fensterrand) hilft dir dabei den Überblick über den Stand der Versionsverwaltung zubehalten. Hier nochmals ein Bild der *Statusbar* und anschließend die Erklärung was die einzelnen Informationen bedeuten:

![Statusbar Erklärung der Einträge]({{ site.url }}/images/github-mit-vs2019/statusbar-erklaerung.jpg)

1. Name des Projektes auf *GitHub* (wenn bereits auf *GitHub* veröffentlicht)
2. Anzahl der in *git* vorhandenen *Commits* die noch **nicht** auf *GitHub* geschoben wurden
3. Anzahl der geänderten Dateien die noch **nicht** per *Commit* abgegeben wurden
4. Name des Verzeichnis auf der Festplatte

Hoffentlich hat dir diese Anleitung ein wenig geholfen beim Umgang mit *GitHub* und *Visual Studio*. Über jegliche Rückmeldung zu diesem Artikel würde ich mich sehr freuen:

<a markdown="0" href="mailto:jan@lernmoment?subject=Frage%20zum%20Artikel:%20GitHub%20mit%20VisualStudio2019" class="notice-button">Fragen / Kommentare >></a>

Viel Erfolg beim Veröffentlichen deines *VisualStudio*-Projektes auf *GitHub*

Jan
