#!/usr/bin/env bash

# Author: Cade Colvin
# Installs basic programs and configurations

dotfiles=$PWD
backup=$dotfiles/bak
logout_required="false"

# Install OhMyZsh
if [ ! -d ~/.oh-my-zsh ]; then
    echo "Installing Oh-My-Zsh..." 
    curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -o install_omz.sh
    chmod 755 install_omz.sh
    exit | ( ./install_omz.sh > /dev/null )
    rm install_omz.sh
    logout_required="true"
    echo "done!"
fi

# Symlink to my custom oh-my-zsh theme
echo -n "Creating symlink to oh-my-zsh theme..."
mkdir -p ~/.oh-my-zsh/custom/themes
ln -fs $dotfiles/cadecolvin.zsh-theme ~/.oh-my-zsh/custom/themes/cadecolvin.zsh-theme
echo "done!"

# Symlink to all dotfiles in package
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
echo -n "Setting up i3 config..."
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status
ln -fs $dotfiles/i3.config ~/.config/i3/config
ln -fs $dotfiles/i3status.config ~/.config/i3status/config
echo "done!"

# Setup termite config
echo -n "Setting up Termite config..."
mkdir -p ~/.config/termite
ln -fs $dotfiles/termite.config ~/.config/termite/config
echo "done!"

# Setup rofi config
echo -n "Setting up rofi config..."
mkdir -p ~/.config/rofi
ln -fs $dotfiles/rofi.config ~/.config/rofi/config
echo "done!"

# Setup Xfce-4 keyboard shortcuts
echo -n "Setting up xfce-4 shortcuts..."
perchannel_path="~/.config/xfce4/xfconf/xfce-perchannel-xml"
mkdir -p $perchannel_path
ln -fs $dotfiles/xfce4keyboardshortcuts.config $perchannel_path/xfce4-keyboard-shortcuts.xml
echo "done!"

# Check for and install Vundle and Vim plugins
if [ ! -d ~/.vim/bundle ]; then
    echo -n "Installing Vundle..."
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim > /dev/null
    echo "done!"
fi

echo -n "Installing Vim Plugins..."
vim +PluginInstall +qa
echo "done!"

if [ $logout_required == "true" ]; then
    echo "Log out and back in for changes to take affect"
fi
