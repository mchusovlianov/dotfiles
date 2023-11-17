#!/bin/bash
if $(xrandr | grep -q "HDMI-1 connected");then
    xrandr --output eDP-1 --off --output VGA-1 --primary --mode 1440x900 --pos 0x0 --rotate left --output HDMI-1 --off --output DP-1 --mode 1600x900 --pos 900x0 --rotate normal --output HDMI-2 --off --output DP-2 --off --output HDMI-3 --mode 1600x900 --pos 2500x0 --rotate normal
else
  xrandr --output eDP-1 --primary --mode 1920x1200 --pos 0x0 --rotate normal --output DP-1 --mode 1280x1024 --pos 1366x0 --rotate normal --output HDMI-1 --mode 1280x1024 --pos 2646x0 --rotate normal
fi
