#!/usr/bin/env bash
#Oblig 1 Oppgave 18

declare -i sum=0
declare -i number
while read -p "Number? " number
do
	(( sum+=number ))
	done
echo "The sum is $sum."