#!/bin/bash
#-------------------
#Objecif: analyser l'utilisation du disque d'un dossier et afficher les informations essentielles de manière lisible
#usage ./disk_usage.sh dossier
#------------------

#verifier qu'un argument a été fourni
if [  -z "$1" ] ; then
echo "erreur: aucun dossier n'a pas été spécifié"
echo "usage: ./disk_usage.sh dossier"
exit 1
fi

#verifier que le dossier existe
if [ ! -d  $1 ] ; then
echo "le dossier n'existe pas"
exit 1
fi

#se deplacer dans le dossier
dossier="$1"
cd $1

#afficher la taille totale du dossier
du -sh $1


