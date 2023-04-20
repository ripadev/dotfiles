# Statusbar loop

#while true; do
#   xsetroot -name "$( date +"%F %R" )"
#   sleep 1m    # Update time every minute
#done &


# clipmenu
systemctl --user import-environment DISPLAY
export CM_DIR=/tmp
pkill -f "bash /usr/bin/clipmenud"; pkill -f "clipnotify"; /usr/bin/clipmenud & 

#exec slstatus &
xsetroot -name "Bismillah"
exec dwmblocks &

#startdwm is script to restart dwm without logout
#exec startdwm

exec dwm
