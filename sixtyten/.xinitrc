#!/bin/sh
[ -f ~/.xprofile ] && . ~/.xprofile
exec bspwm
