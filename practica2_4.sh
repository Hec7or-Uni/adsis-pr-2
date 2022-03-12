#!/bin/bash
#798095, Toral Pallas, Hector, M, 3, B

echo -n "Introduzca una tecla: "
# -n nchars return after reading NCHARS characters rather than waiting for a newline, but honor a delimiter if fewer than NCHARS characters are read before the delimiter
read -n 1 char


# [[ S =~ R]] Evalua expresiones regulares 
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
