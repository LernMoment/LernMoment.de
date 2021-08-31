---
layout: page
title: "LernMail 18/21 - Ein neues Projekt: ÜbungsMomentReminder Teil 1"
excerpt: "Die Sommerpause ist vorbei und es gibt einige wirklich spannende Neuigkeiten!"
search_omit: true
image:
  feature: banner/lernmoment-github.jpg
lm-newsletter-group-id: 1
modified:
date: 2021-08-20T09:30:00+01:00
---

Mmmmmoin und willkommen zu deiner LernMail!

Willkommen zurück aus der Sommerpause. Vor einigen Tagen ist hier in NRW die Schule wieder gestartet. Als bekennender Langschläfer, darf ich nun endlich wieder früh aufstehen 🤪. Auch wenn das etwas sarkastisch gemeint ist, freue ich mich doch, dass ich auch morgens schon Zeit mit meiner Tochter verbringen kann. Das ist übrigens einer der Gründe warum ich als Selbstständiger arbeite.

Ich hoffe auch du hattest einen schönen Urlaub oder steckst noch mitten drin. Lara und ich haben die Zeit genutzt um die automatisierten Emails zu verbessern. Sofern du dich über den [WPF Übungskurs](/lernmail-kurse/wpf-tictactoe-fuer-einsteiger/) eingeschrieben hast, hast du wahrscheinlich den seit langem fehlenden Abschlussteil bekommen. Außerdem sind wir gerade dabei das Thema Datenschutz besser umzusetzen. Bisher war der Anmeldeprozess nicht ganz sauber, weil es keine Möglichkeit gab sich für den *WPF Übungskurs* anzumelden ohne gleichzeitig auch die LernMails zu bekommen.

Die Verwendung der Software mit der wir die LernMails erstellen und versenden, hat uns wieder mal gezeigt wie wichtig eine gute Benutzerführung ist. Das ist in der Software nämlich leider sehr unklar gestaltet, was uns teilweise hat verzweifeln lassen. Daher kann ich immer wider nur betonen wie wichtig Dinge wie *User Story*, *Story Map* und natürlich ein gutes Design der *User Experience* sind.

### Das ist neu 😎
Da du ja bereits für die LernMail angemeldet bist, ist der Anmeldeprozess wohl nicht so wichtig für dich. ABER! Trommelwirbel! Es gibt nun ein Archiv aller bisher gesendeten LernMails:

[Das LernMail Archiv](/lernmails/)

Uns ist klar, dass du nicht jede LernMail immer sofort lesen kannst. Schließlich sind sie teilweise sehr umfangreich und bestimmt interessiert dich auch nicht immer jedes Thema direkt. Mit dem [LernMail Archiv](/lernmails/) hast du nun die Möglichkeit schnell zu sehen welche Themen es bisher gab. Wir hoffen, dass du so die passenden Inhalte zum passenden Zeitpunkt finden kannst. In den nächsten Wochen wird das Archiv noch etwas übersichtlicher und bekommt hoffentlich auch eine *"Tag-Funkion"*. D.h. du siehst an jeder LernMail was die Kernthemen sind, weil der Titel vielleicht nicht immer aussagekräftig genug ist 😇.

Mit der zweiten Neuerung kommen wir dann auch endlich zum wirklichen Inhalt dieser LernMail.

#### ÜbungsMomentReminder - Die neue LernMail-Serie
*Binge watching* war gestern. Heute kannst du "live" dabei sein wie eine komplette **WPF-Anwendung mit Datenbankanbindung** entsteht.

Was mit Abstand am meisten bei uns nachgefragt wird ist ein Kurs zum Thema "Anwendung mit Oberfläche und Datenbankanbindung". Leider hat mir bisher immer die Zeit (und Ausdauer) gefehlt einen komplett neuen Kurs zu entwickeln. Da wir für die LernMails nun eine gewisse Routine gefunden haben, möchten wir das nutzen um einen neuen Kurs vorzubereiten. Hier ein erster Überblick über die Ziele:

- **Ziel der Anwendung:** Eine einfache WPF-Anwendung die mithilfe von EF Core (vielleicht auch Dapper), SQLite und DataBinding die Grundlagen einer Desktopanwendung mit Datenbankzugriff zeigt.
- **Ziel des Kurs:** Die grundlegenden Schritte zum Erstellen einer WPF-Anwendung mit Datenbankzugriff zeigen und dabei die notwendigen Grundlagen, Konzepte, Technologien und Arbeitsweisen erklären.
- **Ziel der LernMail-Serie:** Mithilfe der LernMails möchte ich die grundlegende Struktur des Kurses, das Skript, den Quellcode und viele Artikel für LernMoment erstellen. Für die LernMails werde ich also keine Videos oder fertige Übungen erstellen, sondern es geht darum den kompletten Inhalt in schriftlicher Form fertig zustellen. Danach kann ich den Kurs dann hoffentlich "einfach" abdrehen.

Die Idee des ÜbungsMomentReminder kennst du vielleicht schon aus der [LernMail 11/21](/lernmails/21-11-windows-template-studio/). Mithilfe dieser kleinen Anwendung möchten wir Anmeldungen zu den ÜbungsMomenten in den LernMails verwalten und die entsprechenden Erinnerungen versenden. Mehr dazu im ÜbungsMoment weiter unten.

Wenn also alles gut läuft, dann kannst du folgendes mithilfe dieser Serie lernen:
  - Grundlagen / Konzepte
    - Strukturierung einer Anwendung mithilfe des *Model-View-ViewModel (MVVM)* Muster
    - "Synchronisieren" von Daten zwischen Anwendung und DB mithilfe eines *Object-Relational-Mappers (ORM)* 
    - "Automatisches" Aktualisieren der Oberfläche mithilfe von *DataBinding*
  - Technologien
    - WPF mit XAML in .NET 5
    - Windows Template Studio
    - Entity Framework Core und/oder Dapper
    - MVVM Toolkit
    - SQLite
    - Optional: .NET Generic Host und Dependency Injection Container aus .NET

#### Wir brauchen deine Unterstützung 💪!!!
Ganz ehrlich, ich habe etwas Respekt vor dieser Serie. Dieses Jahr bin ich bereits einmal grandios gescheitert bei der Erstellung eines neuen Kurses. Daher habe ich lange mit mir gekämpft ob ich diese Idee umsetzen möchte und damit "an die Öffentlichkeit" gehe. Allerdings weiß ich auch, dass die ganzen Themen wirklich wichtig sind damit du auf deinem Weg zum C# Entwickler ein paar Schritte weiter kommst.

Wie bereits gesagt, gibt es bisher nicht viel mehr als die Idee, ein paar *User Stories*, einen ersten Entwurf einer *Story Map* und einer Liste von Themen die in dieser Serie vermittelt werden sollen. Alles weitere wird sich von LernMail zu LernMail entwickeln. Daher würden wir uns wirklich freuen, wenn du uns auf dieser Wanderung unterstützt:
  - Halte mich in der Verantwortung - Leider sind die letzten LernMails schon nicht mehr sehr regelmäßig gewesen. Wenn es nicht weiter geht, dann freue ich mich über eine Erinnerung von dir (Lara erinnert mich auch, aber ein paar Erinnerungen mehr können nicht schaden ;).
  - Deine Rückmeldung - Es ist sehr schwer die richtige Balance zwischen zu viel und zu wenig Details bei der Erklärung der jeweiligen Themen zu finden. Mit jeder Frage die du uns schickst sehen wir was noch fehlt. Auch die Info wenn etwas zu langatmig ist oder du Teile nicht brauchst, sind sehr hilfreich.
  - Deine Mitarbeit - Wenn du Lust hast, dann laden wir dich ein die Arbeit am [ÜbungsMomentReminder](https://github.com/LernMoment/UebungsMomentReminder) und auch an Artikeln, LernMails, ... aktiv zu unterstützen. 
    - Wir freuen uns über jeden Gastartikel! [Schreib Lara](mailto:lara@lernmoment.de) worüber du schreiben möchtest und Sie koordiniert das dann.
    - Im Bereich *ÜbungsMoment* einer jeden LernMail findest du Hinweise was für die nächste LernMail gemacht werden muss um die Anwendung voran zubringen. Wenn du Spaß an den Übungen hast, kannst du uns gerne deine Resultat zur Verfügung stellen. So können wir uns vielleicht etwas Arbeit sparen.
    - Übernahme von Entwicklungsaufgaben - Du hast bereits etwas Erfahrung und möchtest noch tiefer in das Projekt einsteigen und uns unterstützen? Cool! Bitte [wende dich an Lara](mailto:lara@lernmoment.de) und erkläre ihr was du bereits kannst und was du machen möchtest. Es gibt einiges an Aufgaben. Da ist bestimmt etwas dabei für dich.

### Übungsmoment #10 - Was macht der ÜbungsMomentReminder überhaupt?
Jedes Projekt sollte damit starten, dass du dir einen groben Überblick über die Anforderungen verschaffst. Für den *ÜbungsMomentReminder* ist dir jedoch wahrscheinlich noch nicht wirklich klar was tatsächlich passieren sollen (mir übrigens auch nicht 😱). Daher ist es schwierig direkt die Anforderungen runter zuschreiben. Also sollten wir uns erstmal gemeinsam darüber klar werden, welche Aktivitäten und Aufgaben von welchen Personen ausgeführt werden. Wie bereits in [LernMail 10/21](/lernmails/21-10-philosophie-kundennutzen/) erklärt ist die *Story Map* eine gute Möglichkeit Abläufe (aus Kundensicht) zu analysieren.

In diesem Übungsmoment geht es also (erneut ;) darum eine *Story Map* zu erstellen. Optimal wäre es, wenn wir das gemeinsam vor einer großen Tafel machen könnten, aber das klappt wohl leider nicht. Also müssen wir das erstmal jeder für sich selbst machen und die Ergebnisse können wir dann zusammen tragen.

Deine heutige Aufgabe ist also eine erste kleine *Story Map* zu erstellen und in Form einer kleinen Geschichte aufzuschreiben was bei der Erinnerung an einen ÜbungsMoment so alles passieren kann. Damit du nicht ganz so im Dunkel stehst, gebe ich dir mal vor, dass aus meiner Sicht der Vorgang startet mit dem Erhalt einer LernMail (darin enthalten ist nämlich ein Übungsmoment). Um etwas konkreter zu werden, sagen wir, dass *Lotte die Lernende* eine LernMail inklusive ÜbungsMoment erhält. Nun entscheidet sie sich, dass Sie diesen ÜbungsMoment machen möchte, aber unbedingt eine Erinnerung braucht. Nun kommt der von dir zu beschreibende Vorgang. Der Vorgang endet, wenn *Lotte* ihre Erinnerung erhalten hat. Außerdem haben wir noch *Jan Admin*. Er betreibt den ÜbungsMoment, beseitigt eventuell anfallende Schwierigkeiten und möchte sich einen Überblick verschaffen, wieviel Lernende sich pro ÜbungsMoment für die Erinnerungen angemeldet haben.

Es geht hier nicht darum, dass du das Tool *User Story Map* perfekt verstanden hast. Selbst wenn du das Tool gar nicht nutzt, kannst an diesem ÜbungsMoment teilnehmen. Dafür kannst du in einigen Sätzen aufschreiben was aus deiner Sicht in diesem Vorgang alles passiert. **Wichtig!** Hier geht es bisher noch gar nicht um die zu entwickelnde Anwendung! Wir wollen erreichen, dass wir ein gemeinsames Verständnis über die Benutzer, ihre Probleme, die Aktivitäten, mögliche Alternativen und den Ablauf bekommen.

Sofern du eine visuelle *Story Map* erstellen möchtest, kannst du dies entweder analog mit PostIt-Zetteln / Karteikarten oder digital mit einem entsprechenden Tool machen. Ich nutze momentan die kostenlose Version von [Miro](https://miro.com). 

#### Erinnerung
**Akzeptierst du diese Übung?** Klicke auf folgenden Link damit wir dich in ein paar Tagen nochmals daran erinnern, dass du die Übung machen wolltest: [Ja, erinnere mich an diese Übung in ein paar Tagen](mailto:lara@lernmoment?subject=[LernMail%2018-21]%20Übungsmoment%20akzeptiert). (Kannst du einfach so abschicken und die Magie passiert. Wenn mehr Lesern die Idee gefällt, wird das natürlich automatisiert ;).

#### Lösung
Natürlich gibt es hier nicht die eine richtige Lösung. In der nächsten LernMail werde ich beschreiben wie meine *User Story Map* aussieht und was ich daraus ableite. Wir würden uns freuen, wenn du uns [deine Antwort zu dieser Übung schickst](mailto:jan@lernmoment.de?subject=Lösung%20Übungsmoment%20LernMail%2018-21). 

Wie immer freuen Lara und ich uns über jede [Rückmeldung](mailto:lara@lernmoment.de?subject=Rückmeldung%20LernMail%2018-21) von dir.

Mit erinnernden Grüßen aus dem regnerischen Bielefeld

Jan von [LernMoment.de](https://www.lernmoment.de)

PS: Weißt du wie häufig das Wort *ÜbungsMoment* in dieser LernMail vor kommt? Nein? Dann schreib doch eine kleine Anwendung die dir das ermittelt. Damit hast du nun hoffentlich bis zur nächsten LernMail genug Übungen. Happy Coding!

<div class="subscribe-notice">
  <h5>Dir gefällt diese LernMail? Dann melde dich auch für die nächste an ;-)</h5>
	{% include lernmoment-subscribe.html %}
</div>
