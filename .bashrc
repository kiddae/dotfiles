if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# set cursor to ibeam
printf '\033[5 q\r'

# vim mode
set -o vi

export PF_INFO="ascii title os wm kernel uptime pkgs memory"

# neofetch
clear
pfetch
# panes

#export PS1="\w \[$(tput sgr0)\]"
export PS1="\[\033[34m\]\w \[$(tput sgr0)\]> " 
