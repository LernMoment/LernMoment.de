---
layout: post
title: "Die `--rm` Option für `docker* run`"
excerpt: "Wie du mit `--rm` deine Container vom Deck fegst und welche trotzdem stehen bleiben."
modified:
categories: docker
lernmoment: Docker
tags: [run, container, compose]
image:
  feature: 
---

Nachdem du einen Container mit `docker run` gestartet hast, wird dieser erstmal nicht ohne einen weiteren Befehl gelöscht. Sobald ein Container erfolgreich oder mit Fehler beendet wurde, steht er im Status `Exited`. So kannst du ihn nach seinem ableben noch genauer untersuchen. Vielleicht gab es ja einen Fehler oder du möchtest noch Daten sichern.

Das hat allerdings den Nachteil, dass du kontinuierlich aufräumen musst. Ansonsten wird nach und nach ziemlich viel Speicher belegt. Um dieses Problem zu umgehen, hat `docker run` die Option `--rm`. Sie entfernt den Container, nachdem er sich beendet hat. Für Container die nur ein Kommando ausführen und dann wieder beendet werden ist das ganz praktisch. Hier ein Beispiel

```
docker run --rm -v $(pwd):/usr/src/project/ -w /usr/src/project/ inginform/c-dev-env gcc Programm.c
```

Im vorherigen Beispiel wird ein Container basierend auf dem Image `inginform/c-dev-env` gestartet und ihm wird als Kommando `gcc Programm.c` übergeben. Sobald also dieses C-Programm übersetzt wurde, wird der gerade erst gestartet Container wieder gelöscht, weil er sich beendet hatte.

Für diese Option musst du dir ein paar Details merken. Die Option `--rm` kann nicht mit `-d` kombiniert werden. Dafür gibt es scheinbar hauptsächlich technische Gründe. Momentan wird `--rm` vom "docker client" bearbeitet. Ein Container der mit `-d` gestartet wurde ist allerdings in der Verantwortung des "docker daemons". Da der "docker client" schon längst weg sein könnte, wenn der Container am "docker daemon" beendet wurde, ist unklar was passieren soll. In einer der nächsten Versionen könnte sich dies allerdings ändern.

Ein weiterer wichtiger Aspekt ist, dass `--rm` nicht ausgeführt wird, wenn es beim starten des Containers einen Fehler gab. Die Begründung ist wieder, dass du vielleicht den Container analysieren möchtest, um herauszufinden, was passiert ist. Dies könnte allerdings auch in naher Zukunft geändert werden.

Auch `docker-compose run` hat die Option `--rm`. Sie funktioniert hier genauso wie bei `docker run` mit exakt den gleichen Einschränkungen. Wenn also beispielsweise `detached Container` durch `docker-compose run` gestartet werden, werden diese nicht gelöscht, weil sie noch am laufen sind. Siehe die Beispiele zu diesem Artikel.

Jetzt erstmal viel Spaß mit dem automatischen Entsorgen von Containern

Jan


### Merke

-	Container gestartet mit `docker run` werden nicht automatisch gelöscht.
-	Wenn du häufig Container startest, die nur ein Kommando ausführen und sich dann beenden, kann das viel Platz kosten.
-	Mit `docker run --rm` stellst du sicher, dass der Container nach der Ausführung automatisch gelöscht wird.
-	Die Option `--rm` kann aus technischen Gründen momentan nicht mit `-d` kombiniert werden.
-	Auch wenn dein Container mit `--rm` gestartet wurde, wird er nicht gelöscht, wenn es einen Fehler beim starten gab.

### Lernquiz 

Verwende folgende Fragen um das gelernte von heute zu festigen:

-	Wie stellst du sicher, dass dein Container **nicht** gelöscht wird, sobald er sich beendet?
-	Mit welchem Befehl und welcher Option teilst du `docker-compose` mit, dass dein Container gestartet wird und gelöscht werden soll, wenn er beendet wurde?
-	Wie löschst du einen Container der mit `-d` gestartet wurde und als daemon läuft?

Am besten du schaust dir morgen und dann nochmal in ein paar Tagen die vorherigen Fragen an und beantwortest sie ohne den Text vorher gelesen zu haben.

### Weitere Informationen

-	Den kompletten Quellcode zum heutigen Lernmoment findest du [hier](https://github.com/LernMoment/docker/tree/master/Run_--rm_Option).
-	Die zukünftigen Änderungen bezüglich dem Verhalten von `--rm` im Fehlerfall, wird in [Issue#6757](https://github.com/docker/docker/issues/6757) beschrieben. 
-	Eine Begründung warum `-d` und `--rm` nicht gemeinsam genutzt werden können gibt es in [einem Kommentar zu Issue#10545](https://github.com/docker/docker/issues/10545#issuecomment-73827389)
