set fish_greeting

function wal-set
  wal -n -t -i $argv --saturate 0.75 --backend haishoku
  swww img $argv --transition-type wipe --transition-fps 90
  ~/.config/hypr/scripts/applytheme.sh
end


if status is-interactive
    # Commands to run in interactive sessions can go here
    cat ~/.cache/wal/sequences
    PF_INFO="ascii title os wm kernel uptime pkgs memory" pfetch
end

starship init fish | source
