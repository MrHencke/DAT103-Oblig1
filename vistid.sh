#!/usr/bin/env bash
#Oblig 1 Oppgave 19

sum=0
loggfil=$1
read -p "Skriv inn en hendelse " hend
out="$(grep -i "$hend" "$loggfil" | cut -f2 -d$'\t')"
for i in $out
do ((sum+=i))
done
echo "Summen er: " $sum
