#!/bin/bash
#Oblig 1 Oppgave 17

for arg in $@; do
./filkontroll.sh "$arg" 60 &
done

wait
echo "Alle filer sendt til kontroll"
