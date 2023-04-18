

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
echo "Script Directory : $SCRIPT_DIR"
echo "Make sure that the file to symlink from deleted!"
echo "symlink ~/.xinitrc to $SCRIPT_DIR/.xinitrc file..., Please Dont remove this dotfiles folder"
ln -s "$SCRIPT_DIR/.xinitrc" ~/.xinitrc && echo ".xinitrc symlinked"
echo "symlink ~/.bashrc to $SCRIPT_DIR/.bashrc file..., Please Dont remove this dotfiles folder"
ln -s "$SCRIPT_DIR/.bashrc" ~/.bashrc && echo ".bashrc symlinked"

#ln -s "$SCRIPT_DIR/.vimrc" ~/.xinitrc && echo ".vimrc symlinked"
