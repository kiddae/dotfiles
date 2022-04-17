# ![banner](banner.png)

# 🌟 Welcome! ଘ(੭˃ᴗ˂)੭

Here are my dotfiles, the configuration files needed to customize a desktop like mine!

This repository is still quite new, I'll progressively add themes I have made in the past and eventually new ones.

## 📓 Installation/Usage

The themes are wrapped around my colorscheme manager [colorer](https://github.com/kiddae/colorer).

To install a theme,

+ Make sure you have installed `colorer`.
+ Copy/link the files to their respective location starting from the home directory (`cp -r <theme-name>/. ~` or the included script `./switch_theme <theme-name>`).
+ Choose a colorscheme: browse [the repo](https://github.com/kiddae/colorer-colorschemes) or make your own, put it wherever you want. It's better to keep it!
+ Run `colorer <path to colorscheme file>` to generate config files in `.config/colorer/out`. They will automatically be linked/copied according to the script `commands` from `colorer`'s configuration folder.
+ Tweak some stuff; some of these elements (keybinds, aliases...) are quite personal and might not fit your needs. Play around, remove what's useless and find something that suits you!

The wallpapers can be found in this mess: [wallpapers](https://github.com/kiddae/wallpapers). Also, consider checking out [ImageColorizer](https://github.com/kiddae/ImageColorizer) :)

It can be vary according to the theme, but in general:

+ I use `bspwm` as my window manager, on pair with `sxhkd` to manage keybindings;
+ The terminal emulator will either be `alacritty` or `kitty`.
+ I edit my files with `neovim`; please refer to my [neovim configuration files](https://github.com/kiddae/neovim-dots)
+ `picom` gives me shadows and makes sure that the graphics don't go crazy;
+ My main file manager is `ranger`, or just... you know, the command line.
+ Status bar is generally `polybar`
+ `dunst` is my notification daemon, I use [this fork](https://github.com/Barbarossa93/dunst) to have double borders.
+ depending on the theme, `rofi` or `dmenu` takes care of my menus and application launchers.
+ [`bashed-on-a-feeling`](https://github.com/yedhink/bashed-on-a-feeling) is used in a big part of my themes (it's great!)

## 💻 Included scripts

To make the usage and switching of themes easier, I have included (mostly for me):

+ `switch_theme` which takes the name of the theme as argument
+ `update_theme`, which copies files from my home directory to the repository and shows diffs per directory. The flag `-n` does a dry-run.
+ `quickdiff <relative filepath> <theme>` shows the diff between the file in the home directory and in the theme directory.

## ✨ Screenshots

### [`doublechic`](doublechic/)

![screenshot1](doublechic/screenshot1.png)
![screenshot2](doublechic/screenshot2.png)

### [`lazuli`](lazuli/)

![screenshot](lazuli/screenshot.png)

### [`elegant`](elegant/)

![screenshot1](elegant/screenshot1.png)
![screenshot2](elegant/screenshot2.png)
![screenshot3](elegant/screenshot3.png)

### [`lain`](lain/)

![screenshot](lain/screenshot.png)

### [`hermine`](hermine/)

![screenshot1](hermine/screenshot1.png)
![screenshot2](hermine/screenshot2.png)
![screenshot3](hermine/screenshot3.png)

### [`sweet`](sweet/)

![screenshot](sweeet/screenshot.png)
