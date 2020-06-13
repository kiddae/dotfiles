#  _               _              
# | |__   __ _ ___| |__  _ __ ___ 
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__ 
# |_.__/ \__,_|___/_| |_|_|  \___|
#                                 


# set cursor to ibeam
# printf '\033[5 q\r'

# vim mode
# set -o vi

# fetch
fetch

# export PS1="\w \[$(tput sgr0)\]"
# export PS1="\[\033[34m\]\W > \[$(tput sgr0)\]" 
export PS1="\e[36m→ \W \$(tput sgr0)\]\e[0m" 

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

# ffmpeg convert flac=>mp3
alias allflactomp3="find . -name "*.flac" -exec ffmpeg -i {} -ab 320k -map_metadata 0 -id3v2_version 3 {}.mp3 \;"

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

# vimmm
alias :q="exit"
alias :e="vim"

# dots management
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# xclip for piping to clipboard
alias xclip='xclip -selection c'

# misc
alias sddm-test='sddm-greeter --test-mode --theme /usr/share/sddm/themes/sugar-candy/'

