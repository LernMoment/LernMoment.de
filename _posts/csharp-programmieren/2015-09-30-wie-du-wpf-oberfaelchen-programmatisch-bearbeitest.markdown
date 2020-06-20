---
layout: post
title: Wie du WPF Oberflächen programmatisch bearbeitest und testest
date: 2015-09-30T06:00:00+02:00
excerpt: InspirationsMoment - UI Automation
modified:
share: false
categories: csharp-programmieren
lernmoment: C#
lm-newsletter-group-id: 1
show-lm-newsletter-subscribe-box: true
tags: [Inspiration, WPF]
image:
  feature: banner/lernmoment-wpf.jpg
---


Du weißt nicht was ein InspirationsMoment ist? Mit jedem InspirationsMoment zeige ich dir eine kleine Klasse, Methode oder Idee die dir helfen kann deinen C# Code zu verbessern. Dazu gibt es Links zu weiteren Details damit du selber recherchieren kannst wie du es für dich am besten umsetzt.

### Was ist UI Automation?

*UI Automation* ist Bestandteil von .NET und hat verschiedene Aufgaben. Eine dieser Aufgaben ist die Unterstützung von barrierefreien Oberflächen. Außerdem ist es auch vorgesehen für das Testen von WPF-Oberflächen.

Möchtest du beispielsweise einen *Button* aus deinem Quelltext heraus betätigen, dann kannst du das mit folgenden Anweisungen erreichen:

```cs
ButtonAutomationPeer peer = new ButtonAutomationPeer( someButton );

IInvokeProvider invokeProv = peer.GetPattern( PatternInterface.Invoke ) as IInvokeProvider;

invokeProv.Invoke();
```

Das Thema ist enorm umfangreich. Daher wird es in Zukunft sicherlich immer mal wieder einen LernMoment dazu geben.

### Interessante Links 

-	Eine umfangreiche Einführung in das Thema findet du bei [MSDN](https://msdn.microsoft.com/de-de/library/ms747327(v=vs.110).aspx).

Viel Spaß beim programmatischen Betätigen deiner *WPF-Controls*

Jan


PS: Hast du Fragen zu diesem InspirationsMoment, oder anderen Themen auf LernMoment.de? Dann schicke mir eine [E-Mail](mailto:jan@lernmoment.de)
