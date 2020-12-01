---
layout: page
title: "Meine Musterlösung"
excerpt: "Hier erkläre ich dir Schritt-für-Schritt wie ich die Aufgabe gelöst habe."
search_omit: true
image:
  feature: 
modified:
lm-newsletter-group-id: 1
date: 2017-12-15T09:30:00+01:00
---

Zusätzlich zum Video in dem ich dir meine Lösung beschreibe, findest du hier die einzelnen Schritte in Form von Commits:

 1. [Warten auf Benutzer vor Beenden](https://github.com/LernMoment/csharp-einfach-verschluesselt/commit/cd9b9e82e8f20d6b3353a7a5699ef84aa69b9e09) - In einer Konsolenanwendung ist es hilfreich, wenn du vor dem Ende auf die Eingabe des Benutzers wartest, damit er die Chance hat alles Ausgaben der Anwendung anzuschauen. Zusätzlich habe ich hier schon in die Kommentare geschrieben was die einzelnen Schritte sind um die weitere Benutzerinteraktion umzusetzen (siehe [Lösungstipp #1](/csharp-uebung-1/tipp1-kleine-schritte/)).
 2. [Teilaufgabe Benutzerinteraktion](https://github.com/LernMoment/csharp-einfach-verschluesselt/commit/2beb18464d456fc51f5ff51334c33d8a50818e34) - Hier siehst du wie ich die einzelnen Eingaben und Ausgaben umsetze. In der Lösung (im Bereich *verschlüsselten Text ausgeben*) verwende ich [string interpolation](/csharp-programmieren/mit-csharp-6-noch-mueheloser-werte-in-strings-einfuegen/) um Werte einer Variablen (in diesem Fall `verschluesselterText`) direkt in einen string einzusetzen.
 3. [Separate Methode zur Verschlüsselung](https://github.com/LernMoment/csharp-einfach-verschluesselt/commit/17744879ec38e13cf26a1b2fb1f461eeaad87f12) - Ich habe mich dazu entschieden eine separate Methode für die Verschlüsselung zu realisieren (Prinzip: Separation of Concerns). An dieser Stelle hat sich das angeboten. Allerdings ist es auch okay, wenn du erstmal alles komplett in die `Main` Methode schreibst und im Nachgang ein *Refactoring* durchführst. Übrigens wäre es auch möglich gewesen hier ein objektorientiertes Design zu erstellen (also mit unterschiedlichen Klassen zu arbeiten). Ich habe mich jedoch dagegen entschieden, weil es mir zu weit von meinem Übungsfokus entfernt war.
 4. [Verschlüsselung in Kommentaren](https://github.com/LernMoment/csharp-einfach-verschluesselt/commit/2f17481354664f4c2e8a731b2059f612ff5294fa) - Wie in [Lösungstipp #1](/csharp-uebung-1/tipp1-kleine-schritte/) beschrieben, überlege ich mir erstmal die einzelnen Schritte zur Lösung und notiere diese in normaler Textform für mich. Einerseits gibt es mir so gleich die nötige Struktur und ich kann mich danach immer auf einen einzelnen Schritt fokussieren.
 5. [Konvertierung in Großbuchstaben](https://github.com/LernMoment/csharp-einfach-verschluesselt/commit/643e55a2cd5a07a9beea5abd4236bc5e2781c12b) - Hier nun der erste Einsatz der Methoden des Datentyps `string` wie in [Lösungstipp #2](/csharp-uebung-1/tipp2-framework-methoden/) beschrieben. Wichtig ist mir auch hier wieder die direkte Kontrolle des Ergebnisses. Daher gebe ich die konvertierten Zeichenkette zurück und kann dann mit unterschiedlichen Eingaben testen was beispielsweise bei Sonderzeichen und Nummer passiert (nichts ;-).
 6. [Umlaute ersetzen](https://github.com/LernMoment/csharp-einfach-verschluesselt/commit/eca0d6c406cea46506b1cc6a67ce115ca047cfdf) - Auch hier greife ich wieder auf die bestehenden Methoden (`Replace` in diesem Fall) zurück. Wichtig ist, dass du die Reihenfolge einhältst. Also erst alles in Großbuchstaben konvertieren und dann die Umalute ersetzen. Ansonsten müsstest du für *Ö* und co. auch die Kleinbuchstaben abprüfen. Übrigens könntest du auch eine Lösung der Aufgabe (fast) nur mit der `Replace` Methode erstellen. Weist du wie?
 7. [Ein einzelnes Zeichen verschlüsseln](https://github.com/LernMoment/csharp-einfach-verschluesselt/commit/817fad1b66cde14848d8d7dc502ce8391546f4b4) - Bei meiner Lösung hatte ich erst direkt angefangen eine Schleife zu schrieben und wollte alles auf einmal lösen. Als ich dann festgestellt habe, dass ich nicht weiter komme, habe ich alles bis dahin gelöscht und erstmal nur versucht ein einzelnes Zeichen (ohne Berücksichtigung aller Sonderfälle) zu konvertieren. So konnte ich Schritt für Schritt die Lösung erarbeiten und dabei jeden einzelnen Schritt überprüfen.
 8. [Alle Zeichen verschlüsseln](https://github.com/LernMoment/csharp-einfach-verschluesselt/commit/a293299aea38d609e29c8570de883363d4de68c2) - Nachdem ich wußte wie ein einzelnes Zeichen zu verschlüsseln ist, konnte ich das ganze in eine Schleife bauen. Auch hier habe ich alle "Sonderfälle" erstmal ausser Acht gelassen.
 9. [Nach Z kommt A](https://github.com/LernMoment/csharp-einfach-verschluesselt/commit/36200e1af12be58810fdb9fba80e7abd265a0558) - Nun endlich habe ich mich mit dem ersten "Sonderfall" beschäftigt.
 10. [Sonderzeichen und Zahlen ignorieren](https://github.com/LernMoment/csharp-einfach-verschluesselt/commit/b7133ee075f455c1c4d4a08b75486eaeaf3180fa) - Im letzten Schritt habe ich eine weitere bestehende Methode `char.IsLetter` verwendet.

<br/>

<div class="subscribe-notice">
<h5>Lerne Konzepte, Syntax und Theorie von C#</h5>
<a markdown="0" href="https://www.udemy.com/course/einstieg-in-csharp-software-programmieren-wie-ein-profi/?couponCode=CS_20-1220_LMDE" class="notice-button">Hier geht's zum Online-Kurs "Einstieg in C#" >></a>
</div>
