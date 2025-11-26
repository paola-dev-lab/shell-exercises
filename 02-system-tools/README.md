# System Tools : Analyse d’utilisation du disque
---
Objectif: écrire un script shell qui analyse l'utilisation du disque d'un dossier et affiche les informations essentielles de manière lisible.

## Instructions

### Créer un programme disk_usage.sh : 
----
1. Le script doit prendre en argument un dossier à analyser.
Exemple d'usage: ./disk_usage.sh dossier

2. Verifier  que:
   - Si aucun argument n'est fourni, afficher un mesagge d'érreur.
   - Si le dossier n'existe pas, affiche un message d'erreur propre.

Le script doit afficher:

4. La taille totale du dossier (commande du style du -sh)

5. Les 5 fichiers les plus lourdes (tri décroissant, format lisible)

6. L'espace utilise et libre sur la partition (commande du style df -h sur la partition du dossier)

7. Le script doit organiser l'affichage avec:
   - Titres clairs
   - Valeurs alignées
   - Lignes de séparation (---)

Le script ne doit pas planter si :
   - Il rencontre des fichiers illisibles
   - Des permissions sont restreintes
   - Le dossier contient beaucoup d'éléments

⭐ Compétences visées

   - Utilisation d’outils Shell système (du, df, sort, head)
   - Gestion des arguments & erreurs ($#, [ -d ])
   - Manipulation de pipelines
   - Formatage de sortie
   - Compréhension de l’arborescence & système de fichiers
   - Analyse de performance / charges disque
