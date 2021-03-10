---
layout: post
title: "Ein Projekt von GitHub klonen mit Visual Studio 2019 (neue Git UI)"
excerpt: "Auch mit der neuen Git-Oberfläche von Visual Studio 2019 bleibt das Klonen eines Projektes einfach."
categories: alle
lernmoment: Hintergrund
lm-newsletter-group-id: 1
show-lm-newsletter-subscribe-box: true
share: false
banner: einstieg-csharp
tags: [Visual Studio, GitHub, Versionsverwaltung]
image:
  feature: banner/lernmoment-git.jpg
modified: 
date: 2021-03-10T06:00:00+01:00
---

Seit November 2020, genauer gesagt seit Version 16.8 von Visual Studio, hat sich die Oberfläche zur Bedienung von Git grundlegende geändert. Daher sind viele Anleitungen die du im Internet findest (inkl. einiger hier auf LernMoment 🙃) nicht mehr aktuell.

In diesem Artikel zeige ich dir wie du ein auf GitHub bestehendes Projekt in Visual Studio auf deinen Rechner holst. Der Fachbegriff dafür ist du "klonst ein Projekt". Damit kannst du dir beispielsweise den Quellcode eines der vielen Projekte von [LernMoment auf GitHub](https://github.com/lernmoment) holen.

Bevor wir anfangen hier ein paar Dinge die du beachten solltest:
- Möchtest du nur den Quellcode holen, wie in diesem Aritkel beschrieben, benötigst du **keinen** GitHub-Account
- In Visual Studio gibt es die [GitHub Extension for Visual Studio](https://visualstudio.github.com/). Diese brauchst du auch **nicht**, aber es schadet natürlich nicht, wenn du sie hast 😉.
- Git und GitHub bieten viele Möglichkeiten zur Zusammenarbeit. Der hier vorgestellte Weg ist **nur** dafür gedacht, dass du alleine im Quellcode arbeitest. Auch kannst du Änderungen die du machst nicht einfach zurück nach GitHub schieben. (Siehe die Links am Ende dieses Artikels für andere Möglickeiten)

Nun aber los ...

## 1 - Die URL vom Projekt finden
In einigen Fällen hast bereits die URL zum Projekt auf GitHub. Eine solche URL könnte z.B. so aussehen: [https://github.com/LernMoment/ballspiel](https://github.com/LernMoment/ballspiel). Diese URL benötigen wir später in Visual Studio um das passende Projekt auf deinen Rechner zuholen.

Solltest du die URL noch nicht haben, aber, z.B. über eine Recherche oder einen anderen Artikel, das passende Projekt auf GitHub gefunden haben, dann findest du die URL, in dem du (1) auf den grünen *Code*-Button klickst. Dort stellst du sicher, dass (2) *Https* ausgewählt ist und (3) kopierst dir dann die URL über das Symbol hinter der URL.

![URL zum GitHub Projekt kopieren]({{ site.url }}/images/git-projekt-klonen/github-url-kopieren.png)

## 2 - Das Projekt klonen
Nun öffnest du Visual Studio und auf dem Bildschirm (mit der hilfreichen Überschrift "Visual Studio 2019") wählst du *"Repository klonen"* aus. In dem Feld *"Repositoryspeicherort"* fügst du die in Schritt #1 kopierte URL ein. Das Feld *"Pfad"* lasse ich immer so wie es ist, aber du kannst es natürlich deinen Anforderungen anpassen.

![Repository klonen]({{ site.url }}/images/git-projekt-klonen/vs-repository-klonen.png)

Danach öffnet sich bereits das Projekt in Visual Studio. Nun kannst du im *"Projektmappen-Explorer"* die zum Projekt gehörenden Dateien sehen und das Projekt natürlich auch kompilieren.


HIER FEHLT NOCH WAS!!!


Hoffentlich hat dir diese Anleitung ein wenig geholfen beim Umgang mit *GitHub* und *Visual Studio*. Über jegliche Rückmeldung zu diesem Artikel würde ich mich sehr freuen:

<a markdown="0" href="mailto:jan@lernmoment?subject=Frage%20zum%20Artikel:%20GitHub%20mit%20VisualStudio2019" class="notice-button">Fragen / Kommentare >></a>

Viel Erfolg beim Veröffentlichen deines *VisualStudio*-Projektes auf *GitHub*

Jan
