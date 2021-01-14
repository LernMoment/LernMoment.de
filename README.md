# LernMoment.de

Hier findest du die kompletten Quellen für den Blog [LernMoment.de](https://www.lernmoment.de). Wie auf der Seite [Kein Copyright](kein-copyright/index.md) beschrieben, ist alles in diesem Blog ohne ein Copyright [CC0 - Creative Commons Zero](https://creativecommons.org/publicdomain/zero/1.0/deed.de). Das ist jedoch auf die Texte und Bilder begrenzt, die von mir für den Blog erstellt wurden.
Das Theme [So Simple - von Michael Rose](https://github.com/mmistakes/so-simple-theme) verwendet die [MIT - Lizenz](LICENSE).

## Übersetzen mit Docker

Ich persönlich bin absoluter Fan von [Docker](https://www.docker.com). Daher kann bzw. wird dieser Blog von mir mit einem [Jekyll-Container](https://github.com/envygeeks/jekyll-docker) übersetzt. Grundsätzlich kann natürlich auch jedes andere jekyll Image benutzt werden.

### Lokales Übersetzen 

Beim schreiben wie auch dem Anpassen des Themes ist es natürlich hilfreich, wenn die Änderungen lokal betrachtet werden können, ohne das jedesmal alles auf dem Server delopyed werden muss. Dazu bringt Jekyll seinen eignen Server mit. Bevor dieser verwendet werden kann, muss jedoch erstmal der Container mit Docker gestartet werden. Dazu wird folgender Befehl im "Root-Verzeichnis" des Blogs ausgeführt:

```
docker run --rm --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" -p 4000:4000 -it jekyll/jekyll:4.2.0 jekyll serve --host 0.0.0.0 --config _config.yml,_config-devenv.yml --no-watch
```

Dabei wird mit `--volume="$PWD:/srv/jekyll"` das aktuelle Verzeichnis des Hosts (also dort wohin du das LernMoment.de - GitHub Projekt geklont hast) in den Container unter `/src` gemountet. Auch die Verwendung der beiden Umgebungsvariablen `-e "TZ=Europe/Berlin" -e "LANG=C.UTF-8"` ist für Jekyll sehr wichtig. Ansonsten kann es vorkommen, dass durch Unterschiede in der Zeitzone ein Artikel momentan noch nicht veröffentlicht wird, oder das es Probleme gibt, weil kein UTF8 eingestellt ist.

Mithilfe von `--volume="$PWD/vendor/bundle:/usr/local/bundle"` wird ein Caching von zusätzlichen *Gems* erreicht. Momentan ist es jedoch so, dass die im Image vorhandenen *Gems* für die Seite ausreichen. Daher ist das *volume* nur als Sicherheit gedacht, falls zukünftig andere *Gems* verwendet werden die nicht im image sind. Weitere Informationen dazu sind [hier](https://github.com/envygeeks/jekyll-docker#caching) zu finden.

Damit du dich auch von deinem Host per Browser gegen den Jekyll-Server im Container verbinden kannst, brauchst du noch die entsprechende Portfreigabe `-p 4000:4000`.

Der "zweite Teil" des Kommandos, also:

```
jekyll serve --host 0.0.0.0 --config _config.yml,_config-devenv.yml --no-watch
```

sagt, dass im Container der Server gestartet werden soll den *Jekyll* mitbringt.

Dabei ist insbesondere wichtig, dass beide Konfigurationsdateien verwendet werden: `--config _config.yml,_config-devenv.yml`. In der `_config.yml` sind alle Einstellungen, die für die Produktionsumgebung verwendet werden. Dadurch, dass `_config-devenv.yml` als weitere Konfigurationsdatei geladen wird, werden insbesondere die Domäne überschrieben und somit ist es nun möglich auf deinem Host einen Browser zu starten und die laufende Seite per `http://0.0.0.0:4000` anzuschauen.

*ACHTUNG:* Ich verwende [Dock for Mac](https://docs.docker.com/docker-for-mac/) und dafür funktioniert die angegebene IP. Falls du den Container anders ausführst, musst du die IP-Adresse vielleicht anpassen.

### Update der Gems

Wie [hier](https://github.com/envygeeks/jekyll-docker#dependencies) beschrieben sind einige "Dependencies" direkt in das Image integriert. Damit entfällt die Notwendigkeit eines `bundle install` beim Starten. Um eine neuere Version von *Jekyll* und den anderen *Gems* zu verwenden reicht es aus eine neue Version des Images zu verwenden. Im Aufruf oben habe ich `jekyll/jekyll:4.2.0` verwendet. Hier reicht es aus die Versionsnummer entsprechend den Informationen [hier](https://hub.docker.com/r/jekyll/jekyll/tags?page=1&ordering=last_updated) anzupassen.

Bei Bedarf kann ein manuelles Update mit folgendem Befehl ausgeführt werden:

```
docker run --rm --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" -p 4000:4000 -it jekyll/jekyll:4.2.0 bundle update
```

Dadurch werden alle benötigten *Gems* (wie in `Gemfile` angegeben) auf die aktuelleste Version gebracht. Die neuen Versionen werden dann durch die Verwendung des Volumes `--volume="$PWD/vendor/bundle:/usr/local/bundle"` lokal auf der Platte gespeichert. Dieses erfolgt zusätzlich zu den bereits im Image entahltenen *Gems*.

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
