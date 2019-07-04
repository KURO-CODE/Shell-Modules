#!/bin/bash

#title          :Rtxt.sh
#description    :Rainbow colors Text.
#author         :KURO-CODE
#date           :04/07/2019    
#usage          :./Rtxt.sh

for c in {0..255} ; do
    clear
    echo -e "\e[38;05;${c}m Kuro Code"
    sleep 0.1 
done
