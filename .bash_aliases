# list my scripts
alias lsscript="ls -R1 $SCRIPT_FOLDER"

# ffmpeg convert flac=>mp3
alias allflactomp3="find . -name "*.flac" -exec ffmpeg -i {} -ab 320k -map_metadata 0 -id3v2_version 3 {}.mp3 \;"

# launchpolybar
alias launchpolybar="~/.config/polybar/launch.sh"

# Xresources (for file inclusion)
alias xrdb="xrdb -I$HOME"

alias lsorphans='yay -Qqdt'
alias rmorphans='yay -Rns $(yay -Qqdt)'
alias lsexplicit="yay -Qqe"

# colors
alias grep="grep --color=auto"
alias ls="ls --color=auto"
