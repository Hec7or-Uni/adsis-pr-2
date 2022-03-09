#!/bin/bash
#798095, Toral Pallas, Hector, M, 3, B

if [ $(find $HOME -maxdepth 1 -name "bin*" -type d | wc -l) -ge 1 ]; then
	path=$(find $HOME -maxdepth 1 -name "bin*" -type d | xargs stat -c %n,%Y | sort -n -k2 -r | head -n 1 | cut -f1 -d ",")
else
	path=$(mktemp -d -p "${HOME}/" binXXX)
	echo "Se ha creado el directorio $path"
fi

echo "Directorio destino de copia: $path"

files=$(find . -type f -executable)
count=0
for i in ${files[@]}; do
	if  [ !$(cp $i $path) ]; then
		let count+=1
		echo "$i ha sido copiado a $path"
	fi	
done 

if [ $count -eq 0 ]; then
	echo "No se ha copiado ningun archivo"
else 
	echo "Se han copiado $count archivos"
fi

exit 0
