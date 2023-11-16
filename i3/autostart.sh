#!/bin/sh

# compositor
#killall picom
#while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
#picom --config ~/.config/picom/picom.conf --vsync &

#xrandr -s 1920x1200 &
#~/.config/polybar/launch.sh &

#bg
#nitrogen --restore &
~/.fehbg &
#clipmenud &
#dunst &
#autotiling &
#wal -R & 

#setxkbmap -layout colemak &

#[ ! -s ~/.config/mpd/pid ] && mpd &
#/usr/libexec/polkit-gnome-authentication-agent-1 &
#/usr/lib/polkit-kde-authentication-agent-1 &

#sxhkd
killall sxhkd
while pgrep -u $UID -x sxhkd >/dev/null; do sleep 1; done
sxhkd -c $HOME/.config/i3/sxhkd/sxhkdrc &
parcellite &
setxkbmap -model pc105 -layout us,ru -option grp:alt_shift_toggle
clipmenud &
