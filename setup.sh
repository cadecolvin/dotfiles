#!/bin/bash

###############################################
# Creates the symlinks from the home directory to the dotfiles directory
###############################################

dotfiles=~/dotfiles
dotfilesBackup=~/dotfiles_bak
files="bashrc bash_profile gitconfig vimrc zshrc"

echo "Creating $dotfilesBackup directory to backup current dotfiles."
mkdir -p $dotfilesBackup
echo "...done"

echo "Changing to the $dotfiles directory"
cd $dotfiles
echo "...done"

for file in $files; do
    echo "Moving $file to $dotfilesBackup"
    mv ~/.$file $dotfilesBackup/
    echo "...done"

    echo "Creating symlink to $file"
    ln -s $dotfiles/$file ~/.$file
    echo "...done"
done
