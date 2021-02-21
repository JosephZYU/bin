#!/bin/bash

# A very simple script to set up personal settings from GitHub.
# By Joseph Yu. (https://github.com/JosephZYU/)
# GNU General Public License v3.0

cd ~
clear

git clone https://github.com/JosephZYU/dotfiles.git
echo "Downloaded dotfiles from GitHub"

cd dotfiles/
# chmod +x install.sh

./install.sh $HOME
echo $'\n'$"Completed Personal settings!"

echo "#######################"
echo "  YOU'RE READY TO GO!  "
echo "#######################"

# NOTE: Must include the $HOME as an input argument (variable)
# ./install.sh $HOME

# if [ "$#" -ne 1 ]; then
#     echo "Usage: install.sh <home_directory>"
#     exit 1
# fi

# homedir=$1
