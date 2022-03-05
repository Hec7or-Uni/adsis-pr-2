#!/bin/bash
#798095, Toral Pallas, Hector, M, 3, B

if [ "$#" != "1" ]; then
        echo "Sintaxis: practica2_3.sh <nombre_archivo>" 
        exit 1
fi

if [ -f "$1" ]; then
        chmod ug+x "$1" 
	stat "$1" | awk "NR==4" | cut -c 15-24
        exit 0
else
	echo "$1 no existe"
	exit 1
fi
