#!/bin/bash

# Check Distro Module
#
# Dev: Shell
# Date: 03/07/2019
# Coded By Kuro-Code

#~~~~ Check Distro ~~~~

Vname=`lsb_release -a`
clear
echo $Vname | grep ID | awk '{print $3,$6,$7}'
