#!/bin/sh

# Required packages: scrot i3lock imagemagick

# VERSION 1
scrot /tmp/lockscreen.png
convert /tmp/lockscreen.png -blur 0x5 /tmp/lockscreen.png
i3lock -i /tmp/lockscreen.png
sleep 60; pgrep i3lock && xset dpms force off
