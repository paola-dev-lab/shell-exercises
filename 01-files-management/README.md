# File Organizer shell

Objective: écrire un script shell qui organise automatiquement les fichiers d'un dossier en les classant dans des sous-dossiers selon leurs extension.

## Instructions 

### 1. Créer un programme organize_files.sh qui:


1. Prend en argument un chemin vers un dossier.
  Exemple: ./organise_files.sh ~/downloads

2. Vérifie que :
- un argument est fourni
- que le dossier existe

3. parcourt les fichiers du dossier ayant une extension (*.*)

4. Pour chaque fichier:
- extraire l'extension
- créer un dossier portant cette extension si necessaire
- déplacer le fichier dans le dossier 

5. Aficche les actions effectuées (log minimal)

