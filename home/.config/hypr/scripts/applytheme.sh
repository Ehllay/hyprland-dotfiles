#!/bin/bash

state_file="$HOME/.local/state/theme_state.txt"

if grep -q Dracula $state_file; then
  #$script_dir/wallpaper.sh
  wal --theme dracula 
  hyprctl setcursor Dracula-cursors 24
  gsettings set org.gnome.desktop.interface gtk-theme 'Dracula'
  gsettings set org.gnome.desktop.interface cursor-theme 'Dracula-cursors'


elif grep -q Mocha $state_file; then
  wal --theme catppuccin_mocha
  hyprctl setcursor Catppuccin-Mocha-Lavender-Cursors 24
  gsettings set org.gnome.desktop.interface gtk-theme 'Catppuccin-Mocha-Standard-Lavender-Dark'
  gsettings set org.gnome.desktop.interface cursor-theme 'Catppuccin-Mocha-Lavender-Cursors'

fi

killall waybar

waybar </dev/null &>/dev/null &
pywalfox update
