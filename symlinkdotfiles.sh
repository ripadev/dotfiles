#!/bin/bash

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
echo "Script Directory : $SCRIPT_DIR"
echo "Pastikan File yang ingin di symlink ke dotfiles directory di hapus terlebih dahulu"

ln -s "$SCRIPT_DIR/.xinitrc" ~/.xinitrc && echo ".xinitrc symlinked"
ln -s "$SCRIPT_DIR/.bashrc" ~/.bashrc && echo ".bashrc symlinked"

#ln -s "$SCRIPT_DIR/.vimrc" ~/.xinitrc && echo ".vimrc symlinked"
