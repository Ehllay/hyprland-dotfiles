set fish_greeting

function fish_prompt

  # interactive user name @ host name, date/time in YYYY-mm-dd format and path
  set_color purple
  echo -n (whoami)
  set_color white
  echo -n @
  echo -n (hostnamectl hostname)" "
  set_color green
  echo -n (pwd | sed 's/\/home\/'"$USER"'/~/g')
  set_color white
  echo -n "> "

end

if status is-interactive
    # Commands to run in interactive sessions can go here
    pfetch
end
