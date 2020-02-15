---
layout: page
title: "LernMails"
excerpt: "Die LernMails"
search_omit: true
image:
  feature: 
modified:
lm-newsletter-group-id: 1
date: 2020-02-12T09:30:00+01:00
---

Mmmmmoin und willkommen zur LernMail #1!

Und? Ist Visual Studio DAS Schweizertaschenmesser für C# Entwickler? Nach meiner Meinung definitiv! Warum ich davon überzeugt bin und wieso ich vorschlage die Kommandozeile zu nutzen um Visual Studio zu verstehen erkläre ich dir im "VIP-Video 11/20". Solch ein Video bekommst du exklusiv als Abonnent der LernMail mit jeder Ausgabe.

// Hier Video einfügen

**Eine Bitte:** *Mein Ziel ist es dich auf deinem Weg vom Einsteiger zum C# Entwickler optimal zu begleiten. Daher investiere ich gerade viel Zeit um dir mit der LernMail einen möglichst großen Nutzen anzubieten. Über deine Rückmeldung per Antwort auf diese Mail würde ich mich sehr freuen. Was gefällt dir? Was kann ich ruhig weglassen? ...* DANKE 🙏!

## Visual Studio und dein WEG zum C# Entwickler
Bevor wir in die Details einsteigen, möchte ich, dass du eine Bestandsaufnahme machst was du bereits über Visual Studio weißt und wo du noch Lernbedarf hast. Dazu habe ich einige Fragen zu den verschiedenen Funktionalität von Visual Studio vorbereitet:

- Welche Fenster in Visual Studio kennst du? Wofür werden sie verwendet? Was sind die (für dich) wichtigsten Funktionalitäten in jedem Fenster?
- Was ist der Debugger? Wie kannst du ihn starten? Wo findest du die Aufrufhierarchie (Callstack) und was ist das?
- Was ist die Quellcodeverwaltung? Wie kannst du dein Projekt dort hinzufügen? Wie kannst du Änderungen "commiten" und was bedeutet das?
- Wo bekommst du einen Überblick über die Dateien in deinem Projekt? Was ist eine Projektmappe und wo liegt der Unterschied zum Projekt? Woran erkennst du das Startprojekt und was ist das?
- Wofür gibt es den "Konfigurations-Manager"? Wann verwendest du "Debug" und wann "Release"? Was bedeutet "Any CPU"?
- Wie kannst du externe Bibliotheken einbinden? Wo siehst du welche ("interne" und externe) Bibliotheken dein Projekt verwendet?
- Was sind die 5 hilfreichsten Tastaturkürzel?
- Was ist ein Codeausschnitt (Code-Snippet)? Welche verwendest du bereits?
- Was sind Visual Studio Extensions? Welche solltest du auf jeden Fall verwenden?

Anhand dieser Fragen hast du hoffentlich erste positivie Rückmeldung bekommen, dass du schon einiges über Visual Studio weißt. Zu allen Fragen gebe ich dir in dieser LernMail Antworten oder verweise dich auf bereits bestehende Aritkel / Videos in denen die Antworten gut erklärt sind.

Wichtig ist dabei, dass du nicht glaubst alles auf einmal lernen zu müssen. Aus meiner Sicht stehen hinter diesen Fragen die Funktionalitäten und Konzepte von Visual Studio die du als C# Entwickler kennen solltest bevor du deinen ersten Job machst. Du kannst also mithilfe dieser Fragen immer wieder deinen Wissensstand überprüfen und nach und nach alles über Visual Studio lernen was nötig ist. Außerdem hast du ja einen Monat Zeit bis die nächste LernMail kommt 😉.

**NEU**: Apropos Fragen und Rückmeldung! Basierend auf Fragen aus der LernMoment Community habe ich das [**Community Fragen**](https://github.com/lernmoment/community-fragen/) Projekt erstellt. Dieses ist ein GitHub Projekt welches gute Fragen (und Antworten) enthält mit denen du C# und Visual Studio lernen kannst inkl. Rückmeldung. Wie das funktioniert, erfährst du [hier](https://github.com/lernmoment/community-fragen/).

Nun aber los ;-)

## Grundlagen, Konzepte & Tricks zu dem WERKZEUG eines C# Entwicklers
Die folgenden Abschnitte sind so aufgebaut, dass sie immer "schwerer" werden. Wenn du bei den Fragen schon einiges beantworten konntest, dann sind dir die ersten Abschnitte sicherlich vertraut und du kannst dich zu den nächsten begeben.

**Tipp:** *Microsoft stellt als Teil der Dokumentation eine Übersicht über die Neuerungen in den jeweiligen Visual Studio Versionen bereit. Die Neuerungen in VisualStudio 2019 sind* [hier](https://docs.microsoft.com/de-de/visualstudio/ide/whats-new-visual-studio-2019?view=vs-2019) *beschrieben.*

### Fenster / Bereiche in Visual Studio die du kennen musst
> Welche Fenster in Visual Studio kennst du? Wofür werden sie verwendet? Was sind die (für dich) wichtigsten Funktionalitäten in jedem Fenster?

Eine "Tour durch Visual Studio" ist Bestandteil meines [Visual Studio 2019 Tutorials](https://youtu.be/xhD1HCVj5V0?t=1337). Mit [diesem Link](https://youtu.be/xhD1HCVj5V0?t=1337) kommst du direkt an die passenden Stelle des doch recht langen Videos.

Hier ein Überblick über die Fenster und deren Funktionen die ich am wichtigsten finde:
  - **Editor** - Offensichtlich DAS wichtigste Fenster überhaupt. Hier gibst du deinen Quellcode ein. Dabei unterstützen dich Funktionen wie das **Refactoring** (vom einfach Umbenennen von Methoden bis hin zum automatischen Erstellen von Methoden aus markiertem Quellcode - *mehr Details dazu weiter unten*), die **vertikale Scrolleiste (Bildlaufleiste)** (zeigt dir Änderungen, Fehler, Breakpoints und sogar eine "Lupe" zur schnellen Navigation in der Datei) und **CodeLens / Tastaturkürzel zur Navigation** (*siehe weiter unten*). Einen Überblick über diese und weitere Funktionen vom Editor findest du in [diesem Artikel von Microsoft](https://docs.microsoft.com/de-de/visualstudio/ide/writing-code-in-the-code-and-text-editor?view=vs-2019).
  - **Eigenschaftenfenster** - Dieses ist insbesondere dann relevant, wenn du eine Oberfläche z.B. mit WPF oder WinForms erstellst. Dann hilft es dir einen ersten **Überblick zu Eigenschaften und Events** zu bekommen (siehe dazu mein aktuelles [Einstieg in WPF Tutorial](https://www.youtube.com/playlist?list=PLP2TrPpx5VNk2g07AKxyIGdsUJNA95CDt)). Aber auch bei anderen Projekten nutze ich gerne die Möglichkeit mir den **Pfad einer Datei** anzusehen oder zu bestimmen ob eine **Datei ins Ausgabeverzeichnis kopiert** werden soll (siehe dazu das Video [Text-/XML-Datei in VisualStudio einbinden](https://youtu.be/874NuVyFg7I)).
  - **Projektmappenexplorer** - Dieses Fenster nutze ich neben dem Editor am meisten. Mir gibt es einen guten **Überblick über die Projektstruktur** (ein wichtiger Bestandteil der Softwarearchitektur), hier ist für mich der Einsprungpunkt zur Verwaltung von externen Bibliotheken via NuGet (siehe [dieser Artikel (inkl. Video)](https://www.lernmoment.de/alle/warum-nuget/) für Details) und ich lasse mir von hier häufig den Änderungsverlauf einer Datei anzeigen.
  - **Fehlerliste** - Die Fehlerliste ist eines der Hauptausgabefenster des Compilers (hier ein wirklich [super Artikel](https://www.imenja.io/die-microsoft-net-compiler-platform-roslyn-teil-1-grundlagen/) der dir einige Details zum Compiler erklärt). Ich nutze die Fehlerliste wenn ich mit einer Fehlermeldung nichts anfangen kann. Es gibt zu jedem Fehler den Link **Hilfe anzeigen**. Damit wird ein Browser geöffnet und die Suche gestartet direkt mit der Fehlermeldung. Weiterhin gibt es die Möglichkeit einen **Doppelklick auf einen Fehler** zu machen und so direkt an die passenden Stelle im Editor zukommen. Auch die Anzeige der Warnungen ist für mich immer relevant, weil ich versuche möglichst keine **Warnungen vom Compiler** zu haben. Denn obwohl die Anwendung trotzdem ausgeführt werden kann, ist jede Warnung eine potentielle Gefahrenquelle.
  - **Ausgabefenster** - Das Fenster in dem du sehen kannst wie die verschiedenen Tools (z.B. Compiler) aufgerufen werden. Ich benutze dieses Fenster aber auch teilweise zur Laufzeit. Denn hier findest du die **Ausgabe von `Debug.Writeline`**. Grundsätzlich empfehle ich die Verwendung eines "ordentlichen" Logs und natürlich des Debuggers, aber manchmal ist es wirklich hilfreich, wenn ich einfach mal kurz im Quellcode zur Laufzeit eine Ausgabe machen kann. Neben dieser Ausgabe findest du hier auch die **Ausgabe von `Git`**. Immer wenn du eine Aktion in der Quellcodeverwaltung über den Team-Explorer machst, wird "unter der Haube" `git` auf der Kommandozeile ausgeführt. Wenn es da mal zu Problemen kommt (was durchaus passiert), schaue ich immer zuerst in der Ausgabe ob ich weitere Hinweise finde.
  - **Teamexplorer** - Das Fenster für Aufgaben rund um die Quellcodeverwaltung. Ich benutze hier besonders intensiv die Möglichkeit **zwischen Branches zu wechseln** (dazu gibt es eine separate LernMail), die aktuellen **Änderungen zu commiten** und natürlich mein lokales **Verzeichnis mit GitHub zu synchronisieren**.

### Der Debugger
> Was ist der Debugger? Wie kannst du ihn starten? Wo findest du die Aufrufhierarchie (Callstack) und was ist das?

Eine der wichtigsten Funktionalitäten in Visual Studio ist sicherlich der Debugger. Was Debugging überhaupt ist, was die 2 wichtigsten Arten von Fehlern sind und wie die *Breakpoints* (oder auf Deutsch: *Haltepunkte*) verwendest hat Daniel in [diesem Artikel](https://www.lernmoment.de/alle/was-bedeutet-debuggen/) erklärt. Nochmals vielen Dank dafür!

Im Kontext vom Debugger gibt es auch das für mich wichtigste Tastaturkürzel in Visual Studio. Na, weißt du was es sein könnte 😁? Genau! Es ist `F5`. Mit dieser Taste startest du deine Anwendung. D.h. sämtliche Änderungen werden gespeichert, der Quellcode wird vom Compiler übersetzt und schließlich, wenn es keine Fehler gab, wird der Debugger gestartet.

Die ersten Schritte mit dem Debugger erkläre ich dir ebenfalls im [Visual Studio 2019 Tutorial](https://youtu.be/xhD1HCVj5V0?t=3486) (wieder ein Link zu der passenden Stelle).

Insbesondere wenn deine Anwendung größer wird und viele Dateien und viele Zeilen Quellcode umfasst, dann ist der Callstack bzw. das Fenster *Aufrufhierarchie* wirklich wichtig. Bei der Ausführung wird dein Quellcode ja "der Reihe nach" abgearbeitet. Dabei wird von einer Methode in die Nächste gesprungen und du kannst leicht den Überblick verlieren aus welchem Kontext eine Methode aufgerufen wurde und wie ein Fehler entsteht. Dann ist es wirklich hilfreich einen *Breakpoint* zusetzen und in den *Callstack* zu schauen. Was überhaupt passiert wenn eine Methode aufgerufen wird das erkläre ich dir in [diesem Artikel (inkl. Video)](https://www.lernmoment.de/csharp-tutorial-deutsch/methodenaufruf-und-stack/).

### Die Quellcodeverwaltung
> Was ist die Quellcodeverwaltung? Wie kannst du dein Projekt dort hinzufügen? Wie kannst du Änderungen "commiten" und was bedeutet das?

Wie du hoffentlich schon mitbekommen hast ist Quellcodeverwaltung was ich jedem Einsteiger von Anfang an empfehlen kann. Insbesondere da *Visual Studio* die Bedienung wirklich einfach macht. Natürlich solltest du, wenn du dich intensiver mit *git* und Quellcodeverwaltung im allgemeinen beschäftigst, auch ***git* auf der Kommandozeile** anschauen. Häufig ist es erst dann, dass du einige der Konzepte wirklich verstehst. Bis dahin empfehle ich dir aber trotzdem *git* bereits zuverwenden. So eignest du dir gleich einen "vernünftigen" Arbeitsablauf an.

Die ersten und wichtigsten Schritte mit *Visual Studio 2019* und *git* erkläre ich dir in [diesem Artikel](https://www.lernmoment.de/alle/git-mit-visual-studio-2019/). [Thomas Claudius Huber auf YouTube](https://youtu.be/Yfz1EZ_YLhE) geht etwas mehr darauf ein **was eine Versionsverwaltung ist**, welche unterschiedlichen Typen es gibt und was *git* aus macht.

Insbesondere wenn du mit *GitHub* arbeitest, was ich dir nur empfehlen kann, dann solltest du die ***GitHub Extension*** (bzw. *GitHub Erweiterung* auf Deutsch) verwenden. Was Erweiterungen sind erkläre ich dir weiter unten. Gerade in Version 2019 von *Visual Studio* ist die Anbindung an *GitHub* nochmals wesentlich einfacher geworden. So kannst du beispielsweise direkt **aus *Visual Studio* ein neues *GitHub*-Verzeichnis anlegen** und dein *Visual Studio*-Projekt direkt in einem Rutsch hochladen. Falls dir der Unterschied zwischen *git* und *GitHub* nicht klar ist, dann hilft dir vielleicht mein Video [GitHub ist NICHT Git!](https://www.youtube.com/watch?v=V_IDzTNA_ns&list=PLP2TrPpx5VNlLOYo5pook-0_0Uy0YLdHW) etwas weiter.

### Die Projektverwaltung (Projektmappen Explorer)
> Wo bekommst du einen Überblick über die Dateien in deinem Projekt? Was ist eine Projektmappe und wo liegt der Unterschied zum Projekt? Woran erkennst du das Startprojekt und was ist das?

*Tipp: Gerade zum Einstieg reicht es, wenn du weißt, dass es Projekte und Projektmappen gibt. Wenn deine Kenntnisse dann etwas weiter sind, solltest du auch in der Lage sein eine Projektmappe mit mehreren Projekten zu verwenden.*

Ein Projekt in *Visual Studio* definiert u.a. wie die im Projekt enthaltenen Dateien kompiliert werden sollen und was für ein Resultat erstellt werden soll. In den Eigenschaften eines Projektes in *Visual Studio* kannst du nämlich definieren ob eine ***Konsolenanwendung, eine Desktopanwendung oder eine Klassenbibliothek*** erstellt werden soll. Dabei sind *Konsolen- und Desktopanwendungen* komplette Anwendungen (also ausführbare Dateien mit der Endung .exe) die sich in ihrer Oberfläche unterscheiden. 

Eine *Klassenbibliothek* ist jedoch "nur" ein Bestandteil einer Anwendung. D.h. du kannst eine ***Klassenbibliothek* alleine nicht ausführen**. Ähnlich wie Klassen und Namensräume in der C#-Syntax, ist eine Klassenbibliothek also ein Mittel zur Strukturierung deines Quellcodes. Eine *Klassenbibliothek* wird von *Visual Studio* in binär Code übersetzt und in eine ***DLL*** (also eine *Dynamic Link Library*) verpackt. Damit kannst du dann die Funktionalität einer *Klassenbibliothek* aus anderen Projekten in *Visual Studio* einbinden. Dabei braucht das einbindene Projekt nicht mehr den Quellcode der *Klassenbibliothek* sondern die *DLL* ist ausreichend. (Mehr zu Bibliotheken gibt es in einem späteren Abschnitt.)

Sobald deine Projekt etwas größer werden, ist es empfehlenswert, dass du eine komplette **Anwendung unterteilst in mehrere Projekte**. Dabei ist es dann häufig so, dass ein Projekt eine tatsächliche Anwendung ist (also als .exe erzeugt wird) und die restlichen Projekte Klassenbibliotheken sind. Das hat zum einen den Vorteil, dass die einzelnen Projekt etwas überschaubarer bleiben bezüglich der Anzahl an enthaltenen Dateien. Zum anderen hast du so die Möglichkeit, dass die einzelnen *Klassenbibliotheken* in mehr als nur einer Anwendung verwendet werden können.

Die ***Projektmappe*** (oder *Solution* auf Englisch) in *Visaul Studio* hält nun mehrere Projekte zusammen. Das es grundsätzlich möglich ist, dass in einer *Projektmappe* mehrere *Projekte* enthalten sind die in eine Anwendung resultieren, legt *Visual Studio* grundsätzlich ein ***Startprojekt*** fest (du kannst natürlich auch ein anderes Projekt als *Startprojekt* definieren). D.h. Startest du deine Anwendung (z.B. über `F5`) geht *Visual Studio* her, analysiert die Abhängigkeiten dieses *Startprojekts* und kompiliert alle *Projekte* in der *Projektmappe* die eine Abhängigkeit zum *Startprojekt* haben und erstellt dann die finale Anwendung.

Das soll nun erstmal reichen zu diesem Thema. Eine etwas deteiliertere Beschreibung dieses Themas findest du [bei Microsoft](https://docs.microsoft.com/de-de/visualstudio/ide/solutions-and-projects-in-visual-studio?view=vs-2019). Ich habe aber auch dazu geplant ein separates Video zu veröffentlichen.

### Konfigurationen (Debug und Release)
> Wofür gibt es den "Konfigurations-Manager"? Wann verwendest du "Debug" und wann "Release"? Was bedeutet "Any CPU"?

Wenn du dir die Oberfläche von *Visual Studio* (insbesondere rund um den `Starten` Button) schon etwas genauer angesehen hast, dann bist du vielleicht über die `Kombobox` mit dem Inhalt ***Debug*** gestolpert. Das ist eine von 2 Standardkonfigurationen für die Projektmappe. Neben *Debug* gibt es in der Kombobox noch die Möglichkeit ***Release*** und ***Konfigurations-Manager*** auszuwählen.

Über *Debug* und *Release* kannst du u.a. steuern wie gut der *Debugger* deine Anwendung ausführen kann. Mit *Debug* werden die für den *Debugger* notwendigen Informationen vom *Compiler* erzeugt und der erzeugte **Binärcode ist nicht optimiert**. Verwendest du jedoch *Release*, dann versucht der *Compiler* einiges an Optimierungen für deinen Code umzusetzen und damit ist an einigen Stellen das Debugging nicht mehr ohne weiteres möglich.

Etwas mehr Details zum Thema *Binärcode* und was der *Compiler* mit dem Quellcode macht habe ich [an dieser Stelle](https://youtu.be/xhD1HCVj5V0?t=1783) im [Visual Studio 2019 Tutorial](https://youtu.be/xhD1HCVj5V0?t=1783) erklärt.

Die von *Visual Studio* verwendeten *Compiler* sind bei der Optimierung von Code ziemlich gut. Daher empfehle ich auch, dass du deinen Quellcode so schreibst, dass er **aussagekräftig und gut lesbar** ist. Häufig bekomme ich zuhören, dass beispielsweise durch die intensive Verwendung von Methoden die Anwendung langsam wird. Das ist definitiv nicht der Fall. Wenn du die verwendete Konfiguration auf *Release* stellst, dann wird an vielen Stellen der Code aus einer Methode genommen und direkt in die aufrufende Methode kopiert (das wird als *Inlining* bezeichnet). Dabei entscheiden die Compiler anhand verschiedenster Parameter wo eine solche Optimierung Sinn macht und wo nicht.

Der letzte Eintrag ist dann ***Konfigurationsmanager***. Dieses ist ein separates Fenster in dem du für jedes *Projekt* einer *Projektmappe* festlegen kannst welche Konfiguration verwendet wird und auch für welche *Platform* das *Projekt* übersetzt werden soll. Neben den bereits vordefinierten Konfigurationen kannst du hier bei Bedarf auch eigene erstellen.

Bleibt noch die Frage was ist mit *Platform* gemeint und **wofür steht *Any CPU*?** Auch hier gibt es wie beim Thema *Optimierung* viele Details. Für den Start solltest du dir erstmal merken, dass *Any CPU* die "zuverlässigste" Variante ist. Mit *Any CPU* wird deine Anwendung so kompiliert, dass sie nach Möglichkeit als 64-Bit Prozess ausgeführt werden kann und wechselt zurück zu 32-Bit, wenn nur dieser Modus verfügbar ist (für weitere Optionen siehe [hier](https://docs.microsoft.com/de-de/dotnet/csharp/language-reference/compiler-options/platform-compiler-option)). Die gängigen Alternativen sind *x64* mit denen deine Anwendung nur als 64-Bit Prozess ausgeführt wird (und somit nicht als 32-Bit Prozess laufen kann) und *x86* womit deine Anwendung nur als 32-Bit Prozess ausgeführt wird.

In einigen Fällen musst du die Konfiguration explizit auf *x86* oder *x64* setzen. Das kann beispielweise dann der Fall sein, wenn du externe Bibliotheken einbindest die nur in einer bestimmten Version verfügbar sind. Womit wir auch schon beim nächsten Thema sind.

*Tipp für Fortgeschrittene: Möchtest du dich intensiver mit dem Thema Debug, Release und deren Bedeutung für das Debugging beschäftigen, dann kann ich dir [diesen Artikel empfehlen](https://benhall.io/c-debug-vs-release-builds-and-debugging-in-visual-studio-from-novice-to-expert-in-one-blog-article/). Er ist allerdings auf Englisch.*

### Bibliotheken und NuGet
> Wie kannst du externe Bibliotheken einbinden? Wo siehst du welche ("interne" und externe) Bibliotheken dein Projekt verwendet?

Bleiben wir noch einen Moment im *Projektmappenexplorer*. Je nach Projekttyp siehst du dort den Eintrag *Abhängigkeiten* oder *Verweise*. Darunter siehst du die aktuellen Abhängigkeiten deiner Anwendung von *.NET Bibliotheken* und *externen Bibliotheken*. Eine erste Idee was genau eine *Bibliothek* ist, bekommst du an [dieser Stelle im Visual Studio 2019 Tutorial](https://youtu.be/xhD1HCVj5V0?t=2150).

Neben den vielen *Bibliotheken* die das *.NET Framework* von sich schon mit bringt, gibt es noch ein riesiges Verzeichnis von *Bibliotheken* die Entwickler erstellt haben und überlicherweise ein spezifisches Problem lösen. ***NuGet*** ist dabei die Technologie von Microsoft mit der es wirklich einfach ist eine **Bibliothek mit der passenden Funktionalität** zu finden und diese in deine Anwendung zu integrieren. Im Video [Warum NuGet](https://youtu.be/WsvhwW2M7AY) erkläre ich dir genauer was *NuGet* ist und im Video [Bibliotheken von NuGet integrieren](https://youtu.be/bsuEqUelxvg) zeige ich dir ein praktisches Beispiel.

Gerade wenn du die ersten Schritte in C# erfolgreich gegangen bist, empfehle ich dir dringend dich mit *NuGet* zu beschäftigen. Sobald du etwas komplexere Anwendungen schreiben möchtest die beispielsweise auf eine **API im Internet zugreifen** oder beispielsweise sich mit einem **Datenbank-Sever verbinden** sollen, dann gibt es auf *NuGet* ganz häufig Bibliotheken die dir viel Arbeit abnehmen.

### Schneller Arbeiten mit Tastaturkürzeln
> Was sind die 5 hilfreichsten Tastaturkürzel?

Da *Visual Studio* DAS Werkzeug ist, welches du als C# Entwickler am meisten einsetzen wirst (hoffe ich ;), solltest du fit darin werden *Visual Studio* möglichst effizient zu bedienen. Dazu gehört, dass du wenigstens einige der vielen Tastaturkürzel kennst und auch aktiv einsetzt. Sie helfen dir, sobald du einigermaßen fit bist mit der C# Syntax, wirklich produktiv zu arbeiten. Hier sind einige der Tastaturkürzel die ich häufig einsetze:

- `F5` (Starten) - Alle Änderungen speichern, kompilieren und die Anwendung im Debugger starten
- `F12` (Gehe zu Definition) - Wenn der Cursor im Editor auf einem Element steht (z.B. einem Methodenaufruf) bringt dich `F12` direkt zur Definition dieses Elements (also im Beispiel zum Quellcode der entsprechenden Methode).
- `UMSCHALT`+`F12` (Alle Verweise suchen) - Wenn der Cursor im Editor auf einem Element steht (z.B. einer Methodendefinition) sucht *Visual Studio* alle Verweise und gibt sie dir in einem *...-Verweise* Fenster aus.
- `STRG`+`-` (Zurück) - Bist du mit `F12` an eine andere Stelle gesprungen, dann bringt dich diese Tastenkombination wieder an die vorherige Stelle zurück. Das geht übrigens nicht nur bei `F12` sondern ganz allgemein bei der Navigation im Editor.
- `STRG`+`.` ("Glühbirne ausführen") - Steht der Cursor im Editor auf einem Hinweis der eine "Glühbirne" anzeigt (z.B. Ein Fehler der rot unterstrichen ist), kannst du mit dieser Tastenkombination den Dialog der "Glühbirne" öffnen und dann mit den Pfeiltasten darin navigieren. Dieses benutze ich häufig um beispielsweise `using` Anweisung aufzunehmen.

*Hinweis: Einige der hier vorgestellten Funktionalitäten erkläre ich dir im Detail in [diesem Video](https://youtu.be/teb_83Vxou4).*

Microsoft bietet [hier](https://docs.microsoft.com/de-de/visualstudio/ide/default-keyboard-shortcuts-in-visual-studio?view=vs-2019) einen Überblick aller verfügbaren Tastaturkürzel. Leider wird dich als Einsteiger das selten wirklich weiter bringen. Daher solltest du in *Visual Studio* selber nach den Tastaturkürzeln ausschau halten (z.B. werde diese häufig in den Menüs / Kontext-Menüs angezeigt). Eine Suche mit dem Namen der Funktionalität und der Phrase "Tastaturkürzel in Visual Studio 2019" sollte dich auch weiterbringen. Natürlich kannst du auch gerne mir eine Frage dazustellen.

### Weniger tippen mit Codeausschnitten
> Was ist ein Codeausschnitt (Code-Snippet)? Welche verwendest du bereits?

Beim Thema Produktivität dürfen Codeausschnitte (bzw. Code-Snippets auf Englisch) nicht fehlen. *Visual Studio* hat für Elemente wie eine `foreach`-Schleife, `if`-Abfragen und vieles mehr bereits Codeausschnitte definiert. Wenn du diese verwendest, dann braquchst du nur 2-3 Buchstaben tippen, 2x die Tabulatortaste drücken und *Visual Studio* fügt automatisch einen Codeausschnitt ein. Bei der `if`-Abfrage bekommst du so z.B. die runden und geschweiften Klammern direkt eingefügt. Ein paar mehr Details dazu habe ich in [hier erklärt](https://youtu.be/teb_83Vxou4?t=295).

[Hier](https://docs.microsoft.com/de-de/visualstudio/ide/code-snippets?view=vs-2019) gibt es ein paar Hintergrundinformationen zu Code-Snippets von Microsoft und [hier](https://docs.microsoft.com/de-de/visualstudio/ide/visual-csharp-code-snippets?view=vs-2019) sind alle "Standardcodeausschnitte" aufgelistet und kurz erklärt.

Zusätzlich haben sich jedoch schon viele Entwickler Gedanken gemacht welche weiteren *Codeausschnitte* noch hilfreich wären. So findest du mit etwas Suchen einige wirklich **hilfreiche *Codeausschnitte* im Netz**. Es gibt da z.B. [diese Seite](https://www.benday.com/2019/06/20/code-snippets-for-visual-studio-visual-studio-code-and-visual-studio-for-mac/) oder auch [diese Seite](http://www.visualstudiocodesnippets.com).
**WICHTIG:** Wie mit allen Dingen die du aus dem Internet lädst solltest du schauen was du tatsächlich bekommst. Microsoft erklärt [hier](https://docs.microsoft.com/de-de/visualstudio/ide/best-practices-for-using-code-snippets?view=vs-2019#downloaded-code-snippets) worauf du bei *Codeausschnitten* aus dem Internet achten solltest.

Wenn dir das alles nicht reicht, oder du gute Ideen für ***Codeausschnitte*** hast, dann kannst du auch **selber welche erstellen**. Deine eigenen *Codeausschnitte* kannst du entweder als einzelne Dateien speichern oder du kannst sogar deine eigene *Visual Studio* Erweiterung mit mehreren *Codeausschnitten* erstellen. In [diesem Artikel](https://docs.microsoft.com/de-de/visualstudio/ide/walkthrough-creating-a-code-snippet?view=vs-2019) gibt es eine erste Einführung zu beiden Wegen. Ich werde dazu auch demnächst ein Video veröffentlichen. Solltest du also noch nicht den LernMoment-YouTube-Kanal abonniert haben, kannst du das [hier](https://www.youtube.com/channel/UC5jCUQ6IPHtQP5r4y9byCqA?sub_confirmation=1) machen ;-).

*Tipps für Fortgeschrittene: [Hier](https://docs.microsoft.com/de-de/visualstudio/ide/productivity-features?view=vs-2019) hat Microsoft einige weitere Produktivitätstipps für Visual Studio zusammengestellt. [Auf entwickler.de](https://entwickler.de/online/windowsdeveloper/visual-studio-text-editor-funktionen-254658.html) gibt es ebenfalls einen tollen Artikel mit teilweise etwas exotischeren Tipps.*

### Noch mehr Power für Visual Studio mit Extensions
> Was sind Visual Studio Extensions? Welche solltest du auf jeden Fall verwenden?

Als wäre die Funktionalität von *Visual Studio* noch nicht umfangreich genug, bekommst du noch jede Menge Erweiterungen im [Visual Studio Marketplace](https://marketplace.visualstudio.com). Microsoft selber stellt mit Erweiterungen wie der [GitHub Extension for Visual Studio](https://marketplace.visualstudio.com/items?itemName=GitHub.GitHubExtensionforVisualStudio) oder auch den [Productivity Power Tools](https://marketplace.visualstudio.com/items?itemName=VisualStudioPlatformTeam.ProductivityPowerPack2017) schon einige Erweiterungen bereit. Zusätzlich gibt es aber auch jede Menge Erweiterungen wie beispielsweise [SQLite/SQL Server Compact Toolbox](https://marketplace.visualstudio.com/items?itemName=ErikEJ.SQLServerCompactSQLiteToolbox) von anderen Entwicklern.

Über das Menü `Erweiterungen -> Erweiterungen verwalten` kannst du direkt in *Visual Studio* auf den Marketplace zugreifen und auch die **Erweiterungen installieren**. Damit gibt es dann auch Updates automatisch bzw. dir wird mitgeteilt, wenn für eine Erweiterung ein Update bereit steht.

*50 Tipps & Tricks zu Visual Studio. [EBook von Microsoft Deutschland.](https://www.microsoft.com/de-de/techwiese/aktionen/Visual-Studio-Tipps-und-Tricks-eBook-Vol-1.aspx) Danke an Daniel Meixner! - Das Buch ist schon älter, aber die meisten Tipps sollten immer noch so funktionieren. Tipp 46 ist nicht mehr gültig, weil es die Extension nicht mehr gibt.*


## Dein (Lern-) ERFOLG auf GitHub dokumentieren
Zum Abschluss möchte ich dir noch eine Idee mit an die Hand geben. Wie ich dir letzte Woche erklärt habe gibt es 3 große Themenbereiche bei LernMoment:

1. **Dein WEG** - Du findest heraus was du als Softwareentwickler machen willst und was du dafür lernen solltest.
2. **Dein WERKZEUG** - Du lernst das Rüstzeug und die Zusammenhänge der Softwareentwicklung in C# und sammelst Erfahrung wie diese in der Praxis angewendet werden.
3. **Dein ERFOLG** - Während deiner Lernzeit erarbeitest du ein „Portfolio“ welches du in der Bewerbungsphase nutzen kannst um dein Know-How zu zeigen und so deinen ersten Job als C# Entwickler bekommst.

Die ersten beiden Themenbereich hast du sicherlich in dieser LernMail erkannt. Wie aber kannst du nun potentiellen Arbeit-/Auftraggebern zeigen was du so alles über Visual Studio gelernt hast?

Eine gute Möglichkeit ist, dass du deine angepasst Visual Studio Umgebung beschreibst. Also z.B. 
- welche Extensions verwendest du und warum und wofür?
- welche Tastaturkürzel sind wichtig für dich?
- welche Codeausschnitte verwendest du?

So etwas kannst du beispielsweise gut in einem *GitHub*-Verzeichnis machen. Das könnte dann *Meine Entwicklungsumgebung* heißen und du beschreibst die relevanten Dinge dort im *README.md* ([Hier](https://youtu.be/RUGPwI5iGGc) eine Einführung wie du ein *README.md* erstellst). Da über dein *Microsoft-Konto* einige der *Visual Studio* Einstellungen sowieso synchronisiert werden (Details dazu [hier](https://docs.microsoft.com/de-de/visualstudio/ide/synchronized-settings-in-visual-studio?view=vs-2019)), solltest du dir überlegen was genau du dokumentierst.

[Hier](https://github.com/hdayakar/visual-studio-shortcuts) ein Beispiel für ein *GitHub*-Projekt welches Tastaturkürzel beschreibt. Natürlich macht es wenig Sinn einfach nur eine Kopie der Tastaturkürzel von Microsoft anzulegen. Es sollte schon klar sein, dass das die Tastaturkürzel sind die du auch aktiv verwenden kannst.

Wenn du dann mit deinem Wissen über *Visual Studio* etwas weiter bist, kannst du ein solches *GitHub*-Projekt auch gut um eigene *Codeausschnitte* ergänzen.

Nun ist aber auch gut! Ich hoffe die erste Ausgabe von LernMoments LernMail hat dir gefallen. Sie ist wesentlich umfangreicher geworden als ich gedacht habe und ich würde mich wirklich freuen von dir zuhören ob sie dir einen Nutzen gebracht hat.

Die nächste Ausgabe gibt es am 14.3.2020 und wird sich mit dem Thema **Entwicklung von Oberflächen mit WPF** beschäftigen.

Bis dahin wünsche ich dir viel Spaß beim Lernen und Üben mit Visual Studio

Jan von [LernMoment.de](https://www.lernmoment.de)
