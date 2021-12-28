#!/bin/bash

./LoopInterPage.sh $1

count=2

while [  $(curl -s -I "$1?p=$count" 2>/dev/null | head -n 1 | cut -d ' ' -f2) -eq 200 ]; do
   echo "Adresse: $1?p=$count est valide"
   ./LoopInterPage.sh "$1?p=$count"
   let count=count+1
done
