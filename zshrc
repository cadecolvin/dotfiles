#####################################
# Oh-My-Zsh stuff
#####################################
# Path to your oh-my-zsh installation.
export ZSH=/home/ccolvin/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="cadecolvin"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode python colored-man-pages)

source $ZSH/oh-my-zsh.sh


#####################################
# Aliases
#####################################
alias python='python3' # Use Python3 by default
alias ls='ls -GF --color --group-directories-first' 
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='fgrep --color=auto'
alias shit='sudo $(fc -ln -1)' # Fix my mistake when I forget sudo
alias start='nautilus' # Make nautilus act like Windows Explorer

bindkey -M viins 'jk' vi-cmd-mode # Make vi-mode plugin like my vimrc

#####################################
# Extras
#####################################
export PATH="/usr/local/bin:$PATH"
export EDITOR=vim

cowsay -f stegosaurus $(fortune) # Welcome myself
