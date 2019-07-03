#!/bin/bash


# Check Distro Plus Module
#
# Dev: Shell
# Date: 03/07/2019
# Coded By Kuro-Code

Vname=`lsb_release -a | grep ID | awk '{print $3}'` # >>> Var Distro Name <<<
clear
case $Vname in
	"Ubuntu")
		echo -e "$Vname" 
		sleep 3
#   *** example *** 
#		device="wlp2s0" >>> Var Wireless card <<<
#		Mon="mon0" >>> Monitor Mode <<<
#		$airmon start "$device"
	;;
	"Kali")
		echo -e "$Vname"
		sleep 3
#   *** example ***
#		device="wlan0" >>> Var Wireless card <<<
#		Mon2="mon" >>> Var <<<
#		Mon="$device$Mon2" >>> Var Monitor Mode <<<
#		$airmon start "$device"
	;;

	"LinuxMint")
		echo -e "$Vname"
		sleep 3
#   *** example ***
#		...
	;;

	"")
		Vname=`cat /etc/redhat-release |awk '{print $1}'`
		echo -e "$Vname"
		sleep 3
#    *** example ***
#		...
	;;
	esac 
