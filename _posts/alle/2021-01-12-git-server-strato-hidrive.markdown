---
layout: post
title: "Git-Server auf Strato HiDrive aufsetzen und verwenden"
excerpt: "Es muss nicht immer GitHub sein. Ein eigenes Git Remote-Repository auf Stratos HiDrive installieren ist nicht schwer."
categories: alle
lernmoment: Hintergrund
lm-newsletter-group-id: 2
show-lm-newsletter-subscribe-box: true
share: false
tags: [Visual Studio, Versionsverwaltung, Werkzeug]
author: raul_katos
banner: einstieg-csharp
image:
  feature: banner/lernmoment-git.jpg
date: 2021-01-12T01:00:00+01:00
---

Mit Visual Studio 2019 ist die Integration von git in den Entwicklungsprozess ein Leichtes geworden. Mit einem einfachen Mausklick wird ein lokales git-Repository erstellt, in welches man seine Versionsstände committen kann. Auch die Anbindung an GitHub zu einem Remote-Repository ist sehr einfach, sofern man bereits über einen GitHub-Account verfügt. Doch es gibt Situationen, da möchte man nicht auf GitHub gehen, und dann stellt sich die Frage, wie man ein **Remote-Repository** selbst erstellen und an Visual Studio anbinden kann, so dass auch andere Benutzer darauf zugreifen können. Dieser Beitrag beschreibt eine Möglichkeit, über **HiDrive** (das ist die Daten-Cloud von Strato) genau das zu erreichen.

Auch wenn diese Anleitung sehr ausführlich ist, die Durchführung der Schritte ist in **wenigen Minuten** erledigt!

### Inhalt

- Vorüberlegungen
- Die Ausgangssituation
- Erstellen des git Remote-Repositorys in HiDrive
- Erstellen des lokalen Repositorys in Visual Studio 2019
- Pushen in das git Remote-Repository in HiDrive
- Clonen des git Remote-Repositorys in HiDrive
- Zusammenfassung
- Abschließende Anmerkungen

## Vorüberlegungen
Prinzipiell kann man als einzelner Entwickler die git-Funktionalität von Visual Studio 2019 jederzeit sofort für sein Projekt aktivieren. Ab diesem Zeitpunkt ist es möglich, Änderungen an den Quelldateien zu versionieren und damit nachvollziehen zu können. Ein so erstelltes **lokales Repository** kann dabei auf der lokalen Festplatte liegen oder auch auf einem Netzlaufwerk. Ein **Remote-Repository** kann prinzipiell auf einem Netzlaufwerk liegen, so dass ein **Push** vom lokalen ins Remote-Repository möglich ist. Sofern mehr als ein Entwickler an einem Projekt beteiligt sind, können diese aus dem Remote-Repository ihr lokales Repository **Clonen**.

Ein **Netzlaufwerk** ist jedoch in der Regel und auch sinnvollerweise nicht von außerhalb des LAN (lokales Netzwerk) erreichbar. Es ist <ins>keine gute Idee</ins>, sein NAS oder seinen Server für unbekannte Dritte nach außen aufzumachen und auf Netzwerkdienste zugreifen zu lassen. Ein lokales System nach außen abzusichern ist jedoch mit erheblichem Aufwand verbunden. Wir merken recht schnell, dass wir an der Cloud nicht vorbeikommen, wenn wir den administrativen Aufwand gering halten wollen.

Der **Vorteil von GitHub** ist, dass man es weltweit erreichen kann. Die Authentifizierung (das Anmelden bei GitHub) und damit das Rechte-Management wird durch die GitHub-Plattform bewerkstelligt. Damit ist es möglich, dass die Entwickler irgendwo auf der Welt verteilt sein können und über das Internet Zugriff auf das Repository haben.

Nun ist GitHub "nur" ein (kommerzieller) Anbieter, auch wenn die zusätzlichen Services von GitHub weit über das bloße Bereitstellen eines Remote-Repositorys hinausgehen. Es stellt sich die Frage, ob und wie man auch ohne GitHub ein in der Cloud gespeichertes Remote-Repository nutzen kann? Die Antwort darauf soll dieser Beitrag geben.

## Die Ausgangssituation

Aufgrund eines Angebots wurde ich wieder einmal auf das Strato Produkt [HiDrive](https://www.strato.de/cloud-speicher/) aufmerksam gemacht<sup>1</sup>. Neben einem Cloud-Speicher von **1 TByte** war in dem Angebot das komplette **Schnittstellenpaket** enthalten, mit dem es möglich ist, nicht nur über einen Web-Client, sondern über verschiedene Protokolle<sup>2</sup> (insbesondere für git) auf die Daten zuzugreifen.

Prinzipiell unterstützt **git** die folgenden Protokolle (siehe auch hier):

- Lokal (also innerhalb des lokalen Netzwerks z. B. mit file://)
- HTTP (Dumb HTTP ab Git 1.6.6 Smart HTTP bzw. HTTPS)
- <span style="background-color: yellow">Secure Shell (SSH - kein anonymer Zugriff möglich!)</span>
- Git (über Port 9418 - aber ohne Authentifizierung!)

Die hier gezeigte Vorgehensweise wird über **SSH** implementiert. D. h. wir brauchen später für **Push** und **Clone** einen **User** und ein **Passwort** zur Authentifizierung!

Der **User** ist derjenige, mit dem man sich an HiDrive anmeldet.
Das **Passwort** ist dasjenige, das zu dem HiDrive User-Account gehört.

## Erstellen des git Remote-Repositorys in HiDrive

Sobald man sich bei HiDrive angemeldet hat, blickt man auf seinen privaten Cloud-Speicher.

Hier haben wir bereits einen Ordner **Repositories**, in welchem wir unsere Remote-Repositorys ablegen werden.

![HiDrive mit erzeugtem Ordner Repositories]({{ site.url }}/images/git-server-hidrive/2021-01-02_15h57_08.png)
{: .pull-left}

Wir wechseln durch Klicken in den Ordner **Repositories**, der noch leer ist:

![HiDrive mit erzeugtem Ordner Repositories]({{ site.url }}/images/git-server-hidrive/2021-01-02_16h00_17.png)
{: .pull-left}

Wir erstellen jetzt innerhalb HiDrive ein neues Git-Repository.

Über die Schaltfläche `... mehr` öffnen wir das Funktionsmenü (1)

Dort wählen wir den Eintrag `Git-Repository erstellen` (2)

![HiDrive mit erzeugtem Ordner Repositories]({{ site.url }}/images/git-server-hidrive/2021-01-02_16h03_52.png)
{: .pull-left}

Wir geben hier als Name des Repositorys **MyRepository** ein (1) und klicken auf die Schaltfläche `Erstellen` (2):

![HiDrive mit erzeugtem Ordner Repositories]({{ site.url }}/images/git-server-hidrive/2021-01-02_16h06_04.png)
{: .pull-left}

Zur Bestätigung wird uns ein Dialog angezeigt, in welchem der Pfad zu unserem Repository eingetragen ist
(hier: /users/\[userName\]/Repositories/MyRepository.git)

Der **userName** (hier rot anonymisiert) entspricht dem User, mit dem wir uns bei HiDrive angemeldet haben.

Den Pfad `Kopieren` wir uns in die Zwischenablage (1) und klicken anschließend auf `OK` (2), um den Dialog zu schließen.

Nun sehen wir im Ordner **Repositories** das eben erzeugt Repository **MyRepository**:

![HiDrive mit erzeugtem Ordner Repositories]({{ site.url }}/images/git-server-hidrive/2021-01-02_16h09_24.png)
{: .pull-left}

Wir wechseln nun in das Repository **MyRepository.git** (1):

![HiDrive mit erzeugtem Ordner Repositories]({{ site.url }}/images/git-server-hidrive/2021-01-02_16h12_00.png)
{: .pull-left}

Wir sehen die typischen Verzeichnisse und Dateien eines git-Repositorys.

Damit sind wir innerhalb von HiDrive fertig.

## Erstellen des lokalen Repositorys in Visual Studio 2019

>Anmerkung: prinzipiell kann die Anlage des lokalen Repositorys, sowie die Angabe des Remote-Repositorys in einem Schritt erledigt werden. Es ist aber auch möglich, ein Repository zunächst lokal zu erstellen, und es später in ein Remote-Repository zu pushen. Hier gehen wir aus didaktischen Gründen den etwas umständlicheren Weg: erst lokal initialisieren und später pushen.

Für diese Anleitung erstelle ich ein Test-Projekt mit dem Namen **TestProjekt** als C# WPF-Anwendung:

![HiDrive mit erzeugtem Ordner Repositories]({{ site.url }}/images/git-server-hidrive/2021-01-02_16h58_19.png)
{: .pull-left}

Wir geben also einen `Projektnamen` ein (1), wählen den `Ort`, wo wir unsere Repositorys ablegen (2) und klicken auf `Erstellen` (3).

Wir schauen uns das Ergebnis im Windows Explorer an:

![HiDrive mit erzeugtem Ordner Repositories]({{ site.url }}/images/git-server-hidrive/2021-01-02_17h02_52.png)
{: .pull-left}

Zur Verdeutlichung habe ich die unsichtbaren Elemente im **Windows Explorer** sichtbar geschaltet.

Hier sehen wir das *.vs* Verzeichnis, das Visual Studio angelegt hat (1).

Sobald das Projekt in Visual Studio 2019 erzeugt wurde, findet sich unten rechts im Visual Studio 2019 Fenster der Hinweis auf die Quellcodeverwaltung:

![HiDrive mit erzeugtem Ordner Repositories]({{ site.url }}/images/git-server-hidrive/2021-01-02_17h00_14.png)
{: .pull-left}

Hier klickt man zuerst auf `Zur Quellcodeverwaltung hinzufügen` (1)

Anschließend sollte `Git` angeboten werden, worauf wir dann klicken (2):

Jetzt öffnet sich der Dialog **GIT-Repository** erstellen:

![HiDrive mit erzeugtem Ordner Repositories]({{ site.url }}/images/git-server-hidrive/2021-01-02_17h03_56.png)
{: .pull-left}

Da wir zuerst nur ein lokales git-Repository initialisieren, wählen wir `Nur lokal` aus (1).

Als `Lokaler Pfad` wird der Ordner vorgeschlagen, den wir als Projektmappe zuvor angelegt haben (2).

Zum Initialisieren des lokalen git-Repositorys klicken wir abschließend auf die Schaltfläche `Erstellen` (3).

Schauen wir uns das Ergebnis abermals im **Windows Explorer** an:

![HiDrive mit erzeugtem Ordner Repositories]({{ site.url }}/images/git-server-hidrive/2021-01-02_17h24_37.png)
{: .pull-left}

Im Ordner unserer Projektmappe ist nun ein weiteres unsichtbares Verzeichnis - unser lokales git-Repository - **.git** (1) entstanden.

Außerdem liegen in der Projektmappe zwei weitere Dateien (**.gitattributes** und **.gitignore**) (2)

Ab jetzt können wir jede Änderung in unser lokales git-Repository committen.

Im folgenden Abschnitt werden wir nun eine Verbindung zu unserem Remote-Repository, das wir in HiDrive eingerichtet haben, herstellen.

## Pushen in das git Remote-Repository in HiDrive

Innerhalb von Visual Studio 2019 gibt es standardmäßig auf der rechten Seite neben dem Projektmappen Explorer einen zweiten Reiter mit der Beschriftung **Git-Änderungen: TestProjekt:**

![HiDrive mit erzeugtem Ordner Repositories]({{ site.url }}/images/git-server-hidrive/2021-01-02_17h38_01.png)
{: .pull-left}

Wir aktivieren den Reiter `Git-Änderungen: TestProjekt` (1) und geben ggf. in das Textfeld `Nachricht eingeben` (2) einen sinnvollen Kommentar ein, z. B. "Initiale Anlage des Projekts". Anschließend klicken wir auf die Schaltfläche `Push` (3).

>Da wir das Projekt bereits in ein lokal initialisiertes Repository commited haben, steht hier, dass es keine ungestageten (sic!) Änderungen gäbe. Sollten zwischenzeitlich Änderungen gemacht worden sein, würden diese hier aufgeführt. Ein Kommentar im Textfeld Nachricht eingeben sollte dann obligatorisch sein.

Es öffnet sich nun wieder der Dialog **GIT-Repository erstellen**:

![HiDrive mit erzeugtem Ordner Repositories]({{ site.url }}/images/git-server-hidrive/2021-01-02_17h55_00.png)
{: .pull-left}

Hier wählen wir jetzt `Vorhandenes Remoterepository` (1)

Als `Remote-URL` geben wir jetzt den zuvor in HiDrive kopierten Pfad zum Remote-Repository mit Präfix ein

Anstelle von \[userName\] tragen wir unseren Anmeldenamen für HiDrive ein (2):

\[userName\]@git.hidrive.strato.com:/users/\[userName\]/Repositories/MyRepository.git

Abschließend klicken wir auf `Push` (3)

Nun folgt der Dialog **Enter Password**:

![HiDrive mit erzeugtem Ordner Repositories]({{ site.url }}/images/git-server-hidrive/2021-01-02_18h23_50.png)
{: .pull-left}

Hier müssen wir noch das **Passwort** für den Zugriff auf HiDrive eingeben (1) und mittels `OK` (2) bestätigen:

![HiDrive mit erzeugtem Ordner Repositories]({{ site.url }}/images/git-server-hidrive/2021-01-02_18h28_42.png)
{: .pull-left}

Wenn alles geklappt hat, sehen wir rechts im Reiter `Git-Änderungen: TestProjekt` die entsprechende Erfolgsmeldung (1).

## Clonen des git Remote-Repositorys in HiDrive

Um nun den Kreis zu schließen, soll hier noch kurz dargestellt werden, wie man das Remote-Repository klont. Zu diesem Zweck klone ich in ein anderes Verzeichnis das Projekt, das ich eben gepusht hatte.

Hierzu starten wir Visual Studio neu:

![HiDrive mit erzeugtem Ordner Repositories]({{ site.url }}/images/git-server-hidrive/2021-01-02_21h52_48.png)
{: .pull-left}

Jetzt wählen wir `Repository klonen` (1)

![HiDrive mit erzeugtem Ordner Repositories]({{ site.url }}/images/git-server-hidrive/2021-01-02_21h54_33.png)
{: .pull-left}

Beim `Repositoryspeicherort` geben wir den Pfad ein, den wir vom Pushen bereits kennen.

Anstelle von \[userName\] tragen wir unseren Anmeldenamen für HiDrive ein (1):

\[userName\]@git.hidrive.strato.com:/users/\[userName\]/Repositories/MyRepository.git

Für diesen Test lassen wir von Visual Studio ein neues Verzeichnis (**ProjektTest**) als Projektmappe anlegen (2)

Abschließend starten wir durch Klicken auf die Schaltfläche `Klonen` den Abruf der Dateien (3)

Wir müssen uns wieder bei HiDrive anmelden, es folgt also der Dialog **Enter Password**:

![HiDrive mit erzeugtem Ordner Repositories]({{ site.url }}/images/git-server-hidrive/2021-01-02_18h23_50.png)
{: .pull-left}

Wir geben das **Passwort** für den Zugriff auf HiDrive ein (1) und bestätigen mittels `OK` (2)

Das Projekt ist nun in Visual Studio 2019 verfügbar.

Das Ergebnis sehen wir uns noch im **Windows Explorer** an:

![HiDrive mit erzeugtem Ordner Repositories]({{ site.url }}/images/git-server-hidrive/2021-01-02_22h11_03.png)
{: .pull-left}

Wir sehen, dass ein neues Verzeichnis **ProjektTest** als Projektmappe angelegt wurde (1)

Zu beachten ist, dass das Projekt selbst noch den ursprünglichen Namen **TestProjekt** hat, was so in Ordnung ist.

## Zusammenfassung

- Diese Anleitung hat gezeigt, dass es möglich ist, die Quellcodeverwaltung mittels eines Git-Repositorys, das innerhalb von HiDrive erstellt werden kann, an Visual Studio 2019 anzudocken.
- Damit ist es möglich, mittels Visual Studio 2019 einen Versionsstand mit Push ins Remote-Repository zu übertragen bzw. mittels Clone ein lokales Repository aus dem Remote-Repository zu erzeugen.
- In HiDrive können weitere User kostenpflichtig hinzugebucht werden. Jeder eingerichtete HiDrive-User hat dann auf <ins>alle Repositorys im \public Ordner</ins> Zugriff. Eine dezidierte Freigabe für bestimmte User auf einzelne Repositorys im \public Ordner ist jedoch nicht möglich!
- Die Standardmechanismen der beschriebenen Vorgehensweise erlauben eine Authentifizierung mittels SSH, was jedoch die manuelle Eingabe eines Passworts bei Push und Clone erforderlich macht.
- Der beschriebene Weg erlaubt jedoch aufgrund SSH keinen anonymen Zugriff, was im Wesen von SSH begründet liegt. Ein Ausweg könnte ein SSH-Schlüssel sein (s. u.).

## Abschließende Anmerkungen

- **Weitere Benutzer für HiDrive**: Leider kann der Zugriff auf bestimmte Repositorys im \public-Ordner nicht für bestimmte HiDrive-User beschränkt werden. D. h. entweder ist das Repository in \public und dann für alle gebuchten HiDrive-User sichtbar, oder es befindet sich im eigenen Bereich und ist ausschließlich für diesen User sichtbar. Dazwischen gibt es leider nichts.
- **Verhindern der Passwort-Eingabe**: Um zu vermeiden, dass man jeweils bei Push bzw. Clone das Passwort eingeben muss, kann man ggf. einen SSH-Schlüssel generieren. HiDrive erlaubt es, den SSH-Schlüssel zu hinterlegen. Wie dieser erzeugt und mittels Visual Studio 2019 genutzt werden kann, werde ich ggf. in einem weiteren Beitrag erläutern.
- **Public Zugriff auf ein Remote-Repository**: ein rein anonymer Zugriff auf ein git-Repository in HiDrive kann bis dato nicht bewerkstelligt werden. Zwar lassen sich im HiDrive Ordner als HTTPS-URL freigeben, diese kann man aber nicht in der Quellcodeverwaltung in Visual Studio 2019 hinterlegen, d. h. so funktioniert es nicht.

---
<sup>1</sup> Es lohnt sich manchmal, bei Strato auf ein Angebot zu warten. In meinem Fall zahlte ich 1 € für die Einrichtung, in den ersten 12 Monaten 0 € und anschließend ab dem 13. Monat 7 €/Monat.

<sup>2</sup> Folgende Protokolle werden mit dem HiDrive Schnittstellenpaket unterstützt:
- FTP (ohne Verschlüsselung - File Transfer Protocol - sehr alt)
- FTPS (File Transfer Protocol verschlüsselt per TLS)
- SFTP (File Transfer Protocol SSH verschlüsselt)
- WebDAV (wahlweise verschlüsselt oder unverschlüsselt - mobiler Zugriff auf HiDrive z. B. für CalDAV)
- SMB / CIFS (ab SMB v3 wahlweise verschlüsselt oder unverschlüsselt - HiDrive als Netzlaufwerk in Windows nutzbar)
- rsync (wahlweise verschlüsselt oder unverschlüsselt - Synchronisation über das Internet mit NAS / Netzwerkfestplatte)
- SCP (verschlüsselte Datenübertragung über ein Rechnernetz)
- git (Lokal, SSH, HTTP, Git - s. u.)
