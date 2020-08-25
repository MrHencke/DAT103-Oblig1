#!/usr/bin/env bash

filename=$1
secs=$2

timenow=$(date +%s)

echo "Kjører filkontroll for $1 hvert $2 sekund"

if [-f "$filename"]; then
# Slettet fil/Endret fil