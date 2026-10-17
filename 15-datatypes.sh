#!bin/bash

var1=10
var2=20

echo "$var1+$var2"

echo "$(($var1+$var2))" 

declare -i COUNT=5
COUNT=COUNT+1
echo "Count is =$COUNT"


FRUITS=("APPLE" "BANANA" "PAPAYA")
echo "all fruits:${FRUITS[@]}"
echo "first fruits:${FRUITS[0]}"
echo "second fruits:${FRUITS[1]}"
echo "third fruits:${FRUITS[2]}"

name="VenkateswarlG"

echo "${name}omasani"