#!/bin/bash
############################
# This script creates symlinks from the home directory to any desired dotfiles in ${homedir}/dotfiles
# And also installs apt Packages
# And sets VSCode preferences
############################

cd ~
clear

git clone https://github.com/JosephZYU/dotfiles.git
echo $'\n'$"Downloaded dotfiles from GitHub"

echo "###########################"
echo "# JOSEPH'S DOTFILES SETUP #"
echo "###########################"

if [ "$#" -ne 1 ]; then
    echo "Usage: install.sh <home_directory>"
    exit 1
fi

homedir=$1

# dotfiles directory
dotfiledir=${homedir}/dotfiles

# list of files/folders to symlink in ${homedir} # private
files="aliases bash_profile bash_prompt bashrc"

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}
echo "...done"

# create symlinks (will overwrite old dotfiles)
for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    ln -sf ${dotfiledir}/.${file} ${homedir}/.${file}
done

# Download Git Auto-Completion
curl "https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash" > ${homedir}/.git-completion.bash

# Run the apt Script
apt.sh

echo $'\n'$"Completed Personal settings!"

echo "#########################"
echo "#  YOU'RE READY TO GO!  #"
echo "#########################"

# Run the VSCode Script
# ./vscode.sh
