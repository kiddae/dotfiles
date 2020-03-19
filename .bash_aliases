# list my scripts
alias lsscript="ls -R1 $SCRIPT_FOLDER"


# apt update && upgrade
alias update="sudo apt update && sudo apt upgrade -y"

# i3 config file
alias i3conf="vim ~/.config/i3/config"

# polybar config file
alias barconf="vim ~/.config/polybar/config"

# compton config file
alias compconf="vim ~/.config/compton.conf"

# ffmpeg convert flac=>mp3
alias allflactomp3="find . -name "*.flac" -exec ffmpeg -i {} -ab 320k -map_metadata 0 -id3v2_version 3 {}.mp3 \;"

# pywal
alias wal="wal -o wal-set --vte"

