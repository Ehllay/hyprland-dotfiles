# hyprland-dotfiles
My Hyprland configuration for my Desktop with NVIDIA

## Packages (needs an AUR helper to install, like yay or paru)
```
hyprland-nvidia kitty papirus-icon-theme brightnessctl pipewire dracula-theme doplhin qt5ct qt6ct lightly-qt polkit-kde-agent libappindicator-gtk3 noto-fonts noto-fonts-cjk noto-fonts-emoji swaync swaylock-effects wlogout xdg-desktop-portal-hyprland rofi-lbonn-wayland-git rofi-emoji waybar swww hyprpicker cliphist ttf-jetbrainsmono-nerd starship cava pfetch-rs-bin python python-pywal python-haishoku fish
```
## Screenshot
![Dracula](/screenshots/dracula.png)
![Catppuccin](/screenshots/catppuccin.png)
![Pywal](/screenshots/pywal.png)

## Theming

For GTK apps, it should work out of the box.

For QT5, if the custom theme isn't working, open qt5ct and set the color scheme to Dracula (or Dracula-white for white text), style to Lightly and dialogues to XDG Desktop Portal. For fonts and icons, choose ```Noto Sans 12``` and ```Papirus-Dark```. If running with issues with dolphin, go to the style sheets tab and enable ```dolphin-fix.qss```. Similar procedure for QT6 apps, just run qt6ct instead of qt5ct

## Theme switcher
In order for the theme switcher to work, python-pywal and python-haishoku are needed. To theme Firefox, install python-pywalfox and install it by adding the extension and running pywalfox install. You may also need to perform some tweaking so the colors look right. Also, Wallpaper mode uses McMojave Cursors, so go to their repo and download it from there

Finally, for catppuccin support, install catppuccin-gtk-theme-mocha and catppuccin-cursors-mocha
