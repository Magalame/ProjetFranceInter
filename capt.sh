#!/bin/bash

if [ ! -d "work" ]; then
  mkdir work
fi
cd work
rm -f *
wget -q -O html_page $1

echo "Adresse recue par capt.sh:$1"

nom_pod=$(echo "$1" | cut -f 6 -d "/")

echo "-----------------------------------------------------------------------"

echo "Nom html podcast:" $nom_pod

echo "-----------------------------------------------------------------------"

cat html_page | grep "$nom_pod" | grep "title" | head -n 1 | awk -F '<title>' '{print $2}' | awk -F '</title>' '{print $1}' | sed 's/&#039;/'\''/g' | sed 's/[/]/-/g' | sed 's/[(?]//g' | sed 's/)//g' | sed 's/:/;/g' | sed 's/&quot;/"/g' > nom_entier_pod

nom_entier_pod_var=$(cat nom_entier_pod)

echo "Nom entier du podcast:" $nom_entier_pod_var

echo "-----------------------------------------------------------------------"

cat html_page | grep "data-url" | grep ".mp3" | sed 's/"/\n/g' | grep ".mp3" | head -n 1 > url
url_var=$(cat url)

echo "Url var:" $url_var
echo "-----------------------------------------------------------------------"

nom_prog_html_var=$(echo "$1" | cut -f 5 -d "/")

echo "Nom prog html: $nom_prog_html_var"
set=$(echo "$nom_prog_html_var\">")

echo "-----------------------------------------------------------------------"
cat html_page | grep "$nom_prog_html_var" | awk -F "$set" '{print $2}' | awk -F '</a>' '{print $1}' | uniq | head -n 2 | tail -n 1 | sed 's/&#039;/'\''/g' | sed 's/[/]/-/g' | sed 's/[?(]//g' | sed 's/)//g' | sed 's/:/;/g' | sed 's/&quot;/"/g' > nom_prog

nom_prog=$(cat nom_prog)

echo "Nom du programme:" $nom_prog
echo "-----------------------------------------------------------------------"

cd ../

IFS="-"; arr=($1); unset IFS;
length=${#arr[@]}
annee=${arr[length-1]}
mois=${arr[length-2]}
jour=${arr[length-3]}

nom_final="$nom_prog - $nom_entier_pod_var [$jour $mois $annee].mp3"

echo "Nom du fichier:" "$nom_final"

echo "-----------------------------------------------------------------------"

rm -R work

if [ "$2" = "-y" ]; then

if [ ! -d "/mnt/d/Radio/$nom_prog" ]; then
mkdir "/mnt/d/Radio/$nom_prog"
fi

cd "/mnt/d/Radio/$nom_prog"

if [ -f "$nom_final" ]; then

echo "Le fichier existe déjà sous le nom: $nom_final"
exit

fi

wget -O "$nom_final" $url_var

fi

if [ "$2" != "-y" ]; then

if [ -f "$nom_final" ]; then

echo "Le fichier existe déjà sous le nom: $nom_final"
exit

fi

wget -O "$nom_final" $url_var

fi

#id3tool -t $nom_entier_pod_var -a $nom_prog -Y $annee $nom_final
eyeD3 -2 --set-encoding=utf16-BE -t "$nom_entier_pod_var" -A "$nom_prog" -Y "$annee" "$nom_final"
