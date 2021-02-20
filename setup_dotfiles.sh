#!/bin/bash

# A very simple script to setup on personal settings from GitHub.
# By Joseph Yu. (https://github.com/JosephZYU/General Public License version 2.0)

cd ~
clear

git clone https://github.com/JosephZYU/dotfiles.git
echo "Downloaded dotfiles from GitHub"

cd dotfiles/
chmod +x install.sh

./install.sh /home/josephyu
echo $'\n'$"Completed Personal bash settings!"