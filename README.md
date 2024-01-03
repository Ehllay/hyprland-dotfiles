# hyprland-dotfiles
My Hyprland configuration

## Packages (needs an AUR helper to install, like yay or paru)
```
paru hyprland kitty papirus-icon-theme brightnessctl pipewire dracula-theme thunar thunar-volman qt5ct polkit-kde-agent libappindicator-gtk3 swaync swaylock-effects wlogout xdg-desktop-portal-hyprland rofi-lbonn-wayland-git waybar nm-connection-editor swww hyprpicker cliphist ttf-jetbrainsmono-nerd starship cava pfetch python python-pywal python-haishoku fish bat lsd
```



## Screenshot
![Gif](/screenshot.png)

## Theming

For GTK apps, it should work out of the box.

For QT5, if the custom theme isn't working, open qt5ct and set the color scheme to Dracula (or Dracula-white for white text), style to Lightly and dialogues to XDG Desktop Portal. For fonts and icons, choose ```Noto Sans 12``` and ```Papirus-Dark```. If running with issues with dolphin, go to the style sheets tab and enable ```dolphin-fix.qss```. Similar procedure for QT6 apps, just run qt6ct instead of qt5ct

## Theme switcher
In order for the theme switcher to work, ```python-pywal``` and ```python-haishoku``` are needed. To theme Firefox, install ```python-pywalfox``` and install it by adding the extension and running ```pywalfox install```. You may also need to perform some tweaking so the colors look right. Also, Wallpaper mode uses [McMojave Cursors](https://github.com/vinceliuice/McMojave-cursors), so go to their repo and download it from there

Finally, for catppuccin support, install ```catppuccin-gtk-theme-mocha``` and ```catppuccin-cursors-mocha```

## Support for additional stuff.
For mic support, install ```pamixer``` and uncomment the ```pulseaudio#microphone``` line in ```~/.config/waybar/config.jsonc```. Otherwise just remove the binds for microphone volume control, but it isn't necessary
