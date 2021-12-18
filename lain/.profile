if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# constants
export TERMINAL="alacritty"
export EDITOR="nvim"
export BROWSER="firefox"
export SCRIPT_FOLDER="$HOME/.bin"
export WALLPAPER_FOLDER="$HOME/Pictures/Wallpapers/"

# add scripts to path
PATH="$SCRIPT_FOLDER:$PATH"

export QT_QPA_PLATFORMTHEME=qt5ct
