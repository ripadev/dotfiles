# Statusbar loop

#while true; do
#   xsetroot -name "$( date +"%F %R" )"
#   sleep 1m    # Update time every minute
#done &

#env

#load
xrdb ~/.Xresources;

# clipmenu
systemctl --user import-environment DISPLAY
export CM_DIR=/tmp
pkill -f "bash /usr/bin/clipmenud"
pkill -f "clipnotify" 
/usr/bin/clipmenud & 

# Status bar
xsetroot -name "Bismillah" 
/usr/local/bin/dwmblocks &

# Set Default App
xdg-mime default pcmanfm.desktop inode/directory

#startdwm is script to restart dwm without logout
picom -b
~/.fehbg &
~/.local/bin/startdwm
dunst &
exec dwm
