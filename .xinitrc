# Statusbar loop

#while true; do
#   xsetroot -name "$( date +"%F %R" )"
#   sleep 1m    # Update time every minute
#done &

# Autostart

clipmenud &
# clipmenu Environment Variable
export CM_DIR=/tmp
#exec slstatus &
xsetroot -name "Bismillah"
dwmblocks &

exec dwm
