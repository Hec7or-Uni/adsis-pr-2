#!/bin/bash
#798095, Toral Pallas, Hector, M, 3, B

for file in "$@"; do
	if [ -f "$file" ]; then
		more -d "$file"
	else
		echo "$file no existe"
	fi
done

exit 0
