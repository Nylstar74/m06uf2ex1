#!/bin/bash
# Casanova Oscar
# M06uf2ex1
# p04.sh
clear

echo “Especifica la ruta del archivo que quieres copiar de la carpeta /etc”
read path
if  [[ -d $path ]]
then
	for FILE in $path/*
	do
		if [[ -f $FILE ]]
		then
				cp /etc/$FILE $FILE.orig
		else
			echo “No existe el archivo o esta mal escrito”
		fi
	done
else
    echo “Es necesaria la ruta del directorio”
fi
