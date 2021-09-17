---
layout: page
title: "LernMail 20/21 - ÜbungsMomentReminder: Eine erste Mail (Spike)"
excerpt: "Wir schreiben unseren ersten Quellcode. Ein Prototyp um ein Postfach (IMAP) zu bedienen."
search_omit: true
image:
  feature: banner/lernmoment-csharp.jpg
lm-newsletter-group-id: 1
modified:
date: 2021-09-08T09:30:00+01:00
---

Mmmmmoin und willkommen zu deiner LernMail!

Heute geht es wieder weiter mit unserem *ÜbungsMomentReminder (ÜMR)*. Falls du diese Serie noch nicht kennst, kannst du in [der LernMail 18/21](/lernmails/21-18-erinnerungs-bot-einleitung/) nachlesen worum es geht. Alle weiteren (bereits verfügbaren) LernMails zu dieser Serie (und weitere) findest du ebenfalls im [LernMail-Archiv](/lernmails/)

#### Spike - Was war das gleich nochmal?
Wie im letzten ÜbungsMoment beschrieben, machen wir einen *Spike* um die Komplexität des Zugriffs auf ein Email-Postfach in C# besser zu verstehen. Nach [diesem Artikel im Ryte Wiki](https://de.ryte.com/wiki/Spike) sind die wesentlichen Merkmale eines *Spike*

- die zeitliche Begrenzung,
- dass es sich um eine experimentelle Lösung handelt,
- dass er am Schluss immer verworfen wird und 
- dass mit dem Ende eine Dokumentation des Spikes erfolg

Wir entwickeln also einen "Wegwerf"-Prototypen in einer möglichst kurzen Zeit. Ziel ist es, dass wir verstehen ob die anvisierte Lösung überhaupt machbar ist und ein erstes Verständnis der Komplexität bekommen.

#### Ein erster Prototyp
Wie im ÜbungsMoment #11 (diesen findest du in [der LernMail 19/21](/lernmails/21-19-uemr-story-map/)) beschrieben geht es darum, dass wir ein wenig Erfahrung sammeln mit dem Zugriff auf ein Email-Postfach direkt aus unserem Quellcode heraus. Ich hatte dich gebeten eine Klasse oder Bibliothek zu suchen, mit der es möglich ist Mails aus einem Postfach abzurufen und neue Mails zu versenden.

Wir haben einige Lösungsvorschläge erhalten und besonders möchte ich mich bei Rudi und Michael bedanken. Ihr beiden habt den ÜbungsMoment wirklich ernst genommen und habt schöne Prototypen erstellt. Michael hat sich sogar die Mühe gemacht und hat seinen Prototypen in ein GitHub-Repository gesteckt. Von diesem habe ich mal einen *Fork* erstellt und du kannst dir [darin Michaels Lösung anschauen](https://github.com/LernMoment/EmailClientProtoType). Einen Fork habe ich erstellt, weil Michael seinen Prototypen wahrscheinlich irgendwann wieder löschen möchte, aber die Links in den LernMails auch in ein paar Jahren noch funktionieren sollen.

#### Welche Bibliothek?
Ich habe keine Ahnung wie genau Michael nach einer Bibliothek gesucht hat, aber mein erster Schritt ist immer [nuget.org](https://nuget.org). Dort habe ich in der Suche einfach *IMAP* eingegeben und habe den Filter auf *Recently updated* gesetzt. Mir ist wichtig, dass eine Bibliothek die ich verwende auch kontinuierlich gepflegt wird.

Michael hat in seinem Prototypen die Bibliothek [MailKit](https://www.nuget.org/packages/MailKit/) von *NuGet* verwendet. Auch bei meiner Recherche bin ich relativ schnell auf diese Bibliothek gestoßen. Sie wäre tatsächlich auch meine erste Wahl gewesen, weil

- Sie wurde zuletzt vor 20 Tagen (Stand 08.09.2021) aktualisiert
- Die aktuelle und alle vorherigen Versionen zusammen haben über 26 Millionen Downloads
- Die Bibliothek unterstützt .NET Framework, .NET Standard und .NET 5.0 (Die Unterschiede der Versionen habe ich bereits in [LernMail 1/21](/_lernmails/21-1-dotnet-versionen/) erklärt)
- Die verfügbaren [Beispiele für MailKit auf GitHub](https://github.com/jstedfast/MailKit#using-mailkit) sehen recht einfach aus

Dieses sind die ersten Kriterien die ich mir anschauen, wenn ich auf der Suche nach einer Bibliothek für etwas bin.

Auch Rudi hat eine Bibliothek von *NuGet* verwendet und zwar [Chilkat](https://www.nuget.org/packages/ChilkatDnCore/) (siehe auch die offizielle [Website von Chilkat](https://www.chilkatsoft.com)). Diese Bibliothek umfasst sogar noch wesentlich mehr als nur Emails. So werden verschiedenste Protokolle (z.B. *SSH*, *SFTP*, *REST*, ... ) unterstützt. Allerdings ist *Chilkat* leider nicht open source. Es gibt zwar die Möglichkeit die Bibliothek für 30 Tage auszuprobieren, aber für den *ÜMR* möchte ich das nicht verwenden.

Ich habe mir noch ein paar weitere Bibliotheken angeschaut die auf *NuGet* gelistet werden und sie waren leider alle nicht open source. Wahrscheinlich gibt es noch mehr Bibliotheken, aber bei diesem *Spike* (also der Erstellung eines *Prototypen*) geht es ja darum, dass man in möglichst kurzer Zeit die Machbarkeit überprüft bzw. zu einem Thema etwas mehr Erfahrung sammelt.

#### Was lernen wir aus den Prototypen?
Wenn du dir nochmals die Merkmale eines *Spikes* anschaust (siehe weiter oben), siehst du das die *zeitliche Begrenzung* ein wichtiger Aspekt ist. Die Suche nach einer Bibliothek hat mich ca. 15 Minuten gekostet. Dann habe ich einen einfachen Prototypen für den Abruf von Mails mittels IMAP anhand des Beispiels auf der [MailKit-Webseite](https://github.com/jstedfast/MailKit#using-imap) umgesetzt. Das hat mich weitere ca. 20 Minuten gekostet. Für mich hatte ich ein Limit von 1h festgelegt.

Die erste Erkenntnis hier ist also, dass der Abruf von Mails tatsächlich sehr einfach ist. D.h. wir haben nun eine erste Grundlage um die Komplexität einzuschätzen. Wichtig ist dabei zu berücksichtigen, dass es sich hier wirklich nur um ein *proof-of-concept* handelt. Elementare Punkte wie Sicherheit und Wartbarkeit werden den Aufwand und die Komplexität erhöhen.

Im folgenden findest du meinen Prototypen:

```csharp
static void Main(string[] args)
{
  string imapServerUrl = "imap.1und1.de";

  Console.WriteLine("ÜMR - Mail-Spike!" + Environment.NewLine);
  Console.WriteLine($"Es wird der IMAP-Server: {imapServerUrl} verwendet!");
  Console.WriteLine("Bitte gib den zu verwendenden Benutzernamen ein:");
  string username = Console.ReadLine();
  Console.WriteLine("Bitte gib das zu verwendende Passwort ein:");
  string password = Console.ReadLine();

  using (var client = new ImapClient())
  {
    client.Connect(imapServerUrl, 993, true);

    client.Authenticate(username, password);

    var inbox = client.Inbox;
    inbox.Open(FolderAccess.ReadOnly);

    Console.WriteLine("Anzahl der Mails: {0}", inbox.Count);
    Console.WriteLine("Anzahl der aktuellen Mails: {0}", inbox.Recent);

    Console.WriteLine("Mails die 'LernMail' im Subject haben:");
    var messageIds = inbox.Search(SearchQuery.SubjectContains("LernMail"));
    foreach (var id in messageIds)
    {
      var message = inbox.GetMessage(id);
      Console.WriteLine("Subject: {0}", message.Subject);
    }

    client.Disconnect(true);
  }
}
```

Wie du siehst habe ich das Beispiel von der Webseite mehr oder weniger direkt übernommen. Auch lasse ich das Passwort direkt auf der *Console* eingeben, was bezüglich Sicherheit eine ziemlich schlechte Idee ist. Um das Beispiel ein wenig näher an unseren späteren Anwendungsfall heran zu bringen, habe ich dann nach Mails mit dem Schlüsselwort *"LernMail"* in meinem Postfach gesucht. Damit habe ich einen ersten Einblick bekommen wie einfach *MailKit* zu verwenden ist.

Damit ich diese Suche umsetzen konnte, habe ich einfach in einer Suchmaschine nach *"c# mailkit search"* gesucht. Direkt im ersten Treffen wurde mir ein Beispiel von *StackOverflow* gezeigt indem ich sehen konnte, dass die Suche über eine `SearchQuery` funktioniert. Die Erweiterung meines Codes um die Suche hat weniger als 5 Minuten gedauert. Das zeigt mir, dass *MailKit* nicht nur eine gute Dokumentation hat ([auf der Webseite](https://github.com/jstedfast/MailKit#searching-an-imap-folder) wird die Suche nämlich auch erklärt), sondern auch in der Community viel diskutiert wird.

#### Fazit/Dokumentation des Spikes
Mithilfe dieses *Spikes* haben wir also erfahren, dass der Abruf von Mails aus einem *IMAP*-Postfach einfach und das *MailKit* eine Bibliothek ist, die wir verwenden können. Da Michael und ich unabhängig voneinander die gleiche Erfahrung gemacht haben, scheint das Risiko in diesem Bereich wirklich enorm klein zu sein.

Letztlich ging es ja darum, ob wir den in unserer *Story-Map* beschriebenen einfachen Lösungsansatz basierend auf Mails, mit vertretbarem Aufwand umsetzen können. Diese Frage hat der *Spike* für mich mit einem klaren **JA!** beantwortet. Somit können wir nun den nächsten Schritt machen und uns endlich ein wenig mit der zu erstellenden WPF-Anwendung beschäftigen.

#### Was sind die nächsten Schritte?
In der StoryMap (siehe [LernMail 19/21](/lernmails/21-19-uemr-story-map/)) haben wir uns die Abläufe aus Sicht der Anwender (Lotte die Lernende und Jan der Admin) klar gemacht. Das ist wichtig, damit wir den [Kundennutzen](/lernmails/21-10-philosophie-kundennutzen/) im Fokus behalten und nicht etwas entwickeln was zwar toll ist, aber niemand benötigt. Wahrscheinlich ist dir aber schon aufgefallen, dass unsere *Story-Map* bisher noch nicht viel Informationen enthält bezüglich der zu entwickelnden Anwendung.

Wie in der letzten LernMail bereits beschrieben, können wir die *Stories* in der *Story-Map* nun benutzen, um weitere Details zu diskutieren. Um die passenden *Stories* für mehr Details auszuwählen helfen uns die *Personas* (also Lotte und Jan, unsere Repräsentanten für die Anwender). Offensichtlich hat Lotte keinen direkten Kontakt mit unserem *ÜMR*. Sie verschickt eine Mail und erhält eine (oder später vielleicht auch 2) Mail als Erinnerung. Wenn wir also (erstmal) davon ausgehen, dass wir keine Web-Anwendung erstellen, dann bekommt Lotte keine Oberfläche zu Gesicht.

Anders ist es mit Jan. Als Admin muss er einiges Konfigurieren und ist interessiert daran den Betrieb des *ÜMR* zu überwachen. Wenn wir uns die [*Stories* in der *Story-Map*](/lernmails/21-19-uemr-story-map/) nochmals anschauen, dann möchte Jan mit dem *ÜMR* folgendes machen:
 - Sehen welche Anmeldungen vom *ÜMR* nicht automatisch verarbeitet wurden (wie genau Jan vom *ÜMR* darüber informiert wird, müssen wir noch festlegen). Wahrscheinlich benötigt Jan dann auch die Möglichkeit manuell eine Anmeldung vorzunehmen.
 - Eine Vorlage für die Erinnerungsmail ein pflegen (das muss nicht unbedingt über die Oberfläche gehen, sondern könnte beispielsweise auch mithilfe einer Datei geschehen.)
 - Sehen welche Daten der *ÜMR* gespeichert hat, die wegen dem Datenschutz gelöscht werden können
 - Sehen welche Personen für welche ÜbungsMomente momentan registriert sind
 - Sensible Daten bezüglich dem Zugriff auf das Postfach (vielleicht auch für eine DB?) konfigurieren

Der nächste Schritt ist also, dass wir uns ein wenig mit den Details auseinander setzen. Dafür sollten wir uns weiterhin an den *Stories* aus der *Story-Map* orientieren und für jede von "Jans-Stories" überlegen wie könnte eine potentielle Oberfläche aussehen? Das ist doch ein super ÜbungsMoment, oder 😉?

### ÜbungsMoment #12 - UI skizzieren
Bestimmt ist dir mittlerweile schon klar, dass der *ÜMR* nun kein besonders komplexes Produkt wird. Vielleicht geht es dir wie mir und am liebsten möchtest du direkt mit dem Code anfangen. Nach meiner Erfahrung geht das auch erstmal ganz gut, aber es kommt auch bei einfachen Anwendungen der Punkt, an dem du den Überblick verlierst. Erstaunlicherweise kommt der immer viel früher als ich es erwarte 😱.

Lass uns also die Diskussion um die Details mit einer kleinen Skizze beginnen. **WICHTIG:** ich kann wirklich nicht gut malen (oder wenn ich ganz ehrlich bin, meine ich, dass ich überhaupt nicht malen kann). Darum geht es hier aber auch überhaupt nicht. Es ist vollkommen ausreichend, wenn du ein Schmierblatt nimmst und deine Gedanken zu den einzelnen Punkte mit einem beliebigen Stift skizzierst.

Dieser Schritt ist aus meiner Sicht aus (mindestens) 2 Gründen wichtig:
1. Du beschäftigst dich mit dem was zukünftig entstehen soll und verstehst so wesentlich besser welche Punkte dir noch unklar sind.
2. Wenn wir erst VisualStudio öffnen, dann gibt es wieder tausende Ablenkungen und Detailentscheidungen. Da passiert es ganz leicht, dass wir uns verrennen. Haben wir nun eine Skizze von dem was wir entwickeln wollen, haben wir einen Anhaltspunkt zu dem wir zurück kommen können, wenn wir uns verirrt haben.

Deine Aufgabe für diesen ÜbungsMoment ist es also die *Stories* von Jan dem Admin durchzugehen und für jede eine kleine Skizze zu machen wie die jeweilige Aktion auf einer Oberfläche umzusetzen ist. Dabei wirst du einige Fragen haben wie etwas konkret umgesetzt werden soll. Diese Fragen solltest du dir notieren, damit wir sie diskutieren können. Weil wir uns in den nächsten Tagen leider nicht persönlich treffen können 😔, kannst du uns deine Fragen und Skizzen gerne schicken (Details siehe den folgenden Abschnitt *"Lösung"*).

#### Erinnerung
**Akzeptierst du diese Übung?** Klicke auf folgenden Link damit wir dich in ein paar Tagen nochmals daran erinnern, dass du die Übung machen wolltest: [Ja, erinnere mich an diese Übung in ein paar Tagen](mailto:lara@lernmoment?subject=[LernMail%2020-21]%20Übungsmoment%20akzeptiert). (Kannst du einfach so abschicken und die Magie passiert. Wenn mehr Lesern die Idee gefällt, wird das natürlich automatisiert ;).

#### Lösung
Bisher habe ich die Aufgabe noch nicht umgesetzt. Du musst dich also bis zur nächsten LernMail gedulden. Wen du magst, kannst du uns [deine Antwort zu dieser Übung schicken](mailto:jan@lernmoment.de?subject=Lösung%20Übungsmoment%20LernMail%2020-21). Dann git es dazu vielleicht sogar ein wenig Rückmeldung ;-).

Wie immer freuen Lara und ich uns über jede [Rückmeldung](mailto:lara@lernmoment.de?subject=Rückmeldung%20LernMail%2020-21) von dir.

Mit malerischen Grüßen aus Bielefeld

Jan von [LernMoment.de](https://www.lernmoment.de)

<div class="subscribe-notice">
  <h5>Dir gefällt diese LernMail? Dann melde dich auch für die nächste an ;-)</h5>
	{% include lernmoment-subscribe.html %}
</div>
