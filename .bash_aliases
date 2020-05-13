# list my scripts
alias lsscript="ls -R1 $SCRIPT_FOLDER"


# apt update && upgrade
alias update="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"

# ffmpeg convert flac=>mp3
alias allflactomp3="find . -name "*.flac" -exec ffmpeg -i {} -ab 320k -map_metadata 0 -id3v2_version 3 {}.mp3 \;"

# launchpolybar
alias launchpolybar="~/.config/polybar/launch.sh"

# wal
alias wal="wal -o wal-set -n"

# Xresources (for file inclusion)
alias xrdb="xrdb -I$HOME"


alias lsorphans='yay -Qqdt'
alias rmorphans='yay -Rns $(yay -Qqdt)'
