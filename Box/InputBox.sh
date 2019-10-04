#!/bin/bash

# InputBox demo

# Type: DEMO
# Dev: Shell
# Date: 10/04/2019
# Author: KURO-CODE

NAME=$(whiptail --title "Input Box" --inputbox "What your name? " 10 60 3>&1 1>&2 2>&3)

EXIT=$?
if [ $EXIT = 0 ]; then
	whiptail --title "Message Box" --msgbox "Hello, $NAME :)" 10 60 #--> Message box
else
	whiptail --title "Message Box" --msgbox "Exit." 10 60 #--> Message box
fi
