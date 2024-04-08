#!/bin/bash

# Chemin vers le répertoire du script
SCRIPT_DIR="$(dirname "$0")"
MODULE_DIR="$SCRIPT_DIR"  # Le répertoire du script est également le répertoire du module
REQUIRED_FILES=("__manifest__.py" "__init__.py")
REQUIRED_DIRS=("models" "views" "controllers" "security")

# Vérification de l'existence des fichiers requis
for file in "${REQUIRED_FILES[@]}"; do
    if [ ! -f "$MODULE_DIR/$file" ]; then
        echo "Erreur : Le fichier requis $file n'existe pas dans le répertoire du module."
        exit 1
    fi
done

# Vérification de l'existence des dossiers requis
for dir in "${REQUIRED_DIRS[@]}"; do
    if [ ! -d "$MODULE_DIR/$dir" ]; then
        echo "Erreur : Le dossier requis $dir n'existe pas dans le répertoire du module."
        exit 1
    fi
done

echo "La structure du module est conforme."


