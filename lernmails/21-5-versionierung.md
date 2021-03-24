---
layout: page
title: "LernMail 5/21 - AssemblyInfo & Versionsnummern in .NET 5"
excerpt: ""
search_omit: true
image:
  feature: banner/lernmoment-csharp.jpg
modified:
date: 2021-03-24T09:30:00+01:00
---

Mmmmmoin und willkommen zu deiner LernMail!

Wenn du ein neues Projekt in VisualStudio startest, bekommst du erstmal an ganz vielen Stellen Standardwerte eingesetzt. Das macht Sinn, weil VisualStudio nicht wirklich weiß was deine Anwendung machen soll. So ist es auch mit den Meta-Informationen.

Mit Meta-Informationen meine ich beispielsweise den Namen deiner Anwendung (so wie du ihn im Datei-Explorer in den Eigenschaften siehst oder auch, in einer Übersicht, wenn deine Anwendung auf einem Rechner installiert wurde). Neben dem Anwendungsnamen gehören beispielsweise der Firmenname oder auch der Herausgebername mit zu den Meta-Informationen.

Im .NET Framework wurden diese Informationen in der Datei `AssemblyInfo.cs` gespeichert. Diese konntest du in VisualStudio direkt editieren. Seit .NET Core ist dies etwas anders. Wie du die Meta-Informationen jetzt änderst und es schaffst eindeutige Versionsnummer bei jedem Erstellen zu erzeugen, erkläre ich dir in dieser LernMail.

### Wo sind die Meta-Informationen in .NET 5 (und .NET Core)?
Seit .NET Core 2.0 (und somit auch in .NET 5) werden alle Meta-Informationen die du anpasst in der Projektdatei (also \*.csproj) gespeichert. Allerdings ist es so, dass du darin nicht die Standardwerte findest. Dies kannst du selber überprüfen in dem du ein neues .NET 5 Projekt (z.B. Konsolenanwendung) in Visual Studio erstellst. Dann gehst du im Projektmappen-Explorer ins Kontextmenü (rechte Maustaste) und wählst dort den Eintrag *Projektdatei bearbeiten*.

Bei mir sieht das ungefähr so aus:

```xml
<Project Sdk="Microsoft.NET.Sdk">

  <PropertyGroup>
    <OutputType>Exe</OutputType>
    <TargetFramework>net5.0</TargetFramework>
  </PropertyGroup>

</Project>
```

Daraus folgt, dass die Standardwerte nicht hier gespeichert werden. Tatsächlich werden sie beim Compiliern automatisch erzeugt und in eine generierte `AssemblyInfo.cs` (die wir allerdings nirgendwo zu Gesicht bekommen) geschrieben.

Möchtest du nun deine eigenen Meta-Informationen für deine Anwendung eintragen, dann könntest du das direkt in der Projektdatei machen. Dafür musst du allerdings wissen wie die einzelnen Eigenschaften in den Meta-Informationen heißen. Leider konnte ich bisher keine Seite finden wo die aufgelistet sind.

Natürlich kommt uns VisualStudio zur Hilfe. In den Projekteigenschaften (also Projektmappen-Explorer -> Kontextmenü am Projekt -> Eigenschaften) findest du den Tab *Paket*. Auch wenn es den Eindruck macht, dass es dort nur um *NuGet-Pakete* geht, sind dies die tatsächlichen Meta-Informationen für dein Projekt. Dies kannst du einfach überprüfen, wenn du hier beispielsweise bei *Autoren* oder auch *Produkt* etwas einträgst.

Kontrollierst du anschließend den Inhalt der Projektdatei, dann wirst du die geänderten Informationen darin finden. Gehst du nun noch den nächsten Schritt und kompilierst deine Anwendung. Dann kannst du im Datei-Explorer (also außerhalb von Visual Studio) in den Details der Eigenschaften der erzeugten *\*.exe* Datei die entsprechenden Informationen finden.

### Das Spiel mit den Versionsnummern
Wenn du dir die Eigenschaften auf dem Tab *Paket* genau angeschaut hast, dann siehst du mehrere Versionsnummern. Da das komplette Thema Versionsnummern 2-3 LernMails umfassen wird, möchte ich mir hier nur auf eine Versionsnummer beziehen.

Bevor wir uns die Details anschauen, solltest du dich jedoch fragen warum brauchst du überhaupt eine Versionsnummer. Aus meiner Sicht ist es wirklich sehr hilfreich, wenn du deine Anwendung klar identifizieren kannst. Im einfachsten Fall hast du nicht mal eine Installationsroutine und kannst einfach die *\*.exe* Datei auf einem anderen Rechner (oder bei einem Freund) ausführen.

Üblicherweise ist es so, dass du nun weiter entwickelst und irgendwann findest du (oder dein Freund) in dieser älteren Version einen Fehler. Dann stellt sich allerdings die Frage kann der überhaupt noch in der neuen Version enthalten sein?

Hast du keine eindeutige Versionsnummer verwendet bzw. hast du an den Versionsnummern überhaupt nichts verändert, dann siehst du an der *\*.exe* (wieder in den Eigenschaften im Datei-Explorer) zwar eine Versionsnummer, aber diese ist immer *1.0.0.0*. MIST :-)!

Nun hast du hoffentlich gesehen, dass bei den Meta-Informationen 
