#!/bin/bash


# Check Root Module
#
# Dev: Shell
# Date: 03/07/2019
# Coded By Kuro-Code

#**** Check Root ****
	clear
	user=$(whoami)
	if [ "$user" = "root" ]; then
  		echo -e " [X]...You are Root!"
  		sleep 1.2
	else
		echo -e " [X]...You are not Root! \n\n Use: sudo ./ChkDist.sh\n"
 		sleep 1
    		echo -e " [X]...Close" 
    		sleep 1
	fi
