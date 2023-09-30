#!/bin/bash

# Directory where your wallpapers are stored
wallpaper_dir="$HOME/.config/hypr/wallpapers"

# Get a list of all wallpaper files in the directory
files=("$wallpaper_dir"/*)

# Variable to store the last used wallpaper filename
last_wallpaper=""
state_file="$HOME/.local/state/wall_state.txt"

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
    swww img $wallpaper --transition-type wipe --transition-fps 120
}

# Call the set_wallpaper function with a random wallpaper
random_wallpaper=$(get_random_wallpaper)
set_wallpaper "$random_wallpaper"

