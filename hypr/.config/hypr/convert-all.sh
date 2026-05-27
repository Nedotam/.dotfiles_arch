#!/bin/bash
cd ~/.config/hypr
for f in *.conf; do
  hyprlang2lua "$f" > "${f%.conf}.lua"
done
# Also check for theme hyprland.conf
if [ -f ~/.config/current-theme/theme/hyprland.conf ]; then
  hyprlang2lua ~/.config/current-theme/theme/hyprland.conf > ~/.config/current-theme/theme/hyprland.lua
fi
