---
layout: page
title: "LernMail 9/21 - Übungsmoment #1! Wir haben dich gehört!"
excerpt: ""
search_omit: true
image:
  feature: banner/lernmoment-csharp.jpg
lm-newsletter-group-id: 1
modified:
date: 2021-04-21T09:30:00+01:00
---

Mmmmmoin und willkommen zu deiner LernMail!

Bevor wir uns um anderen Dinge kümmern, möchte ich einfach mal DANKE sagen. Der Zuspruch, die Angebote und die Rückmeldungen aus der letzten Mail und der Umfrage haben mich wirklich sehr begeistert und motiviert. 

Schon als ich die letzte LernMail geschrieben habe, wurde mir langsam klar, dass für mich ein wichtiger Faktor der Spaß ist. Tatsächlich macht mir das Schreiben der LernMails nämlich wirklich Freude. Darüberhinaus ist es noch eine super Möglichkeit um mit dir ins Gespräch zu kommen. Also werde ich auch weiterhin schauen ob es hier und da mal Möglichkeiten gibt einen finanziellen Nutzen aus den LernMails zu ziehen. Im Mittelpunkt steht aber, dass du einen wirklichen Nutzen bekommst und dass ich übe Themen wirklich auf den Punkt zubringen.

Wo wir schon beim Thema Übung sind. Lara, LernMoments gute Fee, und ich werden in den nächsten Wochen einige der Anregungen aus der Umfrage umsetzen. Besonders wichtig ist für uns das Thema Üben und persönliche Weiterentwicklung. 80% der Befragten haben angegeben, dass dieses für sie wichtig ist. Daraus nehmen wir mit, dass die LernMails mehr Übungen enthalten können und klarer aufzeigen wie der Inhalt dich in deiner eigenen Entwicklung weiterbringt.

Für mich sind Übungen schon lange Zeit das zentrale Thema beim autodidaktischen Lernen. Daher gibt es schon einige Angebote in diese Richtung auf LernMoment. Da die verschiedenen Übungsmöglichkeiten allerdings recht verteilt sind, werden wir die LernMails dazu nutzen dir jede Woche eine Übung vorzustellen.

Trommelwirbel und Vorhang auf für:

### Dein wöchentlicher Übungsmoment - Einführung
Bereits in der letzten LernMail habe ich auf das [Community-Fragen](https://github.com/LernMoment/community-fragen) - Projekt verwiesen. Dort gibt es kleinere und größere Übungen in Form von Fragen. Neben einer "Musterlösung" von mir, hast du dort auch die Möglichkeit Antworten von anderen Leuten zu lesen. **Am wichtigsten** ist jedoch, dass du selber deine Antwort dort veröffentlichen kannst.

Wie gesagt ist die Forderung nach Übungen nichts neues für uns hier bei LernMoment. Allerdings bringt dir die tollste Übung nichts, wenn du nur einmal drauf schaust und dann sagst: "Ja, die Lösung wird wohl dieses oder jenes sein. Vielleicht!"

Der einzige Weg wie dir eine Übung beim Lernen hilft ist das Tun. Du **"musst"** dich hinsetzen und die Übung wirklich selber machen. Also ein wenig Quellcode schreiben und es ausprobieren. Manchmal auch ein wenig recherchieren und dann eine Antwort aufschreiben. Aus meiner Erfahrung lernst du (hauptsächlich) dann, wenn du deine Lösung aufschreibst und am besten veröffentlichst. Wenn dir klar ist, dass deine Antwort vielleicht andere Leute lesen, dann gibst du dir auch wirklich Mühe. Gehst du für ein Thema soweit ins Detail, dass du es anderen Leuten erklären kannst, dann wirst du es auch so schnell nicht wieder vergessen.

Hier also mein Angebot mit dem wöchentlichen Übungsmoment. Als Teil der wöchentlichen LernMail bereite ich eine Übung vor. Wenn dir das Thema zusagt, dann **"verpflichtest"** du dich, diese Übung schriftlich umzusetzen. Du vergisst schnell, dass du die Übung machen willst? Kein Problem! Wir erinnern dich. Klick einfach auf den entsprechenden Link in der Aufgabenbeschreibung und du bekommst nach einigen Tagen eine Mail mit der Erinnerung, dass du die Übung machen wolltest.

Das ist es auch schon. Nun direkt zum ersten Übungsmoment!

### Dein Übungsmoment - Was bedeutet `{0}` beim `Console.WriteLine`?
Diese Übung habe ich bereits [hier im Community-Fragen Projekt veröffentlicht](https://github.com/LernMoment/community-fragen#syn-2-was-bedeutet-0-beim-consolewriteline). Es geht dabei um folgende Frage von Thomas:

> Hallo Jan! Erstmal, der Kurs gefällt mir super. Aber nun zu Frage, Warum hast du bei "Das Resultat {0}" die 0 da reingeschrieben mit den Klammern. - [Thomas im Kurs "Einstieg in C#"](https://www.lernmoment.de/einstieg-csharp/)

Hier der Quellcode auf den Thomas sich bezieht:

```csharp
string ersterText = "Zehn";
string zweiterText = "10";
string summe = ersterText + "+" + zweiterText;
Console.WriteLine("Das Resultat {0}", summe);
```

Kannst du Thomas Frage beantworten? Wie ist es mit folgenden Bonus-Fragen?

Bonus:

1. Wie könnte man den Inhalt von Console.WriteLine noch schreiben? Ist das deiner Meinung nach besser verständlich?
2. Wie heißt der Fachbegriff wenn vor den Hochkommata eines string ein $ Zeichen verwendet wird?

**Wichtig:** Probiere den Quellcode oben und den für deine Antwort in einem kleinen Testprojekt aus bevor du antwortest!

#### Erinnerung
**Akzeptierst du diese Übung?** Klicke auf folgenden Link damit wir dich in ein paar Tagen nochmals daran erinnern, dass du die Übung machen wolltest: [Ja, erinnere mich an diese Übung in ein paar Tagen](mailto:jan@lernmoment?subject=[LernMail%209-21]%20Übungsmoment%20akzeptiert). (Kannst du einfach so abschicken und die Magie passiert. Wenn mehr Lesern die Idee gefällt, wird das natürlich automatisiert ;).

#### Lösung
Wenn du etwas **Unterstützung zur Beantwortung brauchst**, dann hilft dir vielleicht [dieser Artikel](https://www.lernmoment.de/csharp-programmieren/mit-csharp-6-noch-mueheloser-werte-in-strings-einfuegen/).

**Deine Lösung** kannst du [hier](https://github.com/LernMoment/community-fragen/issues/new/choose) für die Community veröffentlichen. Natürlich kannst du mir deine Antwort auch direkt per Mail schicken, wenn dir das lieber ist oder du noch keinen GitHub-Account hast.

**Meine Lösung** zu dieser Übung findest du [hier](https://github.com/LernMoment/community-fragen/issues/8).

**Andere Lösungen** zu dieser Übung gibt es auch. Einen Überblick bekommst du [hier](https://github.com/LernMoment/community-fragen/issues?q=is%3Aissue+SYN-2+in%3Atitle).

Nachdem das nun wieder eine seeeehhhhrr lange LernMail geworden ist, bin ich gespannt was du dazu sagst. Wie immer freuen wir uns über jede [Rückmeldung](mailto:jan@lernmoment.de?subject=Rückmeldung%20LernMail%209-21)

Mit "geübten" Grüßen aus Bielefeld

Jan von [LernMoment.de](https://www.lernmoment.de)


<div class="subscribe-notice">
  <h5>Dir gefällt diese LernMail? Dann melde dich auch für die nächste an ;-)</h5>
	{% include lernmoment-subscribe.html %}
</div>