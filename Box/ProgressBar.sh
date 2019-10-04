#!/bin/bash

# ProgressBar demo

# Type: DEMO
# Dev: Shell
# Date: 10/04/2019
# Author: KURO-CODE

{
for ((i = 0 ; i <= 100 ; i+=20)); do
	sleep 1
	echo $i
done
} | whiptail --gauge "Please wait..." 6 60 0
