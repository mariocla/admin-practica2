#!/bin/bash
#873635 Ferradas Agudo, Andrea, T, 2, A
#875371 Clavero Artal, Mario, T, 2, A

letra='^[a-zA-Z]'
numero='^[0-9]'
echo -n "Introduzac una letra: "
read caracter
if [[ $caracter =~ $letra ]]
then
    echo "$caracter es una letra"
else
    if [[ $caracter =~ $numero ]]
    then
        echo "$caracter es un numero"
    else
        echo "$caracter es un caracter especial"
    fi
fi