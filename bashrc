# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# Set python 3 as the default in terminal
alias python='python3'

# Use python 3 pip by default
alias pip='pip3'

# Set ls to be more robust
alias ls='ls -lhFG'

# Use Tab-Completion the Windows way
bind TAB:menu-complete
