set fish_greeting
set EDITOR nvim

function wal-set
  wal -n -t -q -i $argv --saturate 0.75 --backend haishoku
  swww img $argv --transition-type wipe --transition-fps 90
  ~/.config/hypr/scripts/applytheme.sh
end

alias ls lsd


if status is-interactive
    # Commands to run in interactive sessions can go here
    cat ~/.cache/wal/sequences
    PF_INFO="ascii title os wm kernel uptime pkgs memory" pfetch
end

starship init fish | source
