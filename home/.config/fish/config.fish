set fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
    cat ~/.cache/wal/sequences
    PF_INFO="ascii title os wm kernel uptime pkgs memory" pfetch
end

starship init fish | source
