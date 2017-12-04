# ProjetFranceInter

Les trois scripts permettent de télécharger trois types de contenus différent:

* capt.sh
Permet de télécharger une émission d'un programme. Par exemple pour télécharger [l'émission du 1er décembre de La tête au carré](https://www.franceinter.fr/emissions/la-tete-au-carre/la-tete-au-carre-01-decembre-2017), taper:

`./capt.sh https://www.franceinter.fr/emissions/la-tete-au-carre/la-tete-au-carre-01-decembre-2017`

* LoopInterPage.sh
Permet de télécharger une page entière d'un programme, tel qu'[ici](https://www.franceinter.fr/emissions/la-tete-au-carre), [là](https://www.franceinter.fr/emissions/la-tete-au-carre?p=2), ou [là](https://www.franceinter.fr/emissions/la-tete-au-carre?p=3)

Ce qui donne, par exemple pour la troisième page de La tête au carré:

`./LoopInterPage.sh https://www.franceinter.fr/emissions/la-tete-au-carre?p=3`

* EmissionEntiere.sh

Permet de télécharger une émission entière à partir de la première page de l'émission. Par exemple [ici](https://www.franceinter.fr/emissions/la-tete-au-carre), [là](https://www.franceinter.fr/emissions/la-marche-de-l-histoire), [là](https://www.franceinter.fr/emissions/le-masque-et-la-plume), et [là](https://www.franceinter.fr/emissions/la-bande-originale).

Ainsi, pour Le masque et la plume:

`./EmissionEntiere.sh https://www.franceinter.fr/emissions/le-masque-et-la-plume`
