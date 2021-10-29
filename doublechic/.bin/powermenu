#!/bin/bash
choices="Poweroff\nQuit\nReboot\nLock\nSuspend"
# chosen=$(echo -e $choices | rofi -dmenu -i -p "Power Menu" -theme ~/.cache/colorer/rofi.rasi)
fg=$(xrdb -query | grep foreground | cut -d':' -f2 | sed 's/	//g')
bg=$(xrdb -query | grep background | cut -d':' -f2 | sed 's/	//g')
chosen=$(echo -e $choices | prompt "Powermenu")
echo "$chosen"

case "$chosen" in
        Lock) lock ;;
        Suspend) systemctl suspend ;;
		Quit) bspc quit ;;
		Poweroff) poweroff ;;
		Reboot) reboot ;; 
esac
