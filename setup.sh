#!/usr/bin/env bash
###############################################
# Creates the symlinks from the home directory to the dotfiles directory
###############################################

dotfiles=~/dotfiles
backup=$dotfiles/bak
files="bashrc bash_profile gitconfig Xresources vimrc zshrc"

echo "Creating $backup directory to backup current dotfiles."
mkdir -p $backup
echo "...done"

for file in $files; do
    echo "Moving $file to $backup"
    mv ~/.$file $backup/
    echo "...done"

    echo "Creating symlink to $file"
    ln -fs $dotfiles/$file ~/.$file
    echo "...done"
done
