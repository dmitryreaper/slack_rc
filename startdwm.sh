#!/bin/bash
setxkbmap -layout us,ru && setxkbmap -option 'grp:alt_shift_toggle' &
nohup xsetroot -cursor_name left_ptr &
nohup setxkbmap -option "ctrl:swapcaps" & 
nohup feh --bg-scale ~/Pictures/2.png &
nohup dwmblocks &
nohup picom &

while true; do
	dwm 2> ~/.dwm.log
done
