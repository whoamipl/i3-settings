#!/bin/bash
VGA="$(xrandr | grep -i 'VGA1' | cut -f1 -d ' ')"

if [[ ! -z "$VGA" ]]; then
    echo "$VGA"
    xrandr --output eDP1 --auto --output VGA1 --right-of eDP1
fi
