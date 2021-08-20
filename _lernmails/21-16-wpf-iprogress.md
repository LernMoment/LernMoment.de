---
layout: page
title: "LernMail 16/21 - Fortschritt mal anders!"
excerpt: ""
search_omit: true
image:
  feature: banner/lernmoment-csharp.jpg
lm-newsletter-group-id: 1
modified:
date: 2021-06-23T09:30:00+01:00
---

Mmmmmoin und willkommen zu deiner LernMail!

Vielen Dank für deine Geduld. Wie du vielleicht gemerkt hast, sind die LernMails der letzten 2 Wochen ausgefallen. Mittlerweile bin ich wieder fit und einige der liegen gebliebenden Aufgaben sind auch bereits abgearbeitet. Somit freue ich mich nun dir eine weitere (hoffentlich auch für dich spannende) LernMail zu präsentieren.

#### Fortschritt!
Heute geht es hauptsächlich darum den Fortschritt einer Aufgabe mit einer `ProgressBar` in einer WPF-Anwendung zu visualisieren. Dafür gibt es nicht nur die Typen `Progress<T>` und `IProgress<T>`. Viel wichtiger noch ist, dass die Visualisierung des Fortschritts häufig in einer multi-threading Umgebung verwendet wird. Läuft nun also die Aufgabe die den Fortschritt berichtet als asynchrone Aufgabe oder im Hintergrund, dann musst du aufpassen bei der Aktualisierung von Steuerelementen. Diese dürfen nämlich nur von dem `Thread` aktualisiert werden, der sie auch erstellte hat.

Glücklicherweise läuft früher oder später jede Anwendung in ein solches Szenario. Daher erledigt die Klasse `Progress<T>` alles direkt für uns.

#### Mal anders?
Gut, warum es heute um Fortschritt geht, sollte nun klar sein. Was aber genau ist anders?

Wie du vielleicht schon gemerkt hast, ist die LernMail heute wesentlich kürzer. Das liegt daran, dass du [alles auf GitHub](https://github.com/LernMoment/WpfAsyncProgressBar/issues/1) findest. Da ich für die Erklärung des Themas [eine kleine Beispielanwendung](https://github.com/LernMoment/WpfAsyncProgressBar) erstellt habe, wollte ich ausprobieren ob es für dich besser zu lesen ist, wenn Code und Erklärung direkt zusammen sind.

**Wichtig:** Du benötigst keinen GitHub-Account um dir das Beispiel und/oder die Erkärung ansehen zu können! Solltest du jedoch einen haben, dann kommst du in den Genuss, dass du mir Änderungen zur Beispielanwendung vorschlagen kannst (PullReuqest) oder auch Fragen zum Code / Erklärung direkt "vor Ort" stellen kannst.

#### Ausblick
Nächste Woche gibt es dann die letzte LernMail vor der Sommerpause. In der nächsten LernMail werden wir uns nochmals mit dem Projekt auf GitHub beschäftigen. Ich möchte dir nämlich zeigen, wie ich Git und GitHub in meiner täglichen Arbeit verwende. Das wird dann der Auftakt zu einer kleinen Serie in der ich dir einige Aspekte rund um Git und GitHub erkläre. 

*Habe ich da eben **Sommerpause** geschrieben?* Genau! Wie ich in den letzten Wochen feststellen musste, brauche ich wohl ein wenig Urlaub. Außerdem haben Lara und ich einige Änderungen für die LernMails und LernMoment geplant. Dafür brauchen wir allerdings etwas Zeit. Bevor es dann weiter geht, möchte ich auch noch ein paar LernMails vor produzieren. Die Regelmäßigkeit mit der die LernMails Anfang des Jahres versendet worden sind, möchte ich nämlich gerne auch weiter beibehalten. Somit machen die LernMails 6 Wochen Sommerpause :-(. Nächste Woche gibt es aber noch eine.

Nun aber genug Gerede über die Zukunft und tolle Pläne ;-). Lass uns mal schauen wie das mit dem Fortschritt in WPF ist. Hier nochmals die Links:
 - Die Beschreibung was zutun ist und was zu beachten ist, findest du [hier](https://github.com/LernMoment/WpfAsyncProgressBar/issues/1)
 - Den Quellcode der Beispielanwendung findest du [hier](https://github.com/LernMoment/WpfAsyncProgressBar)
 - Eine Frage oder Rückmeldung wie dir der Ansatz mit GitHub gefallen hat, kannst du mir [hier](https://github.com/LernMoment/WpfAsyncProgressBar/issues/new) geben oder [direkt per Mail](mailto:jan@lernmoment.de?subject=Rückmeldung%20LernMail%2016-21) schicken.

### Übungsmoment #8 - Dein Fortschritt
Nach dem Lesen des Artikels hast du vielleicht schon erste Ideen wie du eine `ProgressBar` unter Verwendung von `Progress<T>` in einer eigenen Anwendung einsetzen kannst. Wenn dem so ist, dann probiere es am besten gleich aus.

Wenn du lieber eine kleine Übung haben möchtest, dann kannst du dir die Beispielanwenung nehmen und die Klasse `BusinessLogic` ersetzen oder ergänzen. Ziel sollte es sein eine "richtige" kleine Anwendung zu erstellen. Beispielsweise könntest du einen einfachen "Datei-Kopierer" erstellen. Dafür kannst du einen festen Pfad angeben in dem die Dateien liegen und wo sie hin kopiert werden sollen. Über den `StartButton` kann der Kopierprozess dann gestartet werden und die `ProgressBar` zeigt an wieviele Dateien bereits kopiert sind. Wenn du es etwas anspruchsvoller magst, kannst du auch die Anzahl an zu kopierenden Bytes berechnen und wieviele bereits kopiert sind.

#### Erinnerung
**Akzeptierst du diese Übung?** Klicke auf folgenden Link damit wir dich in ein paar Tagen nochmals daran erinnern, dass du die Übung machen wolltest: [Ja, erinnere mich an diese Übung in ein paar Tagen](mailto:lara@lernmoment?subject=[LernMail%2016-21]%20Übungsmoment%20akzeptiert). (Kannst du einfach so abschicken und die Magie passiert. Wenn mehr Lesern die Idee gefällt, wird das natürlich automatisiert ;).

#### Lösung
Gibt es "natürlich" keine ;-). Sobald du auf GitHub aktiv geworden bist, kommen wir ins Gespräch.

Wie immer freuen Lara und ich uns über jede [Rückmeldung](mailto:lara@lernmoment.de?subject=Rückmeldung%20LernMail%2014-21)

Mit mal anders fortschrittlichen Grüßen aus Bielefeld

Jan von [LernMoment.de](https://www.lernmoment.de)

<div class="subscribe-notice">
  <h5>Dir gefällt diese LernMail? Dann melde dich auch für die nächste an ;-)</h5>
	{% include lernmoment-subscribe.html %}
</div>
