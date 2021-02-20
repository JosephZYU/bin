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
echo $'\n'$"Completed Personal bash settings!"
