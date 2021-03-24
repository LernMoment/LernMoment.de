---
layout: page
title: "LernMail 5/21 - Automatische Versionsnummern in .NET 5.0?"
excerpt: ""
search_omit: true
image:
  feature: banner/lernmoment-csharp.jpg
modified:
date: 2021-03-24T09:30:00+01:00
---

Mmmmmoin und willkommen zu deiner LernMail!

Es gibt gute Gründe warum es hilfreich ist eine Version deiner Anwendung identifizieren zu können. Nehmen wir folgendes Beispiel:

Du entwickelst einen Taschenrechner (🙄 ja, ich weiß 😉). Einen ersten Prototypen hast du soweit fertig und gibst ihm deinem Kumpel zum "Ausprobieren" (Testen beim Kunden wird ja heutzutage sehr viel gemacht). Selber stellst du fest, dass eine Division durch Null erfolgt und du behebst diesen Fehler. Dein Kumpel kommt einige Wochen später um die Ecke und beschwert sich, dass dein Taschenrechner einfach abstürzt. Hat dein Kumpel nun die Version ohne deine Fehlerbehebung oder mit und hat einen neuen Fehler gefunden?

Hätte dein Taschenrechner nun eine Versionsnummer, dann könntest du deinen Kumpel danach fragen und dann herausfinden ob darin die Fehlerbehebung enthalten ist oder eben nicht. Dazu solltest du wissen, dass du eine (von vielen verschiedenen Versionsnummern) an jeder *\*.exe* Datei im Datei-Explorer in Windows sehen kannst.

Damit scheint es also erstmal ratsam jedes Projekt so aufzusetzen, dass mit jeden kompilieren eine eindeutige Versionsnummer generiert wird und an deine Anwendung "angehängt" wird. Dieses war im *.NET Framework* in der Datei `AssemblyInfo.cs` lange Zeit möglich und von Microsoft auch so vorgesehen. Damit brauchst du nicht daran zu denken, dass du manuell eine Versionsnummer vergibst, bevor du eine Version an deinen Kumpel schickst.

Bereits seit einiger Zeit ist das allerdings nicht mehr (so einfach) möglich und wird auch nicht mehr empfohlen.

### Dein Build sollte deterministisch sein
Immer wieder bekomme ich Nachfragen, weil es Fehlermeldungen wie diese gibt:

> Fehler	CS8357	Die angegebene Versionszeichenfolge enthält Platzhalter, die mit Determinismus nicht kompatibel sind. Entfernen Sie die Platzhalter aus der Versionszeichenfolge, oder deaktivieren Sie Determinismus für diese Kompilierung.

*Deterministisch* bedeutet in diesem Zusammenhang, dass sich 2 *Builds* aus dem exakt gleichen Qullcode **nicht** unterschieden sollen. Als *Build* wird bezeichnet, wenn du den Compiler deinen Quellcode in binären Code übersetzen lässt. Das ist der Fall, wenn du beispielsweise *Projektmappe neu erstellen* im Menü *Erstellen* in VisualStudio aufrufst oder auch einfach nur deine Anwendung über den *Starten*-Button (oder *F5*) startest.

Warum soll ein *Build* aber nun deterministisch sein? Eine Überlegung ist sicherlich, dass es Sicherheit gibt, wenn man den Quellcode zu einem späteren Zeitpunkt nochmals übersetzt und hat dann das exakt gleiche Ergebnis. Es gibt aber noch einen wesentlich wichtigeren Aspekt und das ist Sicherheit. Willst du deine Anwendung verteilen und sicherstellen, dass sie auf dem Weg zum Kunden (oder Kumpel ;) nicht modifiziert wird, ist es hilfreich wenn dein Kunde überprüfen kann, dass es sich 1-zu-1 um den Build von dir handelt.

Der Determinismus wird noch viel wichtiger, wenn es sich um größere Projekte handelt. Dabei wird dann ein Build nicht nur lokal auf der Maschine eines (oder mehrerer) Entwicklers erstellt, sondern es gibt dediziert Server die den Quellcode nehmen und daraus ein Release erstellen. Auch hier muss wieder sichergestellt werden, dass das Ergebnis auf dem Server nicht von dem der Entwicklungsrechner abweicht, weil dann an irgend einer Stelle sich ein Fehler oder schlimmer noch Virus oder Hacker eingeschlichen hat.

Was hat das nun alles mit dem Fehler zutun? Ganz einfach. Hast du dein Projekt so konfiguriert, dass jeder Build eine andere Versionsnummer an deine Anwendung hängt, dann unterscheiden sich 2 Builds von dem selben Quellcodestand. Es wird also gegen die Determinismus-"Regel" verstoßen. Das will dir VisualStudio mit dem Fehler (und ich mit meiner langen Beschreibung ;) sagen.

Aus diesem Grund rät Microsoft mittlerweile von der automatischen Generierung einer Versionsnummer mit jeden Build ab. Damit dies auch umgesetzt wird, hat VisualStudio bereits vor einiger Zeit die `<Deterministic>` Eigenschaft bekommen. Diese ist seit einer Version von VisualStudio 2017 standardmäßig eingeschalten und führt zu dem oben genannten Fehler.

### Eine einfache Lösung?
Wie du der Beschreibung des Problems entnehmen kannst, ist es für kleine Entwicklungsprojekt nicht ganz so relevant. Bestimmt ist es für einen Einsteiger in die C#-Entwicklung auch nicht ganz so einfach zu verstehen. Daher gibt es die Möglichkeit das ganze in VisualStudio zu umgehen und jeden einzelnen Build automatisch mit einer (meistens) eindeutigen Versionsnummer versehen zu lassen.

Dazu musst du ein paar Änderungen durchführen. Als erstes musst du in deiner Projektdatei definieren, dass du **keinen** deterministischen Build haben willst und das du eine eigene `AssemblyInfo.cs` verwenden möchtest. Ebenfalls seit einiger Zeit gibt es diese Datei nicht mehr (automatisch) in VisualStudio. Viele der Eigenschaften aus der Datei `AssemblyInfo.cs` findest du mittlerweile in den Projekteigenschaften im Tab *Paket*, aber darüber lässt sich die automatische Versionierung nicht umsetzen.

Hier also die passenden Schritte:
1. Öffne deine Projektdatei im Bearbeitungsmodus (*Projektmappen-Explorer -> rechte Maustaste auf das Projekt -> Projektdatei bearbeiten*)
2. Füge in die `PropertyGroup` die beiden folgenden Eigenschaften ein:
    - `<Deterministic>false</Deterministic>`
    - `<GenerateAssemblyInfo>false</GenerateAssemblyInfo>`
3. Füge deinem Projekt die Datei `AssemblyInfo.cs` hinzu (*Projektmappen-Explorer -> rechte Maustaste auf das Projekt -> Hinzufügen -> Neues Element -> Assemblyinformationsdatei als Vorlage in der Mitte auswählen*)
4. In der `AssemblyInfo.cs` Datei kannst du den Eintrag `[assembly: AssemblyFileVersion("1.0.0.0")]` entfernen und den Eintrag `AssemblyVersion` wie folgt anpassen: `[assembly: AssemblyVersion("1.0.*")]`

### Eine bessere (einfache) Lösung!
Auch wenn du wie im letzten Abschnitt beschrieben die Versionierung ohne Determinismus umsetzen kannst, kann ich es **nicht** empfehlen. Es gibt, wie bereits beschrieben, Gründe warum der "alte Weg" nicht mehr empfohlen ist. Außerdem weichst du so vom Standardweg in VisualStudio ab. Gerade als Einsteiger kann dir das relativ schnell zum Verhängnis werden.

Sobald Microsoft wieder Änderungen an VisualStudio macht, wird es einen einfachen Migrationsweg für den "Standardweg" geben, aber "Extrawürste" wie vorher beschrieben haben dann häufig ein Problem.

Was also tun? Wenn du schon erfahrener bist, dann ist eine Möglichkeit, dass du dich mit einem *Continuous Integration (CI)*-System beschäftigst. Das ist üblicherweise ein separater Rechner oder Server in der Cloud der deinen Quellcode immer neu übersetzt, wenn (beispielsweise) ein neuer Commit in der Versionsverwaltung erkannt wird. Darin ist es (mehr oder weniger einfach) eine automatische Versionierung umzusetzen die der Determinismus-"Regel" gerecht wird.

Bist du gerade erst am Anfang, dann solltest du einen manuellen Prozess verwenden. Wie bereits gesagt, kannst du über die Projekteigenschaften im Tab *Paket* die Meta-Informationen für deine Anwendung anpassen. Dort gibt es auch die Eigenschaft `Paketversion`. Diese kannst du händisch verändern. Das führt dazu das die `AssemblyVersion` und `AssemblyFileVersion` automatisch mit angepasst werden. Außerdem werden diese Änderungen in der *\*.csproj* Datei gespeichert, so dass sie mit in die Versionsverwaltung gehen.

Möchtest du nun also eine Version erzeugen, die du weitergibst, dann erhöhst du (beispielsweise die letzte Stelle) der `Paketversion`. D.h. du musst immer daran denken, dass du die Version erhöhst. Allerdings ist dies auch nicht bei jedem Build nötig, sondern nur, wenn du eine Version erzeugst, die du weitergeben möchtest.

Konnte ich dir mit dieser LernMail helfen, oder hat es dich eher verwirrt? [Über eine kurze Rückmeldung](mailto:jan@lernmoment.de) würde ich mich wie immer wahnsinnig freuen.

Nun wünsche ich dir erstmal ein wunderschönes Wochenende!

Deterministische Grüße aus Bielefeld

Jan von [LernMoment.de](https://www.lernmoment.de)
