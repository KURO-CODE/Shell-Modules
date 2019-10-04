#!/bin/bash

# PasswordBox demo

# Type: DEMO
# Dev: Shell
# Date: 10/04/2019
# Author: KURO-CODE

PASSWORD=$(whiptail --title "Password Box" --passwordbox "User password" 10 60 3>&1 1>&2 2>&3)

EXIT=$?
if [ $EXIT = 0 ]; then
	whiptail --title "Message Box" --msgbox "Your password is: $PASSWORD" 10 60 #--> Message box
else
	whiptail --title "Message Box" --msgbox "Exit." 10 60 #--> Message box
fi
