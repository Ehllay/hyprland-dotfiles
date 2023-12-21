#!/bin/bash

state_file="$HOME/.local/state/theme_state.txt"

if grep -q Dracula $state_file; then
  #$script_dir/wallpaper.sh
  wal -n -t -q --theme dracula 
  hyprctl setcursor Dracula-cursors 24
  gsettings set org.gnome.desktop.interface gtk-theme 'Dracula'
  gsettings set org.gnome.desktop.interface cursor-theme 'Dracula-cursors'


elif grep -q Mocha $state_file; then
  wal -n -t -q --theme catppuccin_mocha
  hyprctl setcursor Catppuccin-Mocha-Lavender-Cursors 24
  gsettings set org.gnome.desktop.interface gtk-theme 'Catppuccin-Mocha-Standard-Lavender-Dark'
  gsettings set org.gnome.desktop.interface cursor-theme 'Catppuccin-Mocha-Lavender-Cursors'

elif grep -q Pywal $state_file; then
  gsettings set org.gnome.desktop.interface cursor-theme 'Bibata'
  hyprctl setcursor Bibata 24
fi

killall waybar

waybar </dev/null &>/dev/null &
pywalfox update
swaync-client -rs
