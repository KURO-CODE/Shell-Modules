#!/bin/bash

# Wireless card Selection Module
#
# Dev: Shell
# Date: 03/07/2019
# Coded By Kuro-Code

A=`ifconfig |grep 'wl' |awk '{print $1}'`
B=`echo $A |sed 's/ /\n/g' |cut -f1 -d :`
echo -e "   ~ Select device ~\n   -----------------\n"
echo $A |sed 's/ /\n/g' |cut -f1 -d : |nl
echo
read -p " Device: " SETDEVICE
DEVICE=`echo $A |sed 's/ //g' |cut -f${SETDEVICE} -d :`
I="$DEVICE"
II=`$B |grep $I`
	if [ "$I" != "$II" ]; then
        clear
        echo -e "OK, Device is $DEVICE"
	else
        clear
#        LOGO
        echo -e "Error, device not found..."
        sleep 4
#        Main
fi
