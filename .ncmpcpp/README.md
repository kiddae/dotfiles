# ncmpcpp-ueberzug

![ncmpcpp-ueberzug](img/demo.png)

`ncmpcpp-ueberzug` is a POSIX shell script displaying ncmpcpp album art using [ueberzug](https://github.com/seebye/ueberzug). It works on `alacritty`, `st`, `urxvt`,  `kitty`, `xterm` and `lxterm`.

## How to install

First install [ueberzug](https://github.com/seebye/ueberzug) as per the official instructions.

Navigate to your ncmpcpp config folder and clone the repository: 
```sh
$ cd ~/.ncmpcpp`
$ git clone https://github.com/alnj/ncmpcpp-ueberzug.git
```

Make `ncmpcpp-ueberzug` and `ncmpcpp_cover_art.sh` executable: 
```sh
cd ncmpcpp-ueberzug
chmod +x ncmpcpp-ueberzug ncmpcpp_cover_art.sh
```
Open your ncmpcpp config at `~/.ncmpcpp/config` and add this line: 
```sh
execute_on_song_change="~/.ncmpcpp/ncmpcpp-ueberzug/ncmpcpp_cover_art.sh"
```

Open `ncmpcpp_cover_art.sh` and adjust the settings at the top of the script to suit to your setup:
```sh
# SETTINGS
music_library="$HOME/music"
fallback_image="$HOME/.ncmpcpp/ncmpcpp-ueberzug/fallback.png"
padding_top=3 # These values are in characters
padding_bottom=1
padding_right=2
reserved_playlist_cols=30
force_square="false" # If "true", the cover art will downsize
                     # instead of cropping horizontally
reserved_cols_in_percent="false" # Change this if you use ncmpcpp columns mode,
                                 # see README for more info
```
The `padding_` and `reserved_playlist_cols` values are in *characters*, here is an image to make it easier to understand:
![ncmpcpp-ueberzug settings](img/settings_explained.png)

`reserved_playlist_cols` is the number of columns you want to protect from the cover image such that it will not be covered by it. [The cover image will be truncated so as not to cover that area.](img/truncate_reserved_cols.gif)

Now, simply run:
```
$ ~/.ncmpcpp/ncmpcpp-ueberzug/ncmpcpp-ueberzug
``` 
to open ncmpcpp with album art enabled. If you want to be able to run just `ncmpcpp-ueberzug` instead of its full path, move or symlink it somewhere in your $PATH, for example:
```sh
ln -s ~/.ncmpcpp/ncmpcpp-ueberzug/ncmpcpp-ueberzug ~/.local/bin/
```

## Additional steps for ncmpcpp columns mode users (ncmpcpp default layout)

In order for [ncmpcpp columns mode](img/ueberzug_columns_mode.gif) to work well with ncmpcpp-ueberzug, first make sure your columns' total width in `~/.ncmpcpp/config` is inferior to 100%:

```
song_columns_list_format = "(25)[6]{a} (35)[4]{t} (5)[2]{l}"
```

Here the total is `(25)` + `(35)` + `(5)` = 65%. For best results, use song length `{l}` as your last column. Next, change the `ncmpcpp_cover_art.sh` settings:

```sh
reserved_playlist_cols=75 # Set this at least 5 percentage points above your columns' total
reserved_cols_in_percent="true" # set this to "true"
```

Album art should now crop and resize properly.


## Compatibility

Known to work:
* `alacritty`, `st`, `urxvt`,  `kitty`, `xterm`, `lxterm`

Require manually setting character size in `ncmpcpp_cover_art.sh`:
* `cool-retro-term` 
* `sakura` (resizing can break geometry)
* `gnome-terminal`, `terminator`, `xfce4-terminal`  (Album art displays on the last opened terminal irrespective of which is the ncmpcpp window, resizing can break geometry)

Broken:
* `konsole` (stops working randomly, geometry is wrong)
* `guake`, `terminology` (geometry is wrong)


## To-do

* Support embedded album art
* Support fetching album art from the web
