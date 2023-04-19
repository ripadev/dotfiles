# Statusbar loop

#while true; do
#   xsetroot -name "$( date +"%F %R" )"
#   sleep 1m    # Update time every minute
#done &

# Autostart

#exec slstatus &
xsetroot -name "Bismillah"
dwmblocks &

exec dwm
