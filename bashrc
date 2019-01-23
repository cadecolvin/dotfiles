#####################################
# Colors
#####################################
DEFAULT=$PS1
PS1="\[\033[1;30m\]\u:/\[\033[4;36m\]\W\[\033[00m\]\$ "

#####################################
# Aliases
#####################################
alias ls='ls -GF --color --group-directories-first' 
alias grep='grep --color=auto'
alias shit='sudo $(fc -ln -1)' # Fix my mistake when I forget sudo

set -o vi
bind '"jk":vi-movement-mode'
bind TAB:menu-complete

####################################
# Extras
#####################################
export PATH="/usr/local/bin:$PATH:/home/ccolvin/.cargo/bin"
export EDITOR=vim
LS_COLORS="$LS_COLORS:ow=01;34"; export LS_COLORS
