#!/bin/bash

state_file="$HOME/.local/state/theme_state.txt"

if grep -q Dracula $state_file; then
  #$script_dir/wallpaper.sh
  wal -n -t -q --theme dracula 
  gsettings set org.gnome.desktop.interface gtk-theme 'Dracula'


elif grep -q Mocha $state_file; then
  wal -n -t -q --theme catppuccin_mocha
  gsettings set org.gnome.desktop.interface gtk-theme 'Catppuccin-Mocha-Standard-Lavender-Dark'

elif grep -q Pywal $state_file; then
  gsettings set org.gnome.desktop.interface gtk-theme 'Catppuccin-Mocha-Standard-Lavender-Dark'
fi

killall waybar

waybar </dev/null &>/dev/null &
pywalfox update
swaync-client -rs
