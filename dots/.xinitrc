# Statusbar loop

#while true; do
#   xsetroot -name "$( date +"%F %R" )"
#   sleep 1m    # Update time every minute
#done &


# clipmenu
systemctl --user import-environment DISPLAY
export CM_DIR=/tmp
pkill -f "bash /usr/bin/clipmenud"
pkill -f "clipnotify" 
/usr/bin/clipmenud & 

# Status bar
xsetroot -name "Bismillah" 
/usr/local/bin/dwmblocks &

#startdwm is script to restart dwm without logout
picom -b
feh --no-fehbg --bg-scale '/home/ripa/background.jpg'
#startdwm 
exec dwm
