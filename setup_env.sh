#!/bin/bash

# Custom-script to install eseential Pip and Venv for Ubuntu 20.04.
# By Joseph Yu. (https://github.com/JosephZYU/)
# GNU General Public License v3.0

cd ~
clear

# Set BASH to quit script and exit on errors:
set -e

# Functions:

up2() {

echo "Starting full system update..."
sudo apt -y update
sudo apt full-upgrade -yy
echo $'\n'$"Completed Initial Update and Upgrade"$'\n'

}

install() {

echo "Starting installation for pip, venv, pipenv..."
sudo apt -y install python3-pip
sudo apt -y install python3-venv
sudo pip3 install pipenv
echo $'\n'$"Completed installation pip, venv, pipenv for Ubuntu 20.04"$'\n'

}

clean() {

echo "Removing apt cache packages that can no longer be downloaded..."
sudo apt autoclean

}

remove() {

echo "Removing orpahned packages..."
sudo apt autoremove -yy

}

leave() {

echo "--------------------------------"
echo "- Environment setup completed! -"
echo "--------------------------------"
exit

}


# sudo apt -y update && sudo apt -y upgrade
# echo "Completed Initial Update and Upgrade"

# sudo apt -y install python3-pip
# sudo apt -y install python3-venv
# sudo pip3 install pipenv
# echo $'\n'$"Install Pip and Venv for Ubuntu 20.04"

# Check for tree and install if needed:
dpkg -l | grep -qw tree || sudo apt install tree -yyq
echo $'\n'$"Installed tree"

# Check for mlocate and install if needed:
# dpkg -l | grep -qw mlocate || sudo apt install mlocate -yyq
# echo $'\n'$"Installed mlocate to enable locate search"
