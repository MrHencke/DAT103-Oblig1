#!/bin/bash

filename=$1
secs=$2

timenow=$(date +%s)

echo "Kjører filkontroll for $filename hvert $secs sekund"

if [[ -f "$filename" ]]; then
    # Slettet fil/Endret fil
    while sleep $secs; 
    do
        if [ ! -f "$filename" ]; then
            echo "Filen $1 ble slettet."
            exit
        fi

        if [[ $(stat -c %Y $filename) -gt $timeNow ]]; then
            echo "Filen $1 ble endret."
            exit 
        fi
    done

else
    #Filen ble opprettet
    while sleep $secs; 
    do
        if [[ -f "$filename" ]]; then
            echo "Filen $1 ble opprettet."
            exit
        fi
    done
fi