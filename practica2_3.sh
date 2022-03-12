#!/bin/bash
#798095, Toral Pallas, Hector, M, 3, B

# Comprueba que el numero de parametros sea = a "1"
if [ "$#" != "1" ]; then
        echo "Sintaxis: practica2_3.sh <nombre_archivo>" 
        exit 1
fi

if [ -f "$1" ]; then
        chmod ug+x "$1" 
        # recorta la cadena donde aparecen los permisos del fichero
	stat "$1" | awk "NR==4" | cut -c 15-24
        exit 0
else
	echo "$1 no existe"
	exit 1
fi
