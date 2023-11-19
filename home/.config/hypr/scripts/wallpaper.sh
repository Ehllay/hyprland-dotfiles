#!/bin/bash

# Directory where your wallpapers are stored

theme_state="$HOME/.local/state/theme_state.txt"

if grep -q Dracula $theme_state; then
  wallpaper_dir="$HOME/Pictures/wallpapers/Dracula"

elif grep -q Mocha $theme_state; then
  wallpaper_dir="$HOME/Pictures/wallpapers/Mocha"

else 
  wallpaper_dir="$HOME/Pictures/wallpapers/Other"
fi


# Get a list of all wallpaper files in the directory
files=("$wallpaper_dir"/*)

# Variable to store the last used wallpaper filename
last_wallpaper=""
state_file="$HOME/.local/state/wallpaper_state.txt"

# Function to get a random wallpaper filename that is different from the last one
get_random_wallpaper() {
    local new_wallpaper
    while true; do
        # Select a random wallpaper
        new_wallpaper="${files[RANDOM % ${#files[@]}]}"
        # Check if it's different from the last wallpaper
        if [ "$new_wallpaper" != "$(cat "$state_file")" ]; then
            # If different, break the loop and return the filename
            last_wallpaper="$new_wallpaper"
            echo "$new_wallpaper"
            echo "$new_wallpaper" > "$state_file"
            break
        fi
    done
}

# Function to set the wallpaper
set_wallpaper() {
    local wallpaper="$1"
    if grep -q Wallpaper ~/.local/state/theme_state.txt; then
      wal -n -i $wallpaper --saturate 0.75 --backend haishoku 
      ~/.config/hypr/scripts/applytheme.sh
    fi
    swww img $wallpaper --transition-type wipe --transition-fps 90
}

# Call the set_wallpaper function with a random wallpaper
random_wallpaper=$(get_random_wallpaper)
set_wallpaper "$random_wallpaper"

