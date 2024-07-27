#!/bin/bash
#nohup setxkbmap -layout us,ru && setxkbmap -option 'grp:alt_shift_toggle' &
nohup xsetroot -cursor_name left_ptr &
nohup setxkbmap -option "ctrl:swapcaps" & 
nohup feh --bg-scale ~/Pictures/3.jpg &
dwmblocks &
xinput set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 0
xinput --set-prop 11 'libinput Accel Speed' 0.4
nohup picom &
xrandr --output eDP-1 --off
xrandr --output HDMI-1 --auto

while true; do
	dwm 2> ~/.dwm.log
done
