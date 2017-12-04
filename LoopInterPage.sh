#!/bin/bash

if [ ! -d "work" ]; then
  mkdir work
fi
cd work
rm -f *
wget -q -O html_page $1

nom_prog_html=$(echo "$1" | cut -f 5 -d "/" | cut -f 1 -d "?")

nom_racine=$(echo "$1" | cut -f 3 -d "/")

echo "-----------------------------------------------------------------------"

echo "Nom racine:" $nom_racine

echo "-----------------------------------------------------------------------"

echo "Nom html emission:" $nom_prog_html

echo "-----------------------------------------------------------------------"

nom_emission_html="/emissions/"$nom_prog_html"/"

echo "List:"

cat html_page | grep $nom_prog_html | tr '[<>="]' "\n" | grep $nom_emission_html | uniq > liste
mv liste ../liste
cd ../

rm -R work

cat liste | while read ligne
do

un=http://$nom_racine$ligne
echo "Adresse:" $un

./capt.sh $un -y

done
rm -f liste
