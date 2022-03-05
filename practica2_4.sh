#!/bin/bash
#798095, Toral Pallas, Hector, M, 3, B

echo -n "Introduzca una tecla: "
read -n 1 char

if [[ $char =~ [a-zA-Z] ]]; then
	echo -e "\n$char es una letra"
	exit 0
elif [[ $char =~ [0-9] ]]; then
	echo -e "\n$char es un numero"
	exit 0
else
	echo -e "\n$char es un caracter especial"
	exit 0 
fi

exit 1
