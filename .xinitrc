#!/bin/sh

# ~/.xinitrc
[ -f ~/.xprofile ] && . ~/.xprofile
#
# Executed by startx (run your window manager from here)
 # merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi
#DEFAULT_SESSION='i3 --shmlog-size 100'
while :; do
	ssh-agent dwm || break
done
