# Set python 3 as the default in terminal
alias python='python3'

# Use python 3 pip by default
alias pip='pip3'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Set ls to be more robust
alias ls='ls -GF1'

# Use Tab-Completion the Windows way
bind TAB:menu-complete

# Welcome the user
cowsay -f stegosaurus Welcome $USER. Happy Hacking!
