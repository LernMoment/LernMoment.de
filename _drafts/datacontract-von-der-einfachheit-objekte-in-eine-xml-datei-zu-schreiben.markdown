---
layout: post
title: DataContract - Von der Einfachheit Objekte in eine XML-Datei zu schreiben.
excerpt: Und wie du sie genauso einfach wieder einlesen kannst.
modified:
categories: csharp-programmieren
lernmoment: C#
lm-newsletter-group-id: 2
tags: [Syntax, Serialisierung, XML]
image:
  feature: csharp-programmieren.jpg
date: 2015-10-156T06:00:00+02:00
---

Im LernMoment ["DataContract - Die Flatrate zum Serialisieren deiner Objekte"](/csharp-programmieren/datacontract-flatrate-zum-serialisieren-deiner-objekte/) hast du gesehen, wie du deine Klasse erstellen kannst, die über `DataContract` serialisiert werden kann. Obwohl die Klasse nun vorbereitet ist, hast du immer noch nicht deine Objekte in einer XML-Datei. Dafür verwendest du die Klassen `DataContractSerializer`, `FileStream` und `XmlDictionaryWriter`.

Das Vorgehen zum erstellen einer XML-Datei aus deinem Objekt ist absolut einfach. Die relevante Methode der Klasse `DataContractSerializer` ist `WriteObject`. Hier ein komplettes Beispiel:

```cs
var moment = new LernMoment();
DataContractSerializer serializer = new DataContractSerializer(typeof(LernMoment));

using (Stream stream = new FileStream(filename, FileMode.Create, FileAccess.Write))
{
    using (XmlDictionaryWriter writer = XmlDictionaryWriter.CreateTextWriter(stream, Encoding.UTF8))
    {
        writer.WriteStartDocument();
        serializer.WriteObject(writer, moment);
    }
}
```

Das Beispiel ist Teil des Quelltextes zu diesem und dem anderen LernMoment bezüglich *DataContract*. Wenn du das Beispiel ausführst, wirst du eine Datei mit folgendem Inhalt erhalten:

```xml
<LernMoment xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://schemas.datacontract.org/2004/07/"><Email-Adressse_x0020_des_x0020_Autors>jan@lernmoment.de</Email-Adressse_x0020_des_x0020_Autors><Name>Objekte mühelos serialisieren mit Datenverträgen. Das hat nichts mit Mobilfunk zutun!</Name><tags xmlns:d2p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays"><d2p1:string>Syntax</d2p1:string><d2p1:string>Files</d2p1:string><d2p1:string>Serialization</d2p1:string><d2p1:string>kein Delegate</d2p1:string></tags></LernMoment>
```

Dieses Beispiel zeigt wie cool `DataContract` ist um XML-Dateien zu erstellen und auch wie blöd es ist. Die miserable Formatierung liegt nicht am Blog, sondern an der Ausgabe von `DatContractSerializer` in Kombination mit `XmlDictionaryWriter`. Der `XmlDictionaryWriter` wird zum Schreiben empfohlen, weil er eine verbesserte Performance hat. Der Nachteil ist, dass du fast keinen Einfluss auf die Ausgabe hast. Er schreibt deine Objekte einfach in einem langen *String* in die Datei. 

Warum finde ich die Ausgabe denn nun cool? Hast du dir einmal angesehen, wie die Eigenschaft `tags` von der Klasse [LernMoment](https://github.com/LernMoment/csharp/blob/master/DataContract/Programm.cs) ausgegeben wird? Diese Eigenschaft ist vom Typ `List<string>`. Wenn du dir nun die Ausgabe anschaust, dann siehst du, dass alle Elemente der Auflistung ausgegeben wurden. D.h. du kannst eine komplette Objekthierarchie einfach auf diesem Weg in eine XML-Datei schreiben.

Ich habe eben geschrieben, dass der `XmlDictionaryWriter` eine verbesserte Performance hat. Das legt Nahe, dass es noch einen anderen Weg gibt um einen `DataContract` in eine XML-Datei zu überführen. Das ist auch der Fall. Es gibt den `XmlWriter`, der die Basisklasse von `XmlDictionaryWriter` ist. Mit dem `XmlWriter` kannst du auch Einfluss auf die Formatierung nehmen:

```cs
var serializer = new DataContractSerializer(typeof(LernMoment));
var settings = new XmlWriterSettings { Indent = true };

using (XmlWriter writer = XmlWriter.Create(filename, settings))
{
    serializer.WriteObject(writer, moment);
}
```

Mit der Klasse `XmlWriterSettings` kannst du verschiedene Formatierungseigenschaften beeinflussen. Wenn du wie im Beispiel `Indent` setzt, dass ist die Ausgabe wesentlich verständlicher:

```xml
<?xml version="1.0" encoding="utf-8"?>
<LernMoment xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://schemas.datacontract.org/2004/07/">
  <Email-Adressse_x0020_des_x0020_Autors>jan@lernmoment.de</Email-Adressse_x0020_des_x0020_Autors>
  <Name>Objekte mühelos serialisieren mit Datenverträgen. Das hat nichts mit Mobilfunk zutun!</Name>
  <tags xmlns:d2p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
    <d2p1:string>Syntax</d2p1:string>
    <d2p1:string>Files</d2p1:string>
    <d2p1:string>Serialization</d2p1:string>
    <d2p1:string>kein Delegate</d2p1:string>
  </tags>
</LernMoment>
```

Welchen positiven Einfluss die Verwendung von `XmlDictionaryWriter` auf die Performance hat ist nicht klar. Die Empfehlung den `XmlDictionaryWriter`zu verwenden kommt von Microsoft. Entsprechend kannst du davon ausgehen, dass es Fälle gibt, in denen sie zutrifft. Da beide Varianten einfach sind, empfehle ich dir einfach beides auszuprobieren.

Im Vergleich zu anderen XML-Technologien im .NET Umfeld, ist die Serialisierung / Deserialisierung von Objekten und Objekthierarchien mit `DataContract` und den gezeigten XML-Klassen erstaunlich unkompliziert. Die weiteren Optionen die .NET dir bietet und entsprechende Vergleiche bekommst du in kommenden LernMomenten.

Jetzt erstmal viel Spaß mit

Jan

### Merke

-	

### Lernquiz 

Verwende folgende Fragen, um das Gelernte von heute zu festigen:

-	

Am besten schaust du dir morgen und dann nochmal in ein paar Tagen die vorherigen Fragen an und beantwortest sie, ohne den Text vorher gelesen zu haben.

### Weitere Informationen

-	Den kompletten Quelltext zum heutigen Lernmoment findest du [hier](https://github.com/LernMoment/csharp/tree/master/tbd).

