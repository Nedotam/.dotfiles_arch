#!/bin/bash
# ~/.config/hypr/scripts/record-area.sh

if pgrep -x wf-recorder > /dev/null; then
    pkill -INT wf-recorder
    notify-send "Recording stopped" "Saved to ~/Videos/"
else
    notify-send "Recording area..." "Select a region"
    wf-recorder -a -g "$(slurp)" -f ~/Videos/recording_$(date +%Y%m%d_%H%M%S).mp4
fi
