#!/bin/bash
#873635 Ferradas Agudo, Andrea, T, 2, A
#875371 Clavero Artal, Mario, T, 2, A

echo -n "Introduzca el nombre de un directorio: "
read dir

if [ ! -d $dir ]
then
    echo "$dir no es un directorio"
else
    num_files=$(ls -l "$dir" | grep ^- | wc -l)
    num_dirs=$(ls -l "$dir" | grep ^d | wc -l)
    echo "El numero de ficheros y directorios en $dir es de $num_files y $num_dirs, respectivamente"
fi
