#!/bin/bash
#798095, Toral Pallas, Hector, M, 3, B

echo -n "Introduzca el nombre de un directorio: "
read path

if [ -d "$path" ]; then
	nfich=$(find $path -type f | wc -l)
	ndirs=$(find $path -type d | wc -l)
	ndirs=$(expr $ndirs - 1) 
	echo "El numero de ficheros y directorios en $path es de ${nfich} y ${ndirs}, respectivamente"
	exit 0
else
	echo "$path no es un directorio"
	exit 1
fi
