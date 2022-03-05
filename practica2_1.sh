#!/bin/bash
#798095, Toral Pallas, Hector, M, 3, B

echo -n "Introduzca el nombre del fichero: "
read filename

if [ -f "$filename" ]; then
	ls -l "$filename" | cut -c 2-4
	exit 0
else
	echo "$filename no existe"
	exit 1
fi
