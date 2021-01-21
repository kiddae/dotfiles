#  _               _              
# | |__   __ _ ___| |__  _ __ ___ 
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__ 
# |_.__/ \__,_|___/_| |_|_|  \___|
#                                 



# vim mode
set -o vi
bind '"jk":vi-movement-mode'
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# fetch
# pfetch
bunnyfetch

# colorscript -e bars

# echo -e "\e[2;3m“ `fortune -s` ”\e[0m"

# cycle autocompletion
bind "TAB:menu-complete"
bind "set show-all-if-ambiguous on"
bind "set completion-ignore-case on"

# export PS1="\w \[$(tput sgr0)\]"
# export PS1="\[\033[34m\]\W > \[$(tput sgr0)\]" 
# export PS1="\[\e[34m\]\W \[\e[0m\]" 
export PS1="\[\e[1;34m\]\n\w\n\[\e[32m\]→ \[\e[0m\]" 
# export PS1="\[\e[37m\]\n╭╴╴╴ \[\e[33m\]\W\n\[\e[37m\]╰╴> \[\e[36m\]" 
# export PS1="\e[36m→ \W \$(tput sgr0)\]\e[0m" 

# set cursor to ibeam
export PS1="\[\e[5 q\r\]$PS1"

#fzf
. /usr/share/fzf/key-bindings.bash
. /usr/share/fzf/completion.bash
export FZF_DEFAULT_OPTS='--color bw --reverse --border'
export FZF_DEFAULT_COMMAND='find . 2>/dev/null'
export FZF_CTRL_T_OPTS="--select-1 --exit-0 --preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_CTRL_T_COMMAND="find . 2>/dev/null"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"
export FZF_ALT_C_COMMAND="find . -type d 2>/dev/null"


# set the colors from colorer
# cat ~/.cache/colorer/sequences

###########
# Aliases #
###########

# list my scripts
alias lsscript="ls -R1 $SCRIPT_FOLDER"

# ranger
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias r='ranger'

# nvim
alias v='nvim'
alias vi="vim"
alias vim="nvim"

# launchpolybar
alias launchpolybar="~/.config/polybar/launch.sh"

# Xresources (for file inclusion)
alias xrdb="xrdb -I$HOME"

# ncmpcpp + tmux
alias music='tmux new-session "tmux source-file ~/.ncmpcpp/tmux_session"'


# Package management
alias lsorphans='yay -Qqdt'
alias rmorphans='yay -Rns $(yay -Qqdt)'
alias lsexplicit="pacman -Qei | awk '/^Name/ { name=\$3 } /^Groups/ { if ( \$3 != \"base\" && \$3 != \"base-devel\" ) { print name } }' | less"
lsdepends () { pacman -Qi $1 | grep Depends; }

# colors
alias grep="grep --color=auto"
alias ls="ls --color=auto"

# dots management
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# xclip for piping to clipboard
alias xclip='xclip -selection c'

# misc
alias sddm-test='sddm-greeter --test-mode --theme /usr/share/sddm/themes/sugar-candy/'

# rsync for my USB/Music
alias usb_sync='rsync -aPu /run/media/me/3A89-86CE/ ~/Documents/School/ && rsync -aPu ~/Documents/School/ /run/media/me/3A89-86CE/'
alias music_sync='rsync -aPu phone:/sdcard/Music/ ~/Music/ && rsync -aPu ~/Music/ phone:/sdcard/Music/'
