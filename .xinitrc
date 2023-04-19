# Statusbar loop

#while true; do
#   xsetroot -name "$( date +"%F %R" )"
#   sleep 1m    # Update time every minute
#done &

# Autostart
pkill -f "bash /usr/bin/clipmenud"; pkill -f "clipnotify";
clipmenud &
# clipmenu Environment Variable
export CM_DIR=/tmp
#exec slstatus &
xsetroot -name "Bismillah"
dwmblocks &

exec dwm
