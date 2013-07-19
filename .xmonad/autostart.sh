#!/bin/bash
dunst &
xsetroot -cursor_name left_ptr &
nitrogen --restore &
pulseaudio --start &
#compton -cfCG -t-10.6 -l-11 -r7 -o.41 -i 1.0 --vsync opengl &
compton -cCfb -D 4 -r 5 -l -5 -t -2 -o 0.2 -e 0.6 &
#compton -Cfb -e 0.6 &
sleep 3 && stalonetray --geometry 1x1-1-1 --transparent true &
#mpd &
urxvtd &
sleep 3 && conky -c ~/.conkympd &

