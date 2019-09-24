#!/bin/bash

# Turn Signal DEMO

# Dev: Shell
# Type: Demo
# Date: 09/18/2019
# Author: Kuro-Code


#**** Color ****
G="\033[1;32m"
Y="\033[1;33m"
R="\033[1;31m"
EC="\033[0m"

#~~~~ Flag ~~~~
FLAG() {
	clear
	X=0
	while (( $X < 20)); do
		echo -e "$G DDDDD                                 SSSSS  iii                         lll 
 DD  DD    eee  mm mm mmmm   oooo     SS           gggggg nn nnn    aa aa lll 
 DD   DD ee   e mmm  mm  mm oo  oo     SSSSS  iii gg   gg nnn  nn  aa aaa lll 
 DD   DD eeeee  mmm  mm  mm oo  oo         SS iii ggggggg nn   nn aa  aaa lll 
 DDDDDD   eeeee mmm  mm  mm  oooo      SSSSS  iii      gg nn   nn  aaa aa lll 
                                                  ggggg 
"
		sleep 0.5
		clear
		echo -e "$Y DDDDD                                 SSSSS  iii                         lll 
 DD  DD    eee  mm mm mmmm   oooo     SS           gggggg nn nnn    aa aa lll 
 DD   DD ee   e mmm  mm  mm oo  oo     SSSSS  iii gg   gg nnn  nn  aa aaa lll 
 DD   DD eeeee  mmm  mm  mm oo  oo         SS iii ggggggg nn   nn aa  aaa lll 
 DDDDDD   eeeee mmm  mm  mm  oooo      SSSSS  iii      gg nn   nn  aaa aa lll 
                                                  ggggg 
"
		sleep 0.5
		clear
		echo -e "$R DDDDD                                 SSSSS  iii                         lll 
 DD  DD    eee  mm mm mmmm   oooo     SS           gggggg nn nnn    aa aa lll 
 DD   DD ee   e mmm  mm  mm oo  oo     SSSSS  iii gg   gg nnn  nn  aa aaa lll 
 DD   DD eeeee  mmm  mm  mm oo  oo         SS iii ggggggg nn   nn aa  aaa lll 
 DDDDDD   eeeee mmm  mm  mm  oooo      SSSSS  iii      gg nn   nn  aaa aa lll 
                                                  ggggg 
"
		sleep 0.5
		clear
		X=$(($X+1))
	done
	echo -e "$EC"
	clear
	exit
}
FLAG