# hyprland-dotfiles
My Hyprland configuration for my Desktop with NVIDIA

## Packages (needs an AUR helper to install, like yay or paru)
```
hyprland-nvidia kitty papirus-icon-theme brightnessctl pipewire dracula-theme doplhin qt5ct qt6ct lightly-qt polkit-kde-agent libappindicator-gtk3 noto-fonts noto-fonts-cjk noto-fonts-emoji dunst swaylock-effects wlogout xdg-desktop-portal-hyprland rofi-lbonn-wayland-git rofi-emoji waybar swww hyprpicker cliphist ttf-jetbrainsmono-nerd starship cava pfetch python python-pywal python-haishoku fish
```
## Screenshot
![Gif](/screenshot.png)

## Theming

For GTK apps, it should work out of the box.

For QT5, if the custom theme isn't working, open qt5ct and set the color scheme to Dracula (or Dracula-white for white text), style to Lightly and dialogues to XDG Desktop Portal. For fonts and icons, choose ```Noto Sans 12``` and ```Papirus-Dark```. If running with issues with dolphin, go to the style sheets tab and enable ```dolphin-fix.qss```. Similar procedure for QT6 apps, just run qt6ct instead of qt5ct
