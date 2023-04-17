#!/bin/bash

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
echo "Script Directory : $SCRIPT_DIR";

echo "looking for ~/.xinitrc file...";
FILE=~/.xinitrc;
if [ -f "$FILE" ]; then
	echo "$FILE exists.";
	cp $FILE $SCRIPT_DIR && echo "copied $FILE to current script directory"
else
	echo "$FILE file does not exist. PASS"
fi

