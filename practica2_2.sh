#!/bin/bash
#798095, Toral Pallas, Hector, M, 3, B

# Itera sobre todos los ficheros introducidos como parametro
for file in "$@"; do
	if [ -f "$file" ]; then
		# Prompt with "[Press space to continue, 'q' to quit.]", and display "[Press 'h' for instructions.]" instead of ringing the bell when an illegal key is pressed.
		more -d "$file"
	else
		echo "$file no es un fichero"
	fi
done

exit 0
