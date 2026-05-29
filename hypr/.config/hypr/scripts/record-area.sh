#!/bin/bash

FLAGFILE="/tmp/hypr-recording-active"

if [ -f "$FLAGFILE" ]; then
    pkill -INT wf-recorder
    rm -f "$FLAGFILE"
    notify-send "Recording stopped" "Saved to ~/Videos/"
else
    notify-send "Recording area..." "Select a region"
    wf-recorder -a -g "$(slurp)" -f ~/Videos/recording_$(date +%Y%m%d_%H%M%S).mp4 &
    touch "$FLAGFILE"
    sleep 0.5
fi
pkill -RTMIN+8 waybar
