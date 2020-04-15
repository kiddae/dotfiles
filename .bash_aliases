# list my scripts
alias lsscript="ls -R1 $SCRIPT_FOLDER"


# apt update && upgrade
alias update="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"

# i3 config file
alias i3conf="vim ~/.config/i3/config"

# polybar config file
alias barconf="vim ~/.config/polybar/config"

# compton config file
alias compconf="vim ~/.config/compton.conf"

# termite config file
alias termconf="vim ~/.config/termite/config"

# ffmpeg convert flac=>mp3
alias allflactomp3="find . -name "*.flac" -exec ffmpeg -i {} -ab 320k -map_metadata 0 -id3v2_version 3 {}.mp3 \;"

# color cat
alias ccat="pygmentize -g"

# launchpolybar
alias launchpolybar="~/.config/polybar/launch.sh"
