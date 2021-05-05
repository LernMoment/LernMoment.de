---
layout: page
title: "LernMail 11/21 - Vorlagen für Desktop-Anwendungen"
excerpt: ""
search_omit: true
image:
  feature: banner/lernmoment-csharp.jpg
modified:
date: 2021-05-05T09:30:00+01:00
---

Mmmmmoin und willkommen zu deiner LernMail!

Vor wenigen Wochen bin ich über ein tolles OpenSource-Projekt von Microsoft gestolpert. Es heißt *Windows Template Studio (WinTS)* und generiert einem ein Projektgerüst für eine Desktop-Anwendung. Hier ein Ausschnitt der Projektbeschreibung:

> Windows Template Studio (WinTS) is a Visual Studio 2019 Extension that accelerates the creation of new Universal Windows Platform (UWP) and Windows Presentation Foundation (WPF .NET Core 3.1) apps using a wizard-based experience. The resulting project is well-formed, readable code that incorporates great development features while implementing proven patterns and best practices. - [WinTS auf GitHub](https://github.com/microsoft/WindowsTemplateStudio)

Da ich *WinTS* kürzlich in einem Kundenprojekt eingesetzt habe möchte ich hier kurz von meinen Erfahrungen berichten und dich ermutigen es mal auszuprobieren. Allerdings muss ich hier auch sagen, dass du dich schon etwas mit der Erstellung von Desktop-Anwendungen auskennen solltest. Ansonsten wird dich der generierte Code wahrscheinlich etwas überfordern.

### Windows Template Studio - Eine kurze Vorstellung
Die erste Frage die sich mir stellte ist

> Warum sollte ich das WinTS überhaupt benutzen?

Wenn du in Visual Studio eine neue Desktopanwendung erstellst, dann bekommst du zwar ein Projekt mit einem ersten (leeren) Fenster, aber das ist es auch schon. Somit musst du die Funktionen, die du häufig in einer Anwendung benötigst, zu jeder Anwendung neu hinzufügen. Hier fallen mir Dinge wie Navigation zwischen verschiedenen Views, eine Seite mit den Einstellungen der Anwendung und auch Authentifizierung und Autorisierung ein.

Genau an dem Punkt setzt WinTS an. Es erlaubt über einen erweiterten Projekterzeugungs-Wizard die Auswahl von wichtigen Funktionen, Diensten, ... So wird dir dein Projekt mit den Aspekten erstellt die du benötigst.

Die Kern-Funktionalitäten um die sich WinTS kümmert
 - Navigation zwischen verschiedenen Views 
   - Ribbon
   - Menü
   - Hamburger-Menü
 - vordefinierte Seiten
   - Einstellungen (Settings)
   - ListDetails - in dem eine Liste von Objekten angezeigt wird mit einem *DetailView* daneben für ein einzelnes Objekt, welches in der Liste ausgewählt wurde
   - DataGrid - mit dem eine Liste von Objekten in einer Tabelle angezeigt werden kann
   - und weitere
 - zusätzliche Funktionen und Dienste
   - "Persist And Restore" - zum vereinfachten lesen und schreiben von benutzerspezifischen Daten im Ordner "User Local AppData"
   - Theming - verpasst der Anwendung ein "light" und ein "dark" Theme (ohne weiteren Aufwand kann dieses in der "Einstellungsseite" umgeschaltet werden)
   - Identitäten - Integriert Authentifizierung und Autorisierung (inkl. Dialogen)
 - verschiedene MVVM-Frameworks
   - Einfache Version über *Code-behind*
   - MVVM Toolkit (von Microsoft als Bestandteil des [Community Toolkit](https://github.com/windows-toolkit/WindowsCommunityToolkit) veröffentlicht)
   - MVVMLight

WinTS bietet also schon wirklich viele Möglichkeiten an.

#### Wie ist das Resultat?
Aus meiner Erfahrung ist es so, dass erzeugter Code immer die ein oder andere Schwachstelle hat, weil er zwar angepasst ist, aber halt nicht alle Details berücksichtig werden können. So ist es auch beim WinTS.

[Hier](https://github.com/LernMoment/UebungsMomentReminder) findest du ein Beispielprojekt welches ich mit WinTS erzeugt habe. Es handelt sich um eine WPF-Anwendung  Dort werden ich nach und nach eine kleine Anwendung entwickeln, die es mir erlaubt Interessenten automatisch an den Übungsmoment zu erinnern. Hast du eigentlich schon einen der Übungsmomente gemacht 🧐?

Was mir erstmal sehr gut gefällt ist die Trennung in ein WPF-Projekt und ein Projekt in dem ich die eigentliche Geschäftslogik umsetzen kann. Das ist etwas was ich sowohl in meinen Kursen wie auch den Mentorings immer wieder predige. Damit schaffst du es, dass die Kernlogik unabhängig von der Oberflächen-Technologie ist. So kannst du das was deine Anwendung wirklich ausmacht auch mit einer anderen Oberfläche (z.B. Web, WinUI, Xamarin, ...) zur Verfügung stellen.

Einen wesentlichen Nachteil hat der erzeugte Quellcode allerdings insbesondere für Einsteiger. Die erzeugte Projektstruktur ist schon relativ komplex. Wenn dir also Themen wie *Dependency *Interfaces*, Injection* und *MVVM* noch nicht viel sagen, dann wird es schwierig für dich. Hier ist es aus meiner Sicht ratsam, dass du erstmal 2-3 Anwendungen "von Hand" entwickelst um zu verstehen was das alles ist. 

Die Komplexität ist allerdings kein wirkliches Problem von WinTS, sondern einfach der Komplexität geschuldet, wenn du eine gut strukturierte Desktopanwendung haben möchtest.

Eine Entscheidung die das WinTS-Team momentan getroffen hat ist, dass *.NET Core 3.1* aber kein *.NET 5* direkt unterstützt wird. Diese Entscheidung mag im ersten Moment etwas fragwürdig sein, weil momentan viele Projekte auf *.NET 5* umstellen. Allerdings argumentiert das Team (wohl zurecht), dass der manuelle Umstieg eines für *.NET Core 3.1* generierten Projektes nicht kompliziert ist. Während die Unterstützung und Wartung einer weiteren Version schon einiges an Aufwand bedeutet.

#### Wie wird WinTS installiert?
Wie bereits erklärt ist der Hauptbestandteil ein Wizard der bei der Projekterstellung gestartet wird. Darin kannst du die oben aufgelisteten Funktionen auswählen.

Die Installation von WinTS erfolgt als [Erweiterung für Visual Studio 2019 über den Marketplace](https://marketplace.visualstudio.com/items?itemName=WASTeamAccount.WindowsTemplateStudio). Sobald du diese Erweiterung installiert hast und VS neugestartet hast, sind neue Projektvorlagen in VS verfügbar. Du findest sie am einfachsten, wenn du bei der Auswahl einer Projektvorlage in Visual Studio den *Projekttyp-Filter* auf *Windows Template Studio* stellst.

#### Das Beste zum Schluss
Was mich wirklich begeistert ist die bereits fortgeschrittene Unterstützung für *WinUI 3*. Das Projekt in dem ich WinTS zu erst ausprobiert habe ist nämlich ein *WinUI 3* Projekt mit Fluent Design.

Momentan ist die Unterstützung von *WinUI 3* nur über den *nightly build* verfügbar, aber funktioniert mit ein paar kleinen Anpassungen wirklich super. 

### Übungsmoment #3 - Erstelle ein Gerüst für eine WPF-Anwendung mit WinTS
Genug Theorie! Am besten lernst du, wenn du es selber ausprobierst. Somit ist diese Woche deine Aufgabe dir ein Projektgerüst für eine WPF-Anwendung von WinTS generieren zu lassen. Selbst wenn dir die meisten Themen darin nichts sagen und dich die Komplexität etwas erschreckt, ist es trotzdem gut.

Konkret kannst du mit diesem Übungsmoment das Installieren und Verwenden von Erweiterungen für Visual Studio üben. Darüberhinaus kannst du dir die erzeugte Projektvorlage als Beispiel nehmen, wenn du deine eigenen Anwendungen (ohne WinTS) entwickelst. Wenn du für dich gewisse Themen (z.B. MVVM) gelernt hast bzw. dabei bist, kannst du einfach mal schauen wie es in einer WinTS-Anwendung umgesetzt wird.

#### Erinnerung
**Akzeptierst du diese Übung?** Klicke auf folgenden Link damit wir dich in ein paar Tagen nochmals daran erinnern, dass du die Übung machen wolltest: [Ja, erinnere mich an diese Übung in ein paar Tagen](mailto:jan@lernmoment?subject=[LernMail%2011-21]%20Übungsmoment%20akzeptiert). (Kannst du einfach so abschicken und die Magie passiert. Wenn mehr Lesern die Idee gefällt, wird das natürlich automatisiert ;).

#### Lösung
Wie bereits oben erwähnt habe ich bereits ein Projekt erstellt, welches du [hier](https://github.com/LernMoment/UebungsMomentReminder) anschauen kannst. Sofern du möchtest kannst du mich auch bei der Entwicklung der Anwendung unterstützen. Wenn du Interesse hast, dann schreib mir eine Mail oder eröffne ein Issue an dem GitHub-Projekt. Bei letzterem vergiss bitte nicht, dass du mich im Issue-Text mit @suchja erwähnst. Ansonsten geht das bestimmt in der Flut von Issues die bei mir ankommt unter.

**Deine Lösung** kannst du [uns gerne schicken](mailto:jan@lernmoment?subject=[LernMail%2011-21]%20Übungsmoment%20Lösung). Sofern möglich werde ich dir dazu ein kleines Feedback schicken.

Wie immer freuen wir uns über jede [Rückmeldung](mailto:jan@lernmoment.de?subject=Rückmeldung%20LernMail%210-21)

Mit den aus einer Vorlage generierten Grüßen aus Bielefeld

Jan von [LernMoment.de](https://www.lernmoment.de)