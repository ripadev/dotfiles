# Statusbar loop

#while true; do
#   xsetroot -name "$( date +"%F %R" )"
#   sleep 1m    # Update time every minute
#done &

# Autostart

#exec slstatus &
exec dwmblocks &
exec dwm
