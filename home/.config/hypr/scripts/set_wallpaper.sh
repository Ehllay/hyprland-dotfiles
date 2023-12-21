#!/bin/bash

theme_state_file="$HOME/.local/state/theme_state.txt"
state_file="$HOME/.local/state/wallpaper_state.txt"

theme_state=$(cat $theme_state_file)

theme=$(basename $(dirname $1))

if [ $theme == "Pywal" ]; then
  wal -n -t -q -i $1 --saturate 0.75 --backend haishoku
  killall waybar

  waybar </dev/null &>/dev/null &
  pywalfox update
  swaync-client -rs
fi

if ! grep -q $theme $theme_state_file; then
  echo $theme > $theme_state_file
  ~/.config/hypr/scripts/applytheme.sh
fi

# Set wallpaper
swww img $1 --transition-type wipe --transition-fps 90
