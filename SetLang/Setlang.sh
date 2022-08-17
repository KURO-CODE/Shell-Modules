#!/bin/bash

# SetLang Module for choice language

# Date: 09/08/2019
# Author: Kuro-Code


#~~~~ Languages ~~~~

DEFAULT="US"

US() {
	Dial0="\n 1.English\n 2.French\n 3.Spanish\n 0.Exit\n"
	Dial1=" Select: "
	Dial2="Main Menu"
	Dial3="Welcome"
	Dial4="Module choice of languages"
	Dial5="Select a language"
	Dial6="Your chose English"
	Dial7="Demonstration finished"
	Dial8="ERROR"
}

FR() {
	Dial0="\n 1.Anglais\n 2.Français\n 3.Espagnol\n 0.Sortir\n"
	Dial1=" Sélection: "
	Dial2="Menu Principal"
	Dial3="Bienvenue"
	Dial4="Module choix de langues"
	Dial5="Selectionnez une langue"
	Dial6="Vous avez choisi le Français"
	Dial7="Démonstration terminée"
	Dial8="ERREUR"
}

ES() {
	Dial0="\n 1.Ingles\n 2.Frances\n 3.Espanol\n 0.Salir\n"
	Dial1=" Seleccion: "
	Dial2="Menu Principal"
	Dial3="Bienvenida"
	Dial4="Modulo de eleccion de idiomas"
	Dial5="Selecciona un idioma"
	Dial6="elegiste Espagnol"
	Dial7="Demostracion terminada"
	Dial8="ERROR"
}

#***** OPTION Check System Language *****
#function Check_Locale_Lang() {
#	DEFAULT=`locale |grep "LANGUAGE" |cut -f2 -d "_"`
#}


#~~~~ Main Menu ~~~~
function Select_Lang() {
	clear
	echo -e " $Dial3"
	sleep 2
	clear
	echo -e " $Dial4"
	sleep 2
	clear
	echo -e "\t$Dial2\n\n $Dial5\n\n\t$Dial0"
	read -p " $Dial1" Var_Select
	case $Var_Select in 
		1) US; clear; echo -e " $Dial6"; clear; echo -e " $Dial7"; Select_Lang;;
		2) FR; clear; echo -e " $Dial6"; clear; echo -e " $Dial7"; Select_Lang;;
		3) ES; clear; echo -e " $Dial6"; clear; echo -e " $Dial7"; Select_Lang;;
		0) clear; echo -e " $Dial7"; sleep 3; clear; exit;;
		*) echo -e " $Dial8"; clear; Select_Lang;;
	esac
}
#Check_Locale_Lang
$DEFAULT
Select_Lang
