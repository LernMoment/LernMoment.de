---
layout: page
title: "LernMail 18/21 - Git/GitHub in meinem Arbeitsalltag"
excerpt: ""
search_omit: true
image:
  feature: banner/lernmoment-vs.jpg
lm-newsletter-group-id: 1
published: false
modified:
date: 2021-07-14T09:30:00+01:00
---

Mmmmmoin und willkommen zu deiner LernMail!

Heute geht es erstmal um ein paar grundlegende Aspekte meines Arbeitsalltags. Nicht, weil ich so gerne über mich spreche, sondern, weil ich in Mentorings und Projekten in den letzten Wochen immer wieder festgestellt habe, wie wichtig es ist eine strukturierte Arbeitsweise zu haben. Zusätzlich haben wir mit Tools wie Git und GitHub tolle Möglichkeiten.

Heute bekommst du erstmal einen Überblick wie ich an einem Projekt arbeite. Daran siehst du welches für mich die wichtigsten Funktionalitäten von Visual Studio, Git und GitHub sind und wie ich dieses einsetze. Vielleicht kennst du noch nicht alle Funktionalitäten, aber es geht mir erstmal darum, dass du einen guten Überblick bekommst. Nach der Sommerpause erkläre ich dann die Themen, die am häufigsten von dir und anderen Lesern der LernMail angefragt werden.

**Wichtig:** Damit Lara und ich den weiteren Inhalt planen können, brauchen wir deine Rückmeldung zu welchen der Themen aus dieser LernMail du mehr Informationen brauchst. [Schreib uns](mailto:lara@lernmoment.de?subject=Rückmeldung%20LernMail%2017-21) also wovon du mehr lesen möchtest!

- Start in den Morgen -> Einen Überblick verschaffen
   - Priorisierung mit Project & Issues
- Was genau ist zutun?
   - Gibt es schon Änderungen? überprüfen ob ich einen Branch habe
   - Clockify starten, wenn ich ein Thema ausgesucht habe
- Design-Idee dokumentieren
   - Recherche im Quellcode: Was ist bereits vorhanden?
   - Abstimmung mit Kunden im Issue (wichtig für die Dokumentation!)
   - Design(-Idee) beschreiben mithilfe von Einträgen die abgehakt werden können
- Arbeiten am Quellcode
   - Branch erstellen
   - Einzelne kleine Schritte umsetzen die in sich abgeschlossen sind
   - Commit mit Link auf das entsprechende Issue
   - Nächster kleiner Schritt
- Stand & Aufwand dokumentieren

#### Einen Überblick verschaffen (Start in den "Morgen")
Okay, ich bin definitiv kein Frühaufsteher. Mein Arbeitstag beginnt häufig erst um 10 Uhr, aber dann richtig ;-).

Mein erster Schritt ist üblicherweise mir einen Überblick zu verschaffen von den Dingen an denen ich gerade arbeite. Für größere Projekte nutze ich gerne das [project board](https://docs.github.com/en/issues/organizing-your-work-with-project-boards/managing-project-boards/about-project-boards) von GitHub und bin mal sehr gespannt wie sich GitHubs neues [project management for developers](https://github.com/features/issues) anfühlt. Auch wenn es viele Tools gibt (bestimmt sogar bessere), verwende ich GitHub, weil für mich hier alles an einem Ort vorhanden ist und ich nicht immer die Tools wechseln muss. Das ist natürlich eine persönliche Präferenz.

Mein project board ist im Kanban-Stil organisiert und zeigt mir woran ich gerade arbeite bzw. was genau die nächsten Themen sind. Dabei organisiere ich die einzelnen Funktionalitäten mithilfe von Issues. D.h. jedes Thema (z.B. [Erstellen eines Beispielprogramms für asynchrone ProgressBar](https://github.com/LernMoment/WpfAsyncProgressBar/issues/1)) bekommt ein Issue für eine Funktionalität die dem Kunden einen wirklichen Nutzen bietet (erinnerst du dich noch an die [Wichtigkeit des Kundennutzen](/lernmails/21-10-philosophie-kundennutzen/)?).

Wenn ich also mit einem neuen Thema beginne, dann schiebe ich im project board den entsprechenden Eintrag von *ToDo* auf *In Progress*. Da ich häufig in meiner Arbeit unterbrochen werde, habe ich so immer einen guten Einstieg, wenn ich gerade mal wieder nicht weiß wo ich in einem Projekt weitermachen soll. Außerdem hat mein Kunden ebenfalls Zugriff zu dieser Übersicht. So kann er ebenfalls jederzeit sehen woran ich momentan arbeite.

Eine *Priorisierung* nehme ich übrigens gemeinsam mit dem Kunden vor. Dazu sprechen wir üblicherweise die verschiedenen Aufagben für die nächsten 1-2 Wochen. Diese werden dann entsprechend den Wünschen des Kundens mit absteigender Wichtigkeit in der *ToDo*-Spalte des project boards angeordnet. So weiß ich, dass ich einfach immer den obersten Eintrag nehmen kann, wenn ich mit einem Thema fertig bin.

#### Was genau ist zutun?

#### Warum eigentlich Git und GitHub
Wie du weißt sind Git und GitHub wichtig Tools für mich in meinem Alltag als Softwareentwickler. Ein paar grundlegende Artikel zu Git und GitHub auf [LernMoment.de](/) sind diese:
 - [Warum Git?]()

### Übungsmoment #7 - Werde zum "Lehrer"
Aus meiner Sicht bietet dieses Projekt wirklich viel Potential für dich deinen aktuellen Lernfortschritt zu testen und zu festigen. Daher möchte ich dich heute bitten ein C#-Syntax-Element deiner Wahl etwas genauer zu beschreiben. Egal wie einfach das von dir ausgesuchte Element ist, du wirst bei der Beschreibung früher oder später feststellen, dass du noch nicht alles kennst.

Ach ja, das Wort Beschreibung kommt ja von Schreiben. Also solltest du auf jeden Fall deine geistigen Ergüsse aufschreiben. Das machst du am besten direkt an dem [GitHub-Projekt](https://github.com/LernMoment/einstieg-csharp-syntax/issues). Denn:

**gemeinsam lernen macht mehr Spaß!**

Teilst du deine Resultate mit der LernMoment-Community, hast du die Möglichkeit Rückmeldung und Hilfe zu bekommen. Du gibst aber auch etwas zurück von dem was du hier bei LernMoment (meistens kostenlos) bekommst.

Darüberhinaus tust du noch etwas um **bei deiner Bewerbung zu glänzen**. Je mehr du nämlich auf Plattformen wie GitHub, StackOverflow und Co. machst, um so besser kann ein potentieller Arbeitgeber oder Kunde sehen, dass du nicht nur erzählen, sondern auch arbeiten kannst.

#### Erinnerung
**Akzeptierst du diese Übung?** Klicke auf folgenden Link damit wir dich in ein paar Tagen nochmals daran erinnern, dass du die Übung machen wolltest: [Ja, erinnere mich an diese Übung in ein paar Tagen](mailto:lara@lernmoment?subject=[LernMail%2017-21]%20Übungsmoment%20akzeptiert). (Kannst du einfach so abschicken und die Magie passiert. Wenn mehr Lesern die Idee gefällt, wird das natürlich automatisiert ;).

#### Lösung
Gibt es "natürlich" keine ;-). Sobald du auf GitHub aktiv geworden bist, kommen wir ins Gespräch.

Wie immer freuen wir uns über jede [Rückmeldung](mailto:lara@lernmoment.de?subject=Rückmeldung%20LernMail%2017-21)

Mit syntaktisch mehr oder weniger korrekten Grüßen aus Bielefeld

Jan von [LernMoment.de](https://www.lernmoment.de)

<div class="subscribe-notice">
  <h5>Dir gefällt diese LernMail? Dann melde dich auch für die nächste an ;-)</h5>
	{% include lernmoment-subscribe.html %}
</div>
