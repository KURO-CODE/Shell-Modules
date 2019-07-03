#!/bin/bash

# Check Distro Module
#
# Dev: Shell
# Date: 03/07/2019
# Coded By Kuro-Code

#~~~~ Check Distro ~~~~
Vname0=`lsb_release -a`
Vname=`lsb_release -a | grep ID | awk '{print $3}'` # >>> Var Distro Name <<<
clear
case $Vname in
	"Ubuntu")
		echo -e $Vname0 | grep ID | awk '{print $3,$6,$7}' 
		sleep 3
#         *** example *** 
#		device="wlp2s0" >>> Var Wireless card <<<
#		Mon="mon0" >>> Monitor Mode <<<
#		$airmon start "$device"
	;;
	"Kali")
		echo $Vname0 | grep ID | awk '{print $3,$6,$7}'
		sleep 3
#         *** example ***
#		device="wlan0" >>> Var Wireless card <<<
#		Mon2="mon" >>> Var <<<
#		Mon="$device$Mon2" >>> Var Monitor Mode <<<
#		$airmon start "$device"
	;;

	"LinuxMint")
		echo $Vname0 | grep ID | awk '{print $3,$6,$7}'
		sleep 3
#         *** example ***
#		...
	;;

	"")
		Vname0=`cat /etc/redhat-release |awk '{print $1}'`
		echo -e "$Vname0"
		sleep 3
#         *** example ***
#		...
	;;
	esac 
