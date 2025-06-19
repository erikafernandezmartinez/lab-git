#!/bin/bash
archivos="./*.fastq"

for archivo in $archivos
do
# Dividir el archivo en siete partes y conservar solo la primera
split -n 7 -d "$archivo" "${archivo}_parte"
done
rm *_parte[0-9][1-9]

