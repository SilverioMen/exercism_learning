#!/usr/bin/env bash

# Fonction pour inverser une chaîne
inverser_chaine() {
    local chaine="$1"
    local chaine_inversee=""

    # Boucle pour inverser la chaîne
    for (( i=${#chaine}-1; i>=0; i-- )); do
        chaine_inversee+="${chaine:i:1}"
    done

    echo "$chaine_inversee"
}

# Fonction principale
main() {
    if [ $# -eq 0 ]; then
        exit 0  # Si aucun argument n'est fourni, ne rien faire (pour le test d'une chaîne vide)
    fi

    for chaine in "$@"; do
        # Inverser et afficher uniquement la chaîne inversée
        inverser_chaine "$chaine"
    done
}

# Appel de la fonction principale avec tous les arguments
main "$@"
