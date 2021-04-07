---
layout: page
title: "LernMail 7/21 - Master heißt jetzt Main! Sonst ändert sich nix."
excerpt: ""
search_omit: true
image:
  feature: banner/lernmoment-csharp.jpg
modified:
date: 2021-04-07T09:30:00+01:00
---

Mmmmmoin und willkommen zu deiner LernMail!

Das heutige Thema hat Potential in eine politische (und sonstige ;) Diskussion auszuufern. Es geht darum, dass *GitHub* aber auch viele andere Plattformen und Projekte ihren `master` Branch in `main` Branch umbenennen. Etwas mehr zu der Motivation findest du [auf zdnet](https://www.zdnet.de/88382832/github-will-ab-naechsten-monat-master-durch-main-ersetzen/) und natürlich auf [GitHub selber](https://github.com/github/renaming).

Wie man den unendlichen Diskussionen entnehmen kann gibt es da sehr kontroverse Meinungen. Mir geht es heute nicht darum über die Motivation zu diskutieren, sondern dir zum einen zu erklären was ein *Branch* überhaupt ist und dann zu zeigen wie die Umbennung funktioniert.

### Was ist ein Branch?
Der englische Begriff *Branch* kann in diesem Kontext am besten mit *Zweig* übersetzt werden. Dabei geht es darum, dass du in der Versionsverwaltung einzelne Änderungen als *Commit* "speicherst". So entsteht eine sequentielle Abfolge von Änderungen an deinem Quellcode. Diese Abfolge kannst du dir auch als Linie vorstellen.

Ein *Branch* kommt dann ins Spiel, wenn du beispielsweise parallel zu deiner aktuellen Entwicklung etwas ausprobieren möchtest von dem du noch nicht weißt, ob es tatsächlich in deine Software soll. Dann kannst du nämlich einen neuen *Branch*, also einen Abzweig von der Linie in der du bisher entwickelt hast, erstellen in dem du diese Änderungen ausprobierst. Bist du mit dem Ausprobieren fertig und stellst fest, dass deine Änderungen nicht in die finale Software sollen, kannst du den *Branch* einfach löschen. Deine Änderungen in der Hauptlinie, also alles was du vor dem Abzweig gemacht, bleiben komplett unberührt von den Änderungen im *Branch*.

Das ganze kann (und wird) nun noch wesentlich weiter getrieben. Zum Einen kannst du unbegrenzt viele *Branches* erstellen. Zum Anderen kannst du jederzeit zwischen den *Branches* wechseln. Wenn du in dem Beispiel von eben also aktuell im "Versuchs"*-Branch* etwas änderst und dabei eine Idee bekommst die auf jedenfall in deine finale Version soll, wechselst du in den "Haupt"*-Zweig* und machst dort die entsprechenden Änderungen. *Git* oder die Versionsverwaltung deiner Wahl sorgt dann dafür, dass alles schön unabhängig von einander bleibt.

Dieses Vorgehen wird in Projekten mit mehreren Entwickler sehr viel verwendet. Beispielsweise ist es übliche Praxis bei vielen Open Source Projekten auf GitHub, dass für jede neue Funktionalität (egal wie groß oder klein), ein neuer *Branch* angelegt wird. In diesem Fall wird von einem "Feature"*-Branch* gesprochen. Ein solcher "Feature"*-Branch* wird vom "Haupt"-*Branch* abgezweigt. Damit setzt man auf einer ausgewählten Version auf. Nun kann ein Entwickler seine Änderungen für die Funktionalität in dem "Feature"-*Branch* umsetzen. Der Hauptzweig, der üblicherweise den aktuellen Auslieferungsstand oder die nächste zu veröffentliche Hauptversion beinhaltet, bleibt damit "sauber". Sobald die Funktionalität im "Feature"*-Branch* fertig ist, kann entschieden werden, ob alle Änderungen in den "Haupt"*-Branch* geschoben werden. Dieses "Schieben" wird dann als *Merge* bezeichnet.

Ein weiterer Anwendungsfall für *Branches* sind Updates und Patches. Es kommt immer wieder vor, dass für eine bereits veröffentlichte Version der Software noch eine Fehlerbehebung erstellt werden muss. Nun kann beispielsweise die passenden Version im "Haupt"*-Branch* ermittelt werden. Von dieser Version (also einem spezifischen Commit) wird nun abgezweigt und ein *Branch* für das Update bzw. Patch erstellt.

Wenn du dir mal ein paar Projekte auf GitHub ansiehst, wirst du schnell sehen, dass sie üblicherweise einige *Branches* beinhalten.

### Umbenennung von `master` zu `main`
Natürlich ist die Thematik der Umbenennung schon einigen Entwicklern und Autoren aufgefallen. Daher verweise ich einfach auf [diese Anleitung von Peter Müller](https://pmueller.de/github-branch-master-main/). Ich habe sie so ausprobiert und kann sagen es funktioniert alles.

Wenn du bisher Git nur in Visual Studio verwendet hast, dann solltest du für eine Umbenennung besser ins *Terminal* wechseln. Natürlich ist die Umbenennung auch in Visual Studio möglich, aber die 3 *git*-Befehle sind doch einfacher als einiges Klicken in Visual Studio. Alle Informationen die dir in Visual Studio bezüglich *Git* angezeigt werden, stammen alle von *Git*. D.h. sobald du die Umbenennung übers *Terminal* gemacht hast, wird dir Visual Studio die passenden Änderungen anzeigen.

Hast du Fragen zum Thema *Branch*? Dann [antworte mir doch](mailto:jan@lernmoment.de) einfach auf diese LernMail.

Ich zweige jetzt noch einen Gruß an dich ab und freue mich auf die nächste LernMail ;-)

Jan von [LernMoment.de](https://www.lernmoment.de)
