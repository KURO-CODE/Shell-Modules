#!/bin/bash

# YesNoBox demo

# Type: DEMO
# Dev: Shell
# Date: 10/04/2019
# Author: KURO-CODE

if (whiptail --title "DialBox Yes/No" --yesno "Yes or no?" 10 60) then
	whiptail --title "Message Box" --msgbox "Your choice is Yes." 10 60 #--> Message box
else
	whiptail --title "Message Box" --msgbox "Your choice is No." 10 60 #--> Message box
fi

#Option button language, example: --yes-button "Oui" --no-button "Non"
