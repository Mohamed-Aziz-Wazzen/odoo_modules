#!/bin/bash

MODULE_DIR="/home/azyz/Bureau/odoo_modules/wazzen_module"  # Chemin vers le répertoire de votre module
REQUIRED_FILES=("__manifest__.py" "__init__.py")
REQUIRED_DIRS=("models" "views" "controllers" "security")

# Vérification de l'existence du répertoire du module
if [ ! -d "$MODULE_DIR" ]; then
    echo "Erreur : Le répertoire du module n'existe pas : $MODULE_DIR"
    exit 1
fi

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

