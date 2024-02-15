#!/bin/bash
#873635 Ferradas Agudo, Andrea, T, 2, A
#875371 Clavero Artal, Mario, T, 2, A

if [ "$#" -ne "1" ]
then
    echo "Sintaxis: practica2:3.sh <nombre_archivo>"
else
    if [ ! -f "$1" ]
    then
        echo "$1 no existe"
    else
        chmod ug+x "$1"
        stat -c "%A" "$1"
    fi
fi