#!/bin/bash
while true; do
    while read -r output; do
        xrandr --output $output --auto
    done < <(xrandr | grep "Virtual" | awk '{print $1;}')
    sleep 1
done