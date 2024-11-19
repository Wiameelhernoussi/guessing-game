#!/bin/bash

# Fonction pour compter le nombre de fichiers dans le répertoire actuel
function count_files {
    echo $(ls -1 | wc -l)
}

# Nombre de fichiers dans le répertoire actuel
file_count=$(count_files)

echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"

while true; do
    read -p "Votre réponse : " guess

    if [[ $guess -lt $file_count ]]; then
        echo "Trop bas ! Essayez encore."
    elif [[ $guess -gt $file_count ]]; then
        echo "Trop haut ! Essayez encore."
    else
        echo "Félicitations ! Vous avez trouvé le bon nombre de fichiers : $file_count"
        break
    fi
done
