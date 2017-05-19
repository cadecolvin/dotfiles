#!/usr/bin/env bash

# Author: Cade Colvin
# Installs basic programs if needed
# then deploys dotfiles

# Check for and install OhMyZsh
if [ ! -d "~/.oh-my-zsh" ]; then
  echo -n "Installing Oh-My-Zsh..." 
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  echo "done"
fi

# Check for and install Vundle and Vim plugins
if [ ! -d "~/.vim/bundle" ]; then
  echo -n "Installing Vundle..."
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  echo "done"
  echo -n "Installing Vim Plugins..."
  vim +PluginInstall +qall
  echo "done"
fi

dotfiles=$PWD
backup=$dotfiles/bak
files="bashrc bash_profile gitconfig Xmodmap Xresources vimrc zshrc"

echo -n "Creating $backup directory for current dotfiles."
mkdir -p $backup
echo "done"

for file in $files; do
    echo -n "Moving $file to $backup"
    mv ~/.$file $backup/
    echo "done"

    echo -n "Creating symlink to $file"
    ln -fs $dotfiles/$file ~/.$file
    echo "done"
done
