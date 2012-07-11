#!/bin/sh
xrandr --output VGA-0 --mode 1920x1080 --pos 0x0 --rotate normal --output LVDS --mode 1440x900 --pos 1920x288 --rotate normal --output S-video --off --output DVI-0 --off
redshift -l 46.688117980957:-1.92089080810547&
feh --bg-scale Images/wallpaper2.jpg&

