#!/bin/bash
#nohup setxkbmap -layout us,ru && setxkbmap -option 'grp:alt_shift_toggle' &
nohup xsetroot -cursor_name left_ptr &
nohup setxkbmap -option "ctrl:swapcaps" && setxkbmap -layout us,ru && setxkbmap -option 'grp:alt_shift_toggle' & 
nohup feh --bg-scale ~/Pictures/3.jpg &
nohup dwmblocks &
nohup xinput set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 0
nohup xinput --set-prop 11 'libinput Accel Speed' 0.5
#nohup picom &

while true; do
	dwm 2> ~/.dwm.log
done
