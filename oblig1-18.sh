#!/usr/bin/env bash

declare -i sum=0
declare -i number
while read -p "Number? " number
do
	(( sum+=number ))
	done
echo "The sum is $sum."