!#/bin/bash

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
echo "Run pacmanpkglist.sh, it may to be needed packages"
source $SCRIPT_DIR/pacmanpkglist.sh
echo "Run Symlinkdotfiles.sh to symlink to Dotfiles/.* files..."
source $SCRIPT_DIR/symlinkdotfiles.sh
echo "make clean install dwm, st, dwmblocks, and dmenu..."
cd "$SCRIPT_DIR/dwm" && sudo make clean install
cd "$SCRIPT_DIR/st" && sudo make clean install
cd "$SCRIPT_DIR/dwmblocks" && sudo make clean install
cd "$SCRIPT_DIR/dmenu" && sudo make clean install
mkdir -p ~/.local/bin && cp $SCRIPT_DIR/dwmblocks/bin/* ~/.local/bin/ && cp $SCRIPT_DIR/startdwm ~/.local/bin

