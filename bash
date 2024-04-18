#!/bin/bash

directorio="/home/jorge/CScrip/Concurso/MateriaClases/archivos_a_separar"

usuarios=("carlos" "eduardo" "esmeralda")
for usuario in "${usuarios[@]}"
do
    mkdir -p "$directorio/$usuario"
done

for usuario in "${usuarios[@]}"
do
    mv "$directorio/$usuario"* "$directorio/$usuario"
done

extensiones=("jpg" "mp3" "mp4")
for usuario in "${usuarios[@]}"
do
    for extension in "${extensiones[@]}"
    do
        mkdir -p "$directorio/$usuario/$extension"
    done
done

for usuario in "${usuarios[@]}"
do
    for extension in "${extensiones[@]}"
    do
        mv "$directorio/$usuario"/*.$extension "$directorio/$usuario/$extension"
    done
done

echo "Archivos separados correctamente."
