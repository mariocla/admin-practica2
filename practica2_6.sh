#!/bin/bash
#873635 Ferradas Agudo, Andrea, T, 2, A
#875371 Clavero Artal, Mario, T, 2, A

dir=$(stat -c %n,%Y ~/bin??? 2> /dev/null | sort -t ',' -k 2 | head -n 1 | cut -d ',' -f 1)

if [ "$dir" = "" ]
then
    idr=$(mktemp -d ~/binXXX)
    echo "Se ha creado el directorio $dir"
fi

echo "Directorio destino de copia: $dir"

contador=0
for fichero in $(ls)
do
    if [ -f "$fichero" -a -x "$fichero" ]
    then
        cp -r "$fichero" "$dir"
        echo "./$fichero ha sido copiado a $dir"
        contador=$((contador+1))
    fi
done

if [ ! $contador -eq 0 ]
then
    echo "Se han copiado $contador archivos"
else
    echo "No se ha copiado ningun archivo"
fi