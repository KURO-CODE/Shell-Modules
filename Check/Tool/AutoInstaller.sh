#!/bin/bash

# Auto Installer 
# Tool checker + auto install
# Author: Kuro-Code
# Date: 09/08/2019

function check_Dep() {
	clear
	echo -ne "apache...."
	if ! hash apache2 2>/dev/null; then 
		Tool1="apache2"
		echo $Tool1 >> Add.txt
		echo -e "Not installed [x]"
		sleep 0.25
	else
		echo -e "[Installed]"
		sleep 0.25
	fi
	echo -ne "Php......."
	if ! hash php7.2 2>/dev/null; then
		Tool2="php7.2"
		echo $Tool2 >> Add.txt
		echo -e "Not installed [x]"
		sleep 0.25
	else
		echo -e "[Installed]"
		sleep 0.25
	fi

	if [ ! -f "Add.txt" ]; then
		echo -e "check_root_perm"
		sleep 4
		clear
		exit
	else
		clear
		echo -e " ~ Tool install ~\n------------------"
		Tool_F=`cat Add.txt`
		echo -e "-->> Installation, please wait...\n"
		echo $Tool_F
		sleep 3
		apt install $Tool_F -y &&
		rm -f Add.txt
		sleep 10
		check_Dep
	fi
}
check_Dep
