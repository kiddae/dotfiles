# Dotfiles!

More details on the respective theme folders, but in general:

The themes are wrapped around my colorscheme manager [colorer](https://github.com/kiddae/colorer).

To install the themes,

+ make sure you have installed `colorer`.
+ copy/link the files to their respective location starting from the home directory (`cp -r <theme-name>/. ~`)
+ choose a colorscheme: browse [the repo](https://github.com/kiddae/colorer-colorschemes) or make your own, put it wherever you want.
+ run `colorer <path to colorscheme file>` to generate config files in `.config/colorer/out`. They will automatically be linked/copied according to the script `commands` from `colorer`'s configuration folder.
+ tweak some stuff; some of these elements (keybinds, aliases...) are quite personal and might not fit your needs. Play around, remove what's useless and find something that suits you!

The wallpapers can be found in this mess: [wallpapers](https://github.com/kiddae/wallpapers)

This was made over my older and messier dotfiles repository that you can still access on the `old` branch.

# Included scripts

To make the usage and switching of themes easier, I have included (mostly for me):

+ `switch_theme` which takes the name of the theme as argument
+ `update_theme`, which copies files from my home directory to the repository and shows diffs per directory. The flag `-n` does a dry-run.

# Screenshots

## `doublechic`

![screenshot1](doublechic/screenshot1.png)
![screenshot2](doublechic/screenshot2.png)
