#!/bin/bash
#Objectif: calculer une valeur utilisant la commande awk.
#usage: sum_column.sh fichier

#vérifier qu'un argument a été donné
if [ -z "$1" ]; then
echo "aucun fichier n'a été indiqué"
echo "indique un fichier"
echo "usage: sum_column.sh fichier"
exit 1
fi

#vérifier que le fichier existe
if [ ! -f "$1" ]; then
echo "le fichier n'existe pas"
exit 1
fi

#déclaration de la variable
fichier=$1

#lire la huitème colonne d'un fichier contenant de nombres en filtrant uniquement les valeur avec de nombres
awk -F "," '$8 ~ /^[0-9]+$/ { total += $8 } END { print total }' $fichier


#commande alternative en utilisant un pipe : awk -F "," '$8 ~ /^[0-9]+$/ { print $8 }' "$fichier" | awk '{ total += $1 } END { print total }'

#sortie
exit 0