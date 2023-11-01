#!/bin/bash

echo -en "\0prompt\x1fThemes \n"

theme_state="$HOME/.local/state/theme_state.txt"
script_dir="$HOME/.config/hypr/scripts"

if [ x"$@" = x"Dracula" ]; then
  echo "Dracula" > $theme_state 
  $script_dir/wallpaper.sh
  $script_dir/applytheme.sh

  killall rofi
  exit 0

elif [ x"$@" = x"Catppuccin Mocha" ]; then
  echo "Mocha" > $theme_state
  $script_dir/wallpaper.sh
  $script_dir/applytheme.sh

  killall rofi
  exit 0

elif [ x"$@" = x"Wallpaper (Pywal)" ]; then
  echo "Wallpaper" > $theme_state
  $script_dir/wallpaper.sh

  killall rofi
  exit 0
fi

echo "Dracula"
echo "Catppuccin Mocha"
echo "Wallpaper (Pywal)"

