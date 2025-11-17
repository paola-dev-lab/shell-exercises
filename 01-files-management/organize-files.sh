#1/bin/bash
#--------------------------------
#objectif: ranger les fichier d'un dossier par extension
#usage : ./organize_files.sh /chemin/vers/dossier
#--------------------------------

#verifier qu'un argument a été donné
if
[ -z "$1" ]; then
echo "Erreur: tu dois specifier un dossier"
echo "usage : organize-files.sh /chemin/vers/dossier"
exit 1
fi

#verifier que le dossier existe
dossier = "$1"

if [ ! -d "$1" ];
then echo " Erreur : le dossier "$1" n'existe pas"
exit 1
fi

