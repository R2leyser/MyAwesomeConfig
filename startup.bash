#!/bin/bash

run(){
    if ! pgrep -f "$1"; then
        "$@"&
    fi
}

run picom-ft --animations -b
run ~/bin/power
setxkbmap br
run lxpolkit
libinput-gestures-setup restart
