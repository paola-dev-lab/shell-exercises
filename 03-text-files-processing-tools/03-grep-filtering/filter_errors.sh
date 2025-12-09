#!/bin/bash
#objectif: creer un  fichier qui filtre les lignes contenant le mot erreur
#usage: filter_errors.sh

#déclaration de la variable fichier
fichier="$1"

#verifier qu'un argument a été fourni / Prendre un fichier .log en argument
if [ -z "$1" ]; then
echo "aucun fichier n'a été spécifié"
echo "indiquez le fichier a filtrer"
echo "usage: filter_errors.sh"
exit 1
fi

#vérifier que le fichier existe
if [ ! -f "$1" ]; then 
echo "le fichier n'existe pas"
exit 1
fi 

#afficher les lignes contenant le mot "error" et ignore la casse
grep -i error "$1"

#sortie indicant un fonctionnement correct du script
sortie 1


