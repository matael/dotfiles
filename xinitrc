#!/bin/bash
[[ -f ~/.Xdefaults ]] && xrdb -merge -I$HOME ~/.Xdefaults
#exec dbus-update-activation-environment --systemd --all
#exec xmodmap ~/.Xmodmap
exec i3
