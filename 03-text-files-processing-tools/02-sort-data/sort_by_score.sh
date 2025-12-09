#!/bin/bash
#objectif: trier des lignes d'un fichier non structuré en utilisant la commande sort.
#usage: sort_by_score.sh fichier.ext


#le script prends un fichier en argument
fichier=$1

#vérifier qu'un argument a été donné
if [ -z "$1" ]; then 
echo "aucun fichier n'a pas été specifié"
echo "spécifie un dossier" 
echo "usage: 02-sort-data.sh fichier.ext"
exit 1
fi

#vérifier que le fichier existe
if [ ! -f "$1" ]; then
echo "le fichier n'existe pas"
exit 1
fi

#trier le fichier par valeur numérique croissante sur la colonne 2
sort -n -k2 "$1" 

