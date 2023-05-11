#!/bin/bash

# Ask the user if they allow downloads
read -p "Before starting, do you allow \033[32mHomebrew, Node.js and npx\033[0m to be downloaded? \n(Y/N)" response

if [[ "$response" =~ ^[Yy]$ ]]; then

    # Check if Homebrew is installed
    if ! command -v brew &> /dev/null
    then
        echo -e "\033[31mHomebrew is not installed.\033[0m Installation in progress..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        echo -e "\033[32mHomebrew is already installed.\033[0m"
    fi

    # Vérifier si Node.js est installé
    if ! command -v node &> /dev/null
    then
        echo -e "\033[31mNode.js is not installed.\033[0m Installation in progress..."
        brew install node
    elif ! node -v | grep -q "v18\."
    then
        echo -e "\033[31mNode.js version 18 or higher is not installed.\033[0m Installation in progress..."
        brew upgrade node
    else
        echo -e "\033[32mNode.js version 18 or higher is already installed.\033[0m"
    fi


    # Vérifier si npx est installé
    if ! command -v npx &> /dev/null
    then
        echo -e "\033[31mnpx is not installed.\033[0m Installation en cours..."
        npm install -g npx
    else
        echo -e "\033[32mnpx is already installed.\033[0m"
    fi


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

    echo "You are about to download the following weights : $choix $choix2"


    npx dalai $choix install $choix2

else
  echo -e "\033[31mAutorisation refusée. Le script s'arrête.\033[0m"
  exit 1
fi
