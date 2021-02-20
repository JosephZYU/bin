#!/bin/bash

# Custom-script to install eseential Pip and Venv for Ubuntu 20.04.
# By Joseph Yu. (https://github.com/JosephZYU/)
# GNU General Public License v3.0

# apt list --installed

# Options -y -q
# https://manpages.ubuntu.com/manpages/trusty/en/man8/apt-get.8.html#options:~:text=OPTIONS,-All

cd ~
clear

# Set BASH to quit script and exit on errors:
set -e

# Functions:

up() {

echo "Starting full system update..."
sudo apt update -yq
sudo apt full-upgrade -yq
echo $'\n'$"Completed Initial Update and Upgrade"$'\n'

}

install() {

echo "Starting installation for pip, venv, pipenv..."
sudo apt install -y python3-venv
sudo apt install -y pipenv
echo $'\n'$"Completed installation pip, venv, pipenv for Ubuntu 20.04"$'\n'

}


# INSTALL
# sudo apt install -y python3-pip

# REMOVE
# sudo apt purge -y $package
# sudo apt purge -y python3-venv

# LIST
# apt list $package
# apt list --installed $package
# apt list --installed python3*
# apt list --installed python3-venv


clean() {

echo "Removing apt cache packages that can no longer be downloaded..."
sudo apt autoclean

}

remove() {

echo "Removing orpahned packages..."
sudo apt autoremove -y

}

leave() {

echo "--------------------------------"
echo "- Environment setup completed! -"
echo "--------------------------------"
exit

}


# Check for tree and install if needed:
dpkg -l | grep -qw tree || sudo apt install tree -yyq
echo $'\n'$"Installed tree"

# Check for mlocate and install if needed:
# dpkg -l | grep -qw mlocate || sudo apt install mlocate -yyq
# echo $'\n'$"Installed mlocate to enable locate search"
