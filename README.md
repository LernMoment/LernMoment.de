# LernMoment.de

Hier findest du die kompletten Quellen für den Blog [LernMoment.de](http://www.lernmoment.de). Wie auf der Seite [Kein Copyright](kein-copyright/index.md) beschrieben, ist alles in diesem Blog ohne ein Copyright [CC0 - Creative Commons Zero](https://creativecommons.org/publicdomain/zero/1.0/deed.de). Das ist jedoch auf die Texte und Bilder begrenzt, die von mir für den Blog erstellt wurden.
Das Theme [So Simple - von Michael Rose](https://github.com/mmistakes/so-simple-theme) verwendet die [MIT - Lizenz](LICENSE).

## Übersetzen mit Docker

Ich persönlich bin absoluter Fan von [Docker](https://www.docker.com). Daher kann bzw. wird dieser Blog von mir mit einem [Jekyll-Container](https://hub.docker.com/r/grahamc/jekyll/) übersetzt. Grundsätzlich kann natürlich auch jedes andere jekyll Image benutzt werden. Ich habe allerdings bisher nur dieses verwendet.

### Lokales Übersetzen 

Beim schreiben wie auch dem Anpassen des Themes ist es natürlich hilfreich, wenn die Änderungen lokal betrachtet werden können, ohne das jedesmal alles auf dem Server delopyed werden muss. Dazu bringt Jekyll seinen eignen Server mit. Bevor dieser verwendet werden kann, muss jedoch erstmal der Container mit Docker gestartet werden. Dazu wird folgender Befehl im "Root-Verzeichnis" des Blogs ausgeführt:

```
docker run --rm -it -v $(pwd):/src -e "TZ=Europe/Berlin" -e "LANG=C.UTF-8" --entrypoint="/bin/bash" -p 4000:4000 grahamc/jekyll
```

Dabei wird mit `-v $(pwd):/src` das aktuelle Verzeichnis des Hosts (also dort wohin du das LernMoment.de - GitHub Projekt geklont hast) in den Container unter `/src` gemountet. Auch die Verwendung der beiden Umgebungsvariablen `-e "TZ=Europe/Berlin" -e "LANG=C.UTF-8"` ist für Jekyll sehr wichtig. Ansonsten kann es vorkommen, dass durch Unterschiede in der Zeitzone ein Artikel momentan noch nicht veröffentlicht wird, oder das es Probleme gibt, weil kein UTF8 eingestellt ist.
Das verwendet Image benutzt das `jekyll` Kommando im `entrypoint`. Um nun in eine Bash zu kommen, von der du bei Bedarf den Jekyll-Server starten kannst, muss noch der Entrypoint überschrieben werden. Dies wird gemacht durch `--entrypoint="/bin/bash"`. Damit du dich auch von deinem Host per Browser gegen den Jekyll-Server im Container verbinden kannst, brauchst du noch die entsprechende Portfreigabe `-p 4000:4000`.

Sobald der Container läuft, können (müssen jedoch nicht ;) die richtige Zeit mit dem Kommando `date` und die richtige Sprache mit dem Kommando `locale` überprüft werden.

Um nun erstmal alle Abhängigkeiten zu laden, muss ein `bundle install` ausgeführt werden. Danach kann der Jekyll-Server bereits gestartet werden:

```
jekyll serve --host 0.0.0.0 --config _config.yml,_config-devenv.yml --no-watch
```

Dabei ist insbesondere wichtig, dass beide Konfigurationsdateien verwendet werden: `--config _config.yml,_config-devenv.yml`. In der `_config.yml` sind alle Einstellungen, die für die Produktionsumgebung verwendet werden. Dadurch, dass `_config-devenv.yml` als weitere Konfigurationsdatei geladen wird, werden insbesondere die Domäne überschrieben und somit ist es nun möglich auf deinem Host einen Browser zu starten und die laufende Seite per `http://192.168.99.100:4000` anzuschauen.

Es kann sein, dass deine Docker-Installation eine andere IP-Adresse verwendet. Sofern du `docker-machine` verwendest, kannst du die IP-Adresse mit `docker-machine ip default` überprüfen. Dabei ist `default` der Name der virtuellen Maschine in der deine Docker-Engine läuft. Sofern du Docker unter Linux verwendest, wird dies anders funktionieren (die Docker-Doku ist dein Freund ;)!

### Verändern des Themes

Etwas umständlicher wird es, wenn du das JavaScript veränderst bzw. es nach erfolgreicher Änderung wieder "minifyen" willst. Was das grundsätzlich bedeutet ist [hier](http://mmistakes.github.io/so-simple-theme/theme-setup/#further-customization) beschrieben. Das Grunt build script sollte übrigens auch ausgeführt werden um die Bilder entsprechend zu komprimieren.

Es gibt viele Images im [Docker-Hub](https://hub.docker.com), die bereits Grunt mitbringen. Allerdings ist das zeitintensivste das Installieren der ganzen Abhängigkeiten für das "so-simple" Theme. Daher verwende ich einfach das offizielle node-Image und führe dann folgende Befehle aus:

```
docker run -it --rm -v "$(pwd)":/src --entrypoint="/bin/bash" node:4.1.1
npm install -g grunt-cli
cd src
npm install
grunt
```

Das dauert einige Zeit, bis alle Abhängigkeiten installiert sind, aber das ist nur einmal nötig, wenn das Verzeichnis frisch von GitHub geklont wurde.
