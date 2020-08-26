#!/bin/bash
loggfilnavn=$1
oldIFS=$IFS
IFS=$'\n'
echo "Skriv inn hendelse:"
read hendelse
loggfil=($(cat $loggfilnavn | grep $hendelse))
IFS=$oldIFS
sum=0
for linje in "${loggfil[@]}"
do
    delt=($linje)
    antall=$(echo ${delt[1]} | tr -d '[[:space:]]')
    sum=$((sum + antall))
done
echo $sum