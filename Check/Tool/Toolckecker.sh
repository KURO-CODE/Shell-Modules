#!/bin/bash

# Tool Checker Module
# Author: Kuro-Code 
# Date: 09/08/2019

function Tool_Checker() {
	clear
	echo -ne "Apache...."
	if ! hash apache2 2>/dev/null; then
		echo -e "Not installed [x]"
		sleep 0.25
	else
		echo -e "[Installed]"
		sleep 0.25
	fi
	echo -ne "Php......."
	if ! hash php7.2 2>/dev/null; then
		echo -e "Not installed [x]"
		sleep 0.25
	else
		echo -e "[Installed]"
		sleep 0.25
	fi
}
Tool_Checker  
