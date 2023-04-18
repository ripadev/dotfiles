!#/bin/bash

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
echo "Run Symlinkdotfiles.sh to symlink to Dotfiles/.* files..."
echo "make clean install dwm, st, and dwmblocks"
cd "$SCRIPT_DIR/dwm" && sudo make clean install
cd "$SCRIPT_DIR/st" && sudo make clean install
cd "$SCRIPT_DIR/dwmblocks" && sudo make clean install
mkdir -p ~/.local/bin && cp $SCRIPT_DIR/dwmblocks/bin/* ~/.local/bin/

