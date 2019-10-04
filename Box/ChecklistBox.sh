#!/bin/bash

# ChecklistBox demo

# Type: DEMO
# Dev: Shell
# Date: 10/04/2019
# Author: KURO-CODE

OPTION=$(whiptail --title "Checklist Box" --checklist \ "Distro select" 15 60 4 \ "Debian" "Popular" OFF \ "Blackbuntu" "Sec Distro" ON \ "Kali" "Sec distro" OFF \ "BlackArch" "Sec distro" OFF 3>&1 1>&2 2>&3)

EXIT=$?
if [ $EXIT = 0 ]; then
	whiptail --title "Message Box" --msgbox "Your choice is $OPTION." 10 60 #--> Message box
	exit
else
	echo "Exit"
#	EXIT=" "
fi
