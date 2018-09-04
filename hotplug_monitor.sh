#! /usr/bin/bash

export DISPLAY=:0
export XAUTHORITY=/home/dan/.Xauthority

function connect(){
    xrandr --output "$(xrandr -q|grep -Eo 'eDP-[0-9]')" --off
    xrandr --output 'DP-1' --auto --primary
}

function disconnect(){
      xrandr --auto
}

xrandr | grep -E "^DP-1 connected" &> /dev/null && connect || disconnect
