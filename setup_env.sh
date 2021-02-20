#!/bin/bash

# A very simple script to install eseential Pip and Venv for Ubuntu 20.04.
# By Joseph Yu. (https://github.com/JosephZYU/General Public License version 2.0)

cd ~
clear

sudo apt -y update && sudo apt -y upgrade
echo "Completed Initial Update and Upgrade"

sudo apt -y install python3-pip
sudo apt -y install python3-venv
sudo pip3 install pipenv
echo $'\n'$"Install Pip and Venv for Ubuntu 20.04"

# Check for mlocate and install if needed:
dpkg -l | grep -qw tree || sudo apt install tree -yyq
echo $'\n'$"Installed tree"

# Check for mlocate and install if needed:
dpkg -l | grep -qw mlocate || sudo apt install mlocate -yyq
echo $'\n'$"Installed mlocate to enable locate search"

echo $'\n'$"COMPLETED insatllations for Pip and Venv!"
