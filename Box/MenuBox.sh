#!/bin/bash

# MenuBox demo

# Type: DEMO
# Dev: Shell
# Date: 10/04/2019
# Author: KURO-CODE

OPTION=$(whiptail --title "Menu Box" --menu "Select an distro" 15 60 4 \ "1" "Ubuntu" \ "2" "Kali" \ "3" "Blackbuntu" \ "4" "Arch" 3>&1 1>&2 2>&3)

EXIT=$?
if [ $EXIT = 0 ]; then
	whiptail --title "Message Box" --msgbox "Your choice is $OPTION" 10 60 #--> Message box
else
	whiptail --title "Message Box" --msgbox "EXIT." 10 60 #--> Message box
fi
