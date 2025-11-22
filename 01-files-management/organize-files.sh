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

# se deplacer dans le dossier pour travailler proprement

dossier ="$1"

cd $1

# parcourir tous les fichiers

for fichier in *.*; do 

# verifier que ce n'est pas un dossier

if [ -f " $fichier" ] ; then

#extraccion de l'extension 
extension="${fichier##*.}"

#creer un dossier avec le nom de l'extension si pas encore existant
mkdir -p "$extension"

#deplacer le fichier dans le dossier correspondant
mv "$fichier" "$extension/"

echo "$fichier déplacé dans $extension/"

fi
done


