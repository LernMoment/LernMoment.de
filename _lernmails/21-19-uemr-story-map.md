---
layout: page
title: "LernMail 19/21 - ÜbungsMomentReminder: (M)eine Geschichte"
excerpt: "Wir schauen uns an, was unsere neue Anwendung denn eigentlich so machen soll"
search_omit: true
image:
  feature: banner/lernmoment-main.jpg
lm-newsletter-group-id: 1
modified:
date: 2021-09-04T09:30:00+01:00
---

Mmmmmoin und willkommen zu deiner LernMail!

Schön, dass du wieder dabei bist! Bestimmt hast du deine Hausaufgaben, oder besser gesagt den [letzten Übungsmoment](/lernmails/21-18-erinnerungs-bot-einleitung/), gemacht! ODER 🙃? Es ging darum, dass wir eine erste Idee bekommen wollen was unsere zu entwickelnde Anwendung (der *ÜbungsMomentReminder* oder kurz *ÜMR*) eigentlich machen soll. Dazu eignet sich eine *User Story Map* ganz hervorragend. Wenn du die Einführung des Projektes verpasst hast, dann kannst du sie in [LernMail 18/21](/lernmails/21-18-erinnerungs-bot-einleitung/) nachlesen.

> **NEU:** Alle bisher versendeten LernMails findest du nun im [LernMail-Archiv](/lernmails/)

#### ÜbungsMomentReminder - Die aktuelle Story Map
Bevor wir uns gemeinsam meine Geschichte über den *ÜbungsMomentReminder* anschauen, nochmal ein paar Worte dazu wie du eine *Story Map* verwenden kannst und warum sie für die Entwicklung wichtig sein kann.

Wie bereits gesagt, ist eine *Story Map* (ganz genau gesagt handelt es sich um eine *User Story Map*) in dem Sinne **kein** Anforderungsdokument. Im Vergleich zu "klassischen" Projekten ersetzt es also **nicht** das Lasten- oder Pflichtenheft. Vielmehr ist es ein Tool, welches du verwenden kannst, um dir mit Kunden, Produktmanagern, Domainexperten, Entwicklern, ... einen Überblick über das große Ganze zu verschaffen. Es gibt dir etwas Struktur an die Hand für eine ansonsten sehr freie Diskussion über das zu entwickelnde Produkt und alles was drum herum wichtig ist.

Für den *ÜbungsMomentReminder* habe ich folgende *Story Map* erstellt:

![Erste Story Map für den ÜbungsMomentReminder]({{ site.url }}/images/lernmails/uebungs-moment-reminder/erste-story-map.jpg)

Im Bild siehst du nur einen Teil der *Story Map*. In meiner kompletten *Story Map* gibt es noch ein weiteres Release welches *Stories* enthält, die die Bedienbarkeit verbessern. Erstmal ist mir aber nur wichtig, dass wir die wichtigsten Funktionen in einer einfachen Variante für den *ÜbungsMomentReminder* umsetzen. Wenn wir das haben, dann können wir nämlich wesentlich besser entscheiden, ob die Richtung in die wir uns bewegen auch wirklich gut ist.

Wie du siehst habe ich bereits ausformulierte *User Stories* in der *Story Map* verwendet. Das ist eigentlich nicht notwendig und meistens auch nicht so sinnvoll. Schließlich geht es darum, dass wir uns über eine Geschichte unterhalten. Dafür werden eigentlich nur wenige Schlagworte notiert. Da wir uns nun leider nicht richtig unterhalten können, habe ich jeder *User Story* schon mal etwas mehr Kontext gegeben. 

Außerdem enthält die *Story Map* nicht nur einen in sich abgeschlossenen Vorgang (wie es eigentlich sein sollte). Du siehst, dass auf der rechten Seite ein paar administrative *User Stories* enthalten sind. Da diese zeitlich (und bezogen auf die Personen) getrennt vom eigentliche Ablauf zu sehen sind, könnten sie auch in eine eigene *Story Map* kommen. Da es sich hier allerdings um wenige und einfach *Stories* handelt, habe ich mich entschlossen alles in eine *Story Map* zu packen.

Nun aber wirklich zu meiner ersten Fassung der Geschichte für den *ÜbungsMomentReminder*:

> Lotte (die Lernende) erhält eine neue LernMail. Sie findet das Thema darin sehr spannend und möchte es zum Festigen anhand des enthaltenen ÜbungsMoment in die Praxis umsetzen. Allerdings weiß Lotte auch, dass sie sich häufig Dinge vornimmt, die sie dann aus den Augen verliert. Daher nimmt sie das Angebot in der LernMail wahr und möchte gerne in 4 Tagen eine Erinnerung an den *ÜbungsMoment* erhalten. So hat sie auch nach der Erinnerung noch etwas Zeit bevor die nächste LernMail kommt, die dann hoffentlich eine Musterlösung enthält.
>
> Wie aber genau funktioniert das nun mit der Erinnerung? Lotte ist mutig und probiert es einfach aus. Dazu klickt sie auf den Link *"Ja, erinnere mich an diese Übung in ein paar Tagen"* in der LernMail. Es öffnet sich ihr Mailprogramm mit einer bereits formulierten Mail, die sie einfach abschickt. Damit ist für Lotte die Anmeldung erstmal abgeschlossen. Zwar wäre es schön, wenn sie noch eine Bestätigung bekommen würde, aber das kommt erst in einem weiteren Release.
>
> Während Lotte nun auf ihre Erinnerung wartet, bekommt Jan (der Admin des ÜbungsMomentReminder) den Hinweis, dass eine andere Anmeldung nicht automatisch verarbeitet werden konnte. Er schaut sich die Anmeldungsmail an und erstellt manuell einen Eintrag im ÜbungsMomentReminder mit den nötigen Daten aus der Anmeldung.
>
> 4 Tage später erhält Lotte eine Erinnerungsmail, dass sie den ausgewählten Übungsmoment machen wollte. Der Absender der Mail ist der ÜbungsMomentReminder. Der Inhalt der Mail basiert auf einer Vorlage, die Jan im ÜbungsMomentReminder konfiguriert hat. In diese Vorlage wurden einige spezifische Informationen aus der Anmeldung von Lotte übernommen. So weiß Lotte nun wieder was sie machen wollte. Die Mail enthält einen Link zu der LernMail die den von ihr gewünschten ÜbungsMoment enthält. So kann sie gleich nochmal nachschauen was genau sie machen wollte.
>
> Jan ist wichtig, dass die personenbezogenen Daten von Lotte nur solange wie nötig gespeichert werden. Daher zeigt ihm der ÜbungsMomentReminder nach 2 Wochen, dass die Details zu Lottes Erinnerung gelöscht werden können. Durch eine Bestätigung von Jan werden die Details gelöscht. Übrig bleibt nur die Information, dass eine Erinnerung für den ÜbungsMoment verschickt wurde. Damit kann Jan sich einen Überblick verschaffen, welche ÜbungsMomente besonders gut ankommen.
>
> Für die Konfiguration des ÜbungsMomentReminders ist Jan noch wichtig, dass sensible Daten sicher gespeichert werden. Dazu gibt Jan beim ersten Start des ÜbungsMomentReminder alle notwendigen Daten für das zu benutzende Postfach ein. Im laufenden Betrieb hat Jan die Möglichkeit die Daten des Postfachs zu ändern.

Geschafft! Puh 😅! Das ist erstmal meine erste Fassung. Wichtig: eine *Story Map* ist ein lebendes Dokument (also im übertragenen Sinne ;). Sobald wir feststellen, dass wesentliche Informationen fehlen oder sich an der Geschichte etwas wesentlich ändert, wird die *Story Map* überarbeitet. 

**Meine Bitte:** Ist dir etwas unklar an der Geschichte oder fehlt aus deiner Sicht etwas? Dann [schreib mir eine Mail](mailto:jan@lernmoment.de?subject=Diskussion%20ÜbungsMomentReminder%20-%20Story%20Map)! Eine *Story Map* ist ein Tool für das ganze Team. Da wir beide ja nun das Team bilden, hoffe ich auf deinen Input.

#### Details für die Story Map
Eine *Story Map* sollte möglichst **nicht zu viele** Details enthalten. Sie ist ja für das große Ganze da. Daher habe ich weder in den *Stories* noch in der Geschichte die die *Story Map* erzählt viele Details eingeführt. Da wir die *Story Map* ja aber zur Diskussion benutzen wollen, können wir nun Details für einzelne Schritte skizzieren.

Beipielsweise habe ich ein paar Gedanken für eine der *Stories* auf ihrer Karte in Miro skizziert:

![Details zu Probleme bei der Anmeldung]({{ site.url }}/images/lernmails/uebungs-moment-reminder/details-probleme-bei-anmeldung.jpg)

Schön wäre es auch, wenn wir schon mal sehen würden, wie eine automatisch generierte Anmeldungsmail und eine Erinnerungsmail aussieht. Damit könnten wir dann auch sehen welche Daten später von der Anwendung verarbeitet und in der DB gespeichert werden müssen. Der nächste Schritt ist also dieses vorzubereiten und wenn möglich mit den *Stories* in der *Story Map* zu verknüpfen. 

**WICHTIG:** Es geht hier nicht darum alles im Detail zu beschreiben. Wir wollen lediglich einen Überblick bekommen. Es braucht also nur die Informationen die für das allgemeine Verständnis notwendig sind. Der Grundgedanke von agiler Softwareentwicklung (in der *User Stories* und *Story Maps* verwendet werden) ist, dass Entscheidungen und Details möglichst erst spät getroffen werden. So vermeiden wir, dass wir viel Zeit in die Vorbereitung stecken und dann später feststellen, dass diese ganzen Details überhaupt nicht notwendig sind.

#### Alternativen - Diskutieren wir die Technologie?
Ein weiterer wichtiger Bestandteil einer *Story Map* sind Alternativen. Zu dem bisher beschriebenen Vorgehen, könnten wir auch einige (wahrscheinlich so gar bessere) Alternativen finden. Bisher gehe ich beispielsweise davon aus, dass alles (sowohl die Anmeldung wie auch die Erinnerung) über Mails läuft. Allerdings wäre eine gute Alternative, dass Lotte bei einem Klick auf den Anmeldungslink, auf eine Webseite kommt und sich nicht eine automatisch generierte Mail öffnet. Damit würde es auch eine gute Alternative für Hinweise geben (z.B. eine *Notification* an Lotte, dass ihre Erinnerung erfolgreich eingerichtet wurde).

Grundsätzlich können solche Alternativen sehr gut in der *Story Map* dokumentiert werden. Dann haben wir mithilfe der Releases in der *Story Map* die Möglichkeit verbesserte Versionen zu beschreiben. Auch wenn sich die Idee einer Webanwendung bereits in meinem Hinterkopf befindet, geht es im ersten Schritt aber erstmal um etwas anderes. Da ich dir eine WPF-Anwendung mit DB-Zugriff zeigen will, bleiben wir erstmal bei unserer Geschichte und der von mir vorgegebenen Technologie.

### Mal was praktisches - Versende eine Mail
Nun sind wir schon bei der 2. Mail zum *ÜbungsMomentReminder* und um C# ging es bisher noch gar nicht. Das werden wir nun mal ändern. Mithilfe unserer Geschichte haben wir ja bereits eine grobe Idee was zutun ist. Wir brauchen eine WPF-Anwendung die einiges an Daten anzeigt und speichert. Sie soll sich einen Teil der Daten (die Anmeldungen für die Erinnerungen) aus einem Postfach holen und dann zu einem definierten Zeitpunkt eine Mail verschicken.

Damit ist klar, dass ein wichtiger Bestandteil unseres *ÜbungsMomentReminder* die Interaktion mit einem Email-Postfach ist. Wie aber genau geht das und wie aufwendig ist das wohl? Genau an dieser Stelle habe ich bisher nur wenig Erfahrung. Vielleicht ist das bei dir ja anders, aber für mich ist es Zeit, dass ich mal eine kleine Erkundungsreise in das Thema "Mail-Postfach mit C# verwalten" unternehme. Details dazu findest du im heutigen ÜbungsMoment (siehe weiter unten).

Warum habe ich gerade dieses Thema ausgewählt? Ich habe schon einige WPF-Anwendungen entwickelt und denke, dass ich ganz gut den Aufwand bzw. die Komplexität davon einschätzen kann. Auch die Anbindung an die DB ist nach meiner Erfahrung nicht so kompliziert. Allerdings kenne ich bisher keine Klassen von .NET oder externe Bibliotheken um Mails von einem Postfach abzuholen oder sie darüber zu versenden.

Somit ist aus meiner bisherigen Sicht der Postfach-Zugriff das größte Risiko für den weiteren Fortschritt im Projekt. Vielleicht ist dieser Zugriff ziemlich kompliziert. Dann könnten wir uns überlegen ob die "Postfach-Lösung" überhaupt sinnvoll ist. Die habe ich ja hauptsächlich vorgeschlagen, weil ich der Ansicht bin, dass wir den ÜbungsMomentReminder wesentlich schneller damit entwickeln können als beispielsweise eine Web-Anwendung (und eine Web-Anwendung ist halt kein WPF 🤪).

Lass uns also gemeinsam das Risiko ein wenig minimieren. Los gehts damit im heutigen ÜbungsMoment!

### Übungsmoment #11 - Unser erster Spike für den ÜMR
Um zu verstehen wie komplex die Interaktion mit einem Postfach in C# ist, machen wir im heutigen ÜbungsMoment einen *Spike*. D.h. wir werden einen kleinen Prototype erstellen. Diesen erstellen wir mit dem Gedanken, dass er nach der Fertigstellung gleich wieder wegschmissen wird. Es geht hier also nicht darum eine schöne Anwendung und sauberen Code zu erstellen. Wichtiger ist, dass dieser Prototyp in einer fest definierten Zeit erstellt wird. Wir wollen jetzt also nicht Tage damit verbringen, sondern es geht darum in 1-2 Stunden eine einfache Abfrage eines Postfachs zu erstellen und am besten auch eine Testmail zu versenden.

Mit der Erfahrung die wir während des *Spike* (also der Prototypenerstellung) sammeln, können wir dann realistisch(er) abschätzen wie lange wir für unseren *ÜbungsMomentReminder* brauchen und ob sich die "Mail-Variante" überhaupt lohnt. Damit nun aber endlich zur Aufgabenstellung:

1. Recherchiere welche Möglichkeiten es in C# gibt auf ein IMAP-Postfach zuzugreifen
2. Wähle eine Lösungsmöglichkeit die dir sinnvoll erscheint aus
3. Erstelle ein *Console-Project* in Visual Studio und schreibe den Code mit dem du eine Mail aus einem Postfach abholen kannst
4. Erweitere deinen Prototypen um das Versenden einer Mail


**Kleiner Tipp:** Es gibt einige Bibliotheken auf *NuGet*, die so etwas anbieten. In der Beschreibung der Bibliothek auf *NuGet* findest du üblicherweise einen Link auf die entsprechenden GitHub-Seite der Bibliothek. Auf dieser gibt es dann häufig Beispielcode. Diesen kannst du in dein Projekt kopieren und dann ausprobieren.

Kennst du überhaupt *NuGet*? Nein? Dann habe ich [da mal was vorbereitet](/alle/warum-nuget/).

Möchtest du etwas genauer wissen was ein *Spike* ist? Dann könnte dir [dieser Artikel](https://de.ryte.com/wiki/Spike) helfen. Lass dich von dem Gerede über Scrum nicht verwirren. Es geht mehr um das grundlegende Konzept eines *Spike*.

#### Erinnerung
**Akzeptierst du diese Übung?** Klicke auf folgenden Link damit wir dich in ein paar Tagen nochmals daran erinnern, dass du die Übung machen wolltest: [Ja, erinnere mich an diese Übung in ein paar Tagen](mailto:lara@lernmoment?subject=[LernMail%2019-21]%20Übungsmoment%20akzeptiert). (Kannst du einfach so abschicken und die Magie passiert. Wenn mehr Lesern die Idee gefällt, wird das natürlich automatisiert ;).

#### Lösung
Bisher habe ich die Aufgabe noch nicht umgesetzt. Du musst dich also bis zur nächsten LernMail gedulden. Wen du magst, kannst du uns [deine Antwort zu dieser Übung schicken](mailto:jan@lernmoment.de?subject=Lösung%20Übungsmoment%20LernMail%2019-21). Dann git es dazu vielleicht sogar ein wenig Rückmeldung ;-).

Wie immer freuen Lara und ich uns über jede [Rückmeldung](mailto:lara@lernmoment.de?subject=Rückmeldung%20LernMail%2019-21) von dir.

Mit geschichtlichen Grüßen von der Spitze des Teutoburgerwaldes in Bielefeld

Jan von [LernMoment.de](https://www.lernmoment.de)

<div class="subscribe-notice">
  <h5>Dir gefällt diese LernMail? Dann melde dich auch für die nächste an ;-)</h5>
	{% include lernmoment-subscribe.html %}
</div>
