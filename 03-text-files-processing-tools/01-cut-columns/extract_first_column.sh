#!/bin/bash
# objectif : extraire la première colonne d'un fichier texte
# usage : ./extract_first_column.sh fichier.txt

# vérifier qu'un argument est fourni
if [ -z "$1" ]; then
echo "aucun argument n'a été fourni"
echo "usage : extract_first_column fichier"
exit 1
fi

# Trouver le chemin absolu du fichier - Bonus : permet d'executer le programme depuis n'importe quel dossier
fichier=$(readlink -f "$1")

# vérifier que le fichier existe
if [ ! -f "$fichier" ]; then
echo "le fichier n'existe pas" : $fichier"
exit 1
fi

#extraire la première colonne du fichier texte et affichage propre
cut -d, -f1 -s  "$fichier"
