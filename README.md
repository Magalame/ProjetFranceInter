# ProjetFranceInter

## Téléchargement


On commence par créer un dossier, sinon les fichiers vont se mélanger aux autres au même endroit:

`mkdir ProjetFranceInter`

Puis on y rentre:

`cd ProjetFranceInter`

Puis, pour télécharger le .tar (recommendé):

`wget https://github.com/Magalame/ProjetFranceInter/raw/master/ProjetFranceInter.tar`

`tar -xvf ProjetFranceInter.tar`

On rend les scripts executables:

`chmod +x capt.sh LoopInterPage.sh EmissionEntiereInter.sh`

Pour ceux qui le souhaite, il y a aussi un .zip, mais c'est moins pratique sous unix:

`https://github.com/Magalame/ProjetFranceInter/raw/master/ProjetFranceInter.zip`


## Utilisation

Les trois scripts permettent de télécharger trois types de contenus différent:

### capt.sh
Permet de télécharger **une émission d'un programme**. Par exemple pour télécharger [l'émission du 1er décembre de La tête au carré](https://www.franceinter.fr/emissions/la-tete-au-carre/la-tete-au-carre-01-decembre-2017), taper:

`./capt.sh https://www.franceinter.fr/emissions/la-tete-au-carre/la-tete-au-carre-01-decembre-2017`

### LoopInterPage.sh
Permet de télécharger **une page entière d'un programme**, tel qu'[ici](https://www.franceinter.fr/emissions/la-tete-au-carre), [là](https://www.franceinter.fr/emissions/la-tete-au-carre?p=2), ou [là](https://www.franceinter.fr/emissions/la-tete-au-carre?p=3)

Ce qui donne, par exemple pour la troisième page de La tête au carré:

`./LoopInterPage.sh https://www.franceinter.fr/emissions/la-tete-au-carre?p=3`

### EmissionEntiereInter.sh

Permet de télécharger **un programme entier** à partir de la première page de l'émission. Par exemple [ici](https://www.franceinter.fr/emissions/la-tete-au-carre), [là](https://www.franceinter.fr/emissions/la-marche-de-l-histoire), [là](https://www.franceinter.fr/emissions/le-masque-et-la-plume), et [là](https://www.franceinter.fr/emissions/la-bande-originale).

Ainsi, pour Le masque et la plume:

`./EmissionEntiereInter.sh https://www.franceinter.fr/emissions/le-masque-et-la-plume`

-----------------------------------------------------

# Download

Let's start by creating a folder as there are several files:

`mkdir ProjetFranceInter`

`cd ProjetFranceInter`

Then download them

`wget https://github.com/Magalame/ProjetFranceInter/raw/master/ProjetFranceInter.tar`

`tar -xvf ProjetFranceInter.tar`

Make them executable:

`chmod +x capt.sh LoopInterPage.sh EmissionEntiereInter.sh`

You can also get the zip version if you want:

`wget https://github.com/Magalame/ProjetFranceInter/raw/master/ProjetFranceInter.zip`

## Use

The three scripts allows you to download three different types of content:

### capt.sh

Downloads one podcast of a program. For example [that one](https://www.franceinter.fr/emissions/la-tete-au-carre/la-tete-au-carre-01-decembre-2017):

`./capt.sh https://www.franceinter.fr/emissions/la-tete-au-carre/la-tete-au-carre-01-decembre-2017`

### LoopInterPage.sh

Downloads all the podcasts on a same webpage, for example [this whole page](https://www.franceinter.fr/emissions/la-tete-au-carre?p=3):

`./LoopInterPage.sh https://www.franceinter.fr/emissions/la-tete-au-carre?p=3`

### EmissionEntiereInter.sh

Downloads the whole program from the url of the first page. For example [here](https://www.franceinter.fr/emissions/la-tete-au-carre), [here](https://www.franceinter.fr/emissions/la-marche-de-l-histoire), [here](https://www.franceinter.fr/emissions/le-masque-et-la-plume), and [there](https://www.franceinter.fr/emissions/la-bande-originale). Which could give:

`./EmissionEntiereInter.sh https://www.franceinter.fr/emissions/le-masque-et-la-plume`
