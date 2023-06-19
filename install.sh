#!/usr/bin/bash

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)


read -p "Install dwm, dmenu, st, dwmbloks and needed packages? (yes/no) " yn
case $yn in 
	yes ) echo ok, we will proceed;
		sudo pacman --needed -S - < $SCRIPT_DIR/pkglist.txt;
		echo "Cloning and installing needed repository.....";
		git clone https://github.com/riparuk/dwm $SCRIPT_DIR/dwm && cd "$SCRIPT_DIR/dwm" && sudo make clean install && echo "dwm.....INSTALLED!";
		git clone https://github.com/riparuk/dmenu $SCRIPT_DIR/dmenu &&	cd "$SCRIPT_DIR/dmenu" && sudo make clean install && echo "dmenu.....INSTALLED!";
		git clone https://github.com/riparuk/st $SCRIPT_DIR/st && cd "$SCRIPT_DIR/st" && sudo make clean install && echo "st.....INSTALLED!";
		git clone https://github.com/riparuk/dwmblocks $SCRIPT_DIR/dwmblocks &&	cd "$SCRIPT_DIR/dwmblocks" && sudo make clean install && echo "dwmblocks.....INSTALLED!";
		mkdir -pv ~/.local/bin && cp -rfv $SCRIPT_DIR/*/bin/* ~/.local/bin/ && cp -rfv $SCRIPT_DIR/startdwm ~/.local/bin && echo "copied all bin files needed to ~/.local/bin/";;
	no ) echo Skipping...;;
	* ) echo invalid response;
		exit 1;;
esac


read -p "Copy all the dotfiles and cofiguration preferences? (yes/no) " yn
case $yn in 
	yes ) echo ok, we will proceed;
		cp -fv $SCRIPT_DIR/dots/.[^.]* ~/ && echo "All dotfiles copied.....(Done)!";
		cp -fv $SCRIPT_DIR/background.jpg ~/ && echo "Copied Default Background";
		echo "Extract to ~/.themes/ and ~/.icons/.....";
		mkdir -p ~/.themes;
		mkdir -p ~/.icons;
		tar -xf $SCRIPT_DIR/.themes/Nordic-darker.tar.gz -C ~/.themes/ && echo "Extract to ~/.themes.....SUCCESS";
		tar -xf $SCRIPT_DIR/.icons/Nordic-darker.tar.gz -C ~/.icons/ && echo "Extract to ~/.icons.....SUCCESS";
		echo "Copy .config/ configuration to ~/.config/ .....";
		cp -rfv $SCRIPT_DIR/.config/* ~/.config/ && echo "Copied.....SUCCESS";;
	no ) echo Skipping...;;
	* ) echo invalid response;
		exit 1;;
esac

read -p "Install Standalone Notification Server (Battery,etc)? (yes/no) " yn
case $yn in 
	yes ) echo ok, we will proceed;
		sudo pacman --needed -Sy dunst libnotify;;
	no ) echo Skipping...;;
	* ) echo invalid response;
		exit 1;;
esac


echo "===Please reboot to take effect!==="
