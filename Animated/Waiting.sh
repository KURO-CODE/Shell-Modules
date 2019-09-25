#!/bin/bash

# Simple Waiting bar demo

# Type: Demo
# Dev: Shell
# Date: 09/25/2019
# Author: KURO-CODE

#~~~~ Color ~~~~
W='\e[0;37m'
R='\e[0;31m'
G='\e[0;32m'

#~~~~ Var ~~~~
Wait_Msg="Please Wait a moment..."
NameProg="Aircrack-ng"
NP="aircrack-ng"

#~~~~ Start ~~~~
Loading() {
	A=`dpkg --status aircrack-ng`
	B=`echo $A |awk '{print $6}'`
	count=0
	while (( "$count" < "5" )); do
		if [ "$count" -eq "0" ]; then
    			A=`dpkg --status $NP`
    			B=`echo $A |awk '{print $6}'`
    			clear
    		fi
    		echo -e "\r$W[${R}*   ${W}] $Wait_Msg"
    		sleep 0.2
    		clear
    		echo -e "\r$W[${R} *  ${W}] $Wait_Msg"
    		sleep 0.2
    		clear
    		echo -e "\r$W[${R}  * ${W}] $Wait_Msg"
    		sleep 0.2
    		clear
    		echo -e "\r$W[${R}   *${W}] $Wait_Msg"
    		sleep 0.2
    		clear
    		count=$(($count+1))
    	done
    	if [ "$count" -eq "5" ]; then
    		if [ "$B" = "installed" ];then
    			clear
    			echo -e "$W[${G}+${W}] $NameProg...$W[${G}$B$W]"
    			sleep 3
    			clear
    			exit
    		else
    			clear
    			echo -e "$W[${R}x${W}] $NameProg...$W[${R}Not installed$W]"
    			sleep 3
    			clear
    			exit
    		fi
    	fi
}
Loading
