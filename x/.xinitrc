#!/bin/sh

xrdb -merge ~/.Xresources

# start urxvt daemon
urxvtd -q -f -o

# spawn a terminal
urxvtc &

exec herbstluftwm --locked
