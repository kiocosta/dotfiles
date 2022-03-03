#!/bin/sh
#xrandr --setprovideroutputsource modesetting NVIDIA-0
#xrandr --output HDMI-0 --primary --mode 2560x1080 --pos 1600x0 --rotate normal --output eDP-1-1 --mode 1600x900 --pos 0x180 --rotate normal

intern=eDP-1-1
extern=HDMI-0

if xrandr | grep "$extern disconnected"; then
	xrandr --output "$extern" --off --output "$intern" --primary --mode 1600x900 --pos 0x180 --rotate normal --brightness 0.65
else
	xrandr --output "$intern" --mode 1600x900 --pos 0x1800 --rotate normal --brightness 0.65 --output "$extern" --primary --right-of "$intern" --mode 2560x1080 --pos 1600x0 --rotate normal
fi
