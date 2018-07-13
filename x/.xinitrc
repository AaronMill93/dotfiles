#!/bin/sh
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# start urxvt daemon
urxvtd -q -f -o

# spawn a terminal
urxvtc &

exec herbstluftwm --locked
