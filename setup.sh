#!/usr/bin/env bash

# Author: Cade Colvin
# Installs basic programs if needed
# then deploys dotfiles


# Install OhMyZsh
echo "Installing Oh-My-Zsh..." 
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -o install_omz.sh
chmod 755 install_omz.sh
exit | ( ./install_omz.sh > /dev/null )
rm install_omz.sh
echo "done!"

# Copying in my custom oh-my-zsh theme
echo -n "Creating symlink to oh-my-zsh theme..."
mkdir -p ~/.oh-my-zsh/custom/themes
cp $dotfiles/cadecolvin.zsh-theme ~/.oh-my-zsh/custom/themes/cadecolvin.zsh-theme
echo "done!"


# Symlink to all dotfiles in package
dotfiles=$PWD
backup=$dotfiles/bak
files="bashrc bash_profile gitconfig xinitrc Xmodmap Xresources vimrc zprofile zshrc"

echo -n "Creating $backup directory for current dotfiles."
mkdir -p $backup
echo "done"

for file in $files; do
    if [ -f $file ]; then
        echo -n "Moving $file to $backup..."
        mv ~/.$file $backup/
        echo "done!"
    fi

    echo -n "Creating symlink to $file..."
    ln -fs $dotfiles/$file ~/.$file
    echo "done!"
done

# Setup i3 config files
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status
ln -fs $dotfiles/i3config ~/.config/i3/config
ln -fs $dotfiles/i3statusconfig ~/.config/i3status/config

# Check for and install Vundle and Vim plugins
echo -n "Installing Vundle..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim > /dev/null
echo "done!"
echo -n "Installing Vim Plugins..."
vim +PluginInstall +qa
echo "done!"

echo "Log out and back in for changes to take affect"
