#!/bin/bash

run(){
    if ! pgrep -f "$1"; then
        "$@"&
    fi
}

run picom -b
run ~/bin/power
setxkbmap br
# run lxsession
libinput-gestures-setup restart
