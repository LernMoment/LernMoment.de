#!/bin/bash
# Skript zum Deployment von LernMoment.de per launchd

# Shell für Docker vorbereiten
eval $(/usr/local/bin/docker-machine env default)

cd /Users/developer/Development/blogs/LernMoment.de

. deployment/deploy.sh staging
. deployment/deploy.sh production
