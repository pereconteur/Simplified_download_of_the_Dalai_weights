#!/bin/bash

echo "Voulez-vous continuer le script ? (Y/N)"
read choice

if [ "$choice" != "Y" ]; then
  exit 1
fi

# Vérifier si Python est installé et l'installer si nécessaire
if ! command -v python &> /dev/null; then
  echo "Python n'est pas installé, installation en cours..."
  scoop install python
else
  echo "Python est déjà installé"
fi

scoop bucket add versions
scoop install nodejs18

# Vérifier si npm est installé et signaler un problème s'il n'est pas trouvé
if ! command -v npm &> /dev/null; then
  echo "Erreur : npm n'est pas installé, veuillez l'installer"
  exit 1
fi

scoop install npm

# Installer npx avec npm
echo "Installation de npx..."
npm install -g npx
echo "npx a été installé avec succès"



# First choice :
    echo "First choice :"
    echo "1. alpaca"
    echo "2. llama"

    read -n 1 choice

    # Store the choice in a variable
    case $choice in
    1)
        choix="alpaca"
        ;;
    2)
        choix="llama"
        ;;
    *)
        echo -e "\033[31mInvalid choice.\033[0m"
        exit 1
    esac

    echo "You have chosen : $choix"


    # Choose your weight :
    echo "Choose your weight :"
    echo "1. 7B"
    echo "2. 13B"
    echo "3. 30B"
    echo "4. 60B"

    read -n 1 choiceWeight

    # Store the choice in a variable
    case $choice in
    1)
        choix2="7B"
        ;;
    2)
        choix2="13B"
        ;;
    3)
        choix2="30B"
        ;;
    4)
        choix2="60B"
        ;;
    *)
        echo -e "\033[31mInvalid choice.\033[0m"
        exit 1
    esac

    echo "You have chosen : $choix2"

    echo "You are about to download the following weights : $choix $choix2 npx dalai $choix install $choix2"


    npx dalai $choix install $choix2

