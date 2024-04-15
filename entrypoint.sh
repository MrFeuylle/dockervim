#!/bin/bash

if ! command -v nvim &> /dev/null
then
    echo "Neovim n'est pas installé. Veuillez l'installer pour continuer."
    exit 1
fi

nvim -c "PlugInstall | qall" -c "PlugUpdate | qall"
nvim /root/project