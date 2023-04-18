

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

read -p "Do you want to install packages in pkglist.txt using pacman? (yes/no) " yn

case $yn in 
	yes ) echo ok, we will proceed;
		sudo pacman -S - < $SCRIPT_DIR/pkglist.txt;;
	no ) echo Skipping...;;
	* ) echo invalid response;
		exit 1;;
esac
