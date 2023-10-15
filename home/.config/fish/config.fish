set fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
    cat ~/.cache/wal/sequences
    pfetch
end

starship init fish | source
