default:
    just --list

hello:
    echo "Hello world"

# Créer un repo git de A à Z
create-git nom_dossier url_distant:
    #!/usr/bin/env bash
    # 1. Création du dossier et déplacement dedans
    mkdir -p {{nom_dossier}}
    cd {{nom_dossier}}
    
    # 2. Initialisation et premier commit
    git init
    git branch -M main
    touch README.md
    git add README.md
    git commit -m "Initial commit"
    
    # 3. Liaison avec le dépôt distant et push
    git remote add origin {{url_distant}}
    git push -u origin main

# Initialise un repo git dans le dossier
init:
    git init

# Affiche l'état du repo git
status:
    git status

# Ajouter un fichier saisi dans un repo git
add nom_fichier:
    git add {{nom_fichier}}

# Ajouter tous les fichiers dans un repo git
add-all:
    git add .

# Commit dans un repo git
commit message:
    git commit "{{message}}"

# Afficher les logs d'un repo git
log:
    git log

# Supprimer fichier
clean nom_fichier:
    rm -f {{nom_fichier}}

# SQL

# Créer une database mySql
sql identifiant mdp nom:
    mysql -u {{identifiant}} -p'{{mdp}}' -e "CREATE DATABASE IF NOT EXISTS \`{{nom}}\`;"