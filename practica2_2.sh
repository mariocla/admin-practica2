#!/bin/bash IFS=":"
#873635 Ferradas Agudo, Andrea, T, 2, A
#875371 Clavero Artal, Mario, T, 2, A

for archivo in "$@"
do
    # Si no existe el fichero
    if [ ! -f "$archivo" ]
    then
        echo "$archivo no existe"
    else
        # Muestra el contenido del fichero
        more "$archivo"
    fi
done
