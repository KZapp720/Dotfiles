source ~/.zprofile
flag=$(osascript -e 'tell application "System Events" to (count of (every process whose name is "wezterm-gui")) > 0')

if [ "$flag" = "true" ]; then
  wezterm start -- hx "$@"
else
  wezterm start -- hx "$@" & (sleep 0.5 && osascript -e 'tell application "System Events" to key code 48 using {command down, shift down}')
fi
