#!/bin/bash
#873635 Ferradas Agudo, Andrea, T, 2, A
#875371 Clavero Artal, Mario, T, 2, A

echo -n "Introduzca el nombre del fichero: "
read archivo

if [ ! -f "$archivo" ]
then
    echo "$archivo no existe"
else
    echo -n "Los permisos del archivo $archivo son: "
    
    # Miramos si tiene permisos de lectura
    if [ -r "$archivo" ]
    then
        echo -n "r"
    else
        echo -n "-"
    fi
    
    # Miramos si tiene permisos de escritura
    if [ -w "$archivo" ]
    then
        echo -n "w"
    else
        echo -n "-"
    fi
    
    # Miramos si tiene permisos de ejecucion
    if [ -x "$archivo" ]
    then
        echo "x"
    else
        echo "-"
    fi
fi
        