#!/bin/bash

# CheckLang Module for check language

# Date: 09/08/2019
# Author: Kuro-Code

#***** OPTION Check System Language *****
function Check_Locale_Lang() {
	DEFAULT=`locale |grep "LANGUAGE"`
  echo -e "Language $DEFAULT"`
  sleep 3
  clear
}

Check_Locale_Lang
