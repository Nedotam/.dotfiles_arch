#!/bin/bash

bar_height=26
control_center_width=400
control_center_max_height=600

state_file=/tmp/swaync-hover-state
echo false > "$state_file"

while true; do
  read -r x y <<< "$(hyprctl cursorpos -j | jq -r '[.x, .y] | @tsv')"
  monitor_width=$(hyprctl monitors -j | jq '.[] | select(.focused == true).width')

  x_start=$((monitor_width - control_center_width))
  in_top_right=false

  if [ "$y" -ge 0 ] && [ "$y" -le "$bar_height" ] && [ "$x" -ge "$x_start" ] && [ "$x" -le "$monitor_width" ]; then
    in_top_right=true
  fi

  prev_in=$(cat "$state_file")
  swaync_open=$(cat /tmp/swaync-panel-state 2>/dev/null || echo false)

  if [ "$swaync_open" = "true" ]; then
    expanded_y=$((bar_height + control_center_max_height))
    if [ "$y" -ge 0 ] && [ "$y" -le "$expanded_y" ] && [ "$x" -ge "$x_start" ] && [ "$x" -le "$monitor_width" ]; then
      in_top_right=true
    fi
  fi

  if [ "$in_top_right" = true ] && [ "$prev_in" = false ]; then
    if [ "$swaync_open" = "false" ]; then
      swaync-client --open-panel
      echo true > /tmp/swaync-panel-state
    fi
    echo true > "$state_file"
  elif [ "$in_top_right" = false ] && [ "$prev_in" = true ]; then
    if [ "$swaync_open" = "true" ]; then
      swaync-client --close-panel
      echo false > /tmp/swaync-panel-state
    fi
    echo false > "$state_file"
  fi

  sleep 0.15
done
