#  _               _              
# | |__   __ _ ___| |__  _ __ ___ 
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__ 
# |_.__/ \__,_|___/_| |_|_|  \___|
#                                 



# Vim mode
set -o vi
bind '"jk":vi-movement-mode'
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# Fetch
# pfetch
# bunnyfetch
# fet.sh
ufetch
cl
echo -e "\n"

# Cycle autocompletion
bind "TAB:menu-complete"
bind "set show-all-if-ambiguous on"
bind "set completion-ignore-case on"

# Prompt
# export PS1="\w \[$(tput sgr0)\]"
# export PS1="\[\033[34m\]\W > \[$(tput sgr0)\]" 
# export PS1="\[\e[34m\]\W \[\e[0m\]" 
# export PS1="\[\n\e[1;2m\]in \e[4;31m\]\w\n\[\e[0;32m\] ⤷ \[\e[0m\]" 
export PS1="\n\[\e[1;31m\]\w/ \[\e[m\] " 
# export PS1="\[\e[37m\]\n╭╴╴╴ \[\e[33m\]\W\n\[\e[37m\]╰╴> \[\e[36m\]" 
# export PS1="\e[36m→ \W \$(tput sgr0)\]\e[0m" 

# Set cursor to ibeam
# export PS1="\[\e[5 q\r\]$PS1"

# FZF
. /usr/share/fzf/key-bindings.bash # CTRL-T to navigate files, CTRL-R to navigate history
. /usr/share/fzf/completion.bash
export FZF_DEFAULT_OPTS='--color bw --reverse --border'
export FZF_DEFAULT_COMMAND='find . 2>/dev/null'
export FZF_CTRL_T_OPTS="--select-1 --exit-0 --preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_CTRL_T_COMMAND="find . 2>/dev/null"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"
export FZF_ALT_C_COMMAND="find . -type d 2>/dev/null"

# command-not-found
source /usr/share/doc/pkgfile/command-not-found.bash


# set the colors from colorer
# cat ~/.cache/colorer/sequences

###########
# Aliases #
###########

# ranger
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias r='ranger'

# nvim
alias v='nvim'
alias vi="vim"
alias vim="nvim"

# polybar
alias launchpolybar="~/.config/polybar/launch.sh"
alias chbartheme="~/.config/polybar/themes/switch_theme"

# ncmpcpp
# alias ncmpcpp="ncmpcpp-ueberzug"
alias nc="ncmpcpp"

# Xresources (for file inclusion)
alias xrdb="xrdb -I$HOME"

# Package management
alias lsorphans='paru -Qqdt'
alias rmorphans='paru -Rns $(paru -Qqdt)'
alias lsexplicit="pacman -Qei | awk '/^Name/ { name=\$3 } /^Groups/ { if ( \$3 != \"base\" && \$3 != \"base-devel\" ) { print name } }' | less"
lsdepends () { pacman -Qi $1 | grep Depends; }

# colors
alias grep="grep --color=auto"
alias ls="ls --color=auto -F"

# dots management
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# xclip for piping to clipboard
alias xclip='xclip -selection c'

# misc
alias sddm-test='sddm-greeter --test-mode --theme /usr/share/sddm/themes/sugar-candy/'

# rsync for my USB/Music
alias usb_sync='rsync -aPu /run/media/me/3A89-86CE/ ~/Documents/School/ && rsync -aPu ~/Documents/School/ /run/media/me/3A89-86CE/'
alias music_sync='rsync -rPu --delete /run/media/me/Elements/Music/ phone:/sdcard/Music/'

# cd + ls
function cd {
    builtin cd "$@" && ls
}

# open man in neovim
export MANPAGER="nvim +Man!"
export MANWIDTH=999

# github token
alias git_token="cat ~/Documents/.git_token | xclip"

# fc-list search
alias fontsearch="fc-list | grep -i"

#!/usr/bin/env bash


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# # # # # # # # # # # #
# bashed-on-a-feeling #
# # # # # # # # # # # #

# NOTE THAT THE TERMINAL COLORS WOULD VARY DEPENDING ON YOUR TERMINAL PALETTE
# Regular Colors Available In Your Terminal
Black="$(tput bold)$(tput setaf 0)"    # Black
Red="$(tput bold)$(tput setaf 1)"      # Red
Green="$(tput bold)$(tput setaf 2)"    # Green
Yellow="$(tput bold)$(tput setaf 3)"   # Yellow
Blue="$(tput bold)$(tput setaf 4)"     # Blue
Purple="$(tput bold)$(tput setaf 5)"   # Purple
Cyan="$(tput bold)$(tput setaf 6)"     # Cyan
White="$(tput bold)$(tput setaf 7)"    # White
bgBlack="$(tput bold)$(tput setab 0)"  # Background Black
bgRed="$(tput bold)$(tput setab 1)"    # Background Red
bgGreen="$(tput bold)$(tput setab 2)"  # Background Green
bgYellow="$(tput bold)$(tput setab 3)" # Background Yellow
bgBlue="$(tput bold)$(tput setab 4)"   # Background Blue
bgPurple="$(tput bold)$(tput setab 5)" # Background Purple
bgCyan="$(tput bold)$(tput setab 6)"   # Background Cyan
bgWhite="$(tput bold)$(tput setab 7)"  # Background White

#------------------------------------------------------------------------------------------------
# # # # # # # # # # # # # # # # # #
# SET COLORS FOR THE PROMPT HERE  #
# # # # # # # # # # # # # # # # # #

# Edit Normal Prompt Colors Here
normalHeart=$Red    # Color for the heart
normalCDire=$Red    # Color for the current directory
normalDolar=$Yellow # Color for primary prompt string $

# Edit Git Prompt Colors Here
gpDir=$Yellow # Color for current git directory
gpBrn=$White  # Color for current git branch
gpAMa=$Green  # Color for both total commits and check mark
# this variable takes only background colors. so use colors like bgRed or bgBlue etc
gpBck=$bgBlack # Background color for the box in which git or the diverged symbol is shown
#------------------------------------------------------------------------------------------------

# git prompt will be shown only when you move to a git dir
gitprompt(){
    if `git status &> /dev/null`; then
		declare -i cno=0
		source ~/.bashed-gitprompt.sh
	else
		export PS1='\[$normalHeart\]♥ \[$normalCDire\]\W \[$normalDolar\]⟩\[\e[0m\] '
		gbranch=""
	fi
}
PROMPT_COMMAND="gitprompt"
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
