#!/bin/bash

#¿Cuántas veces fueron los niveles de los individuos 3 y 27 grabados?

#Para los individuos 3

cut -f 1 Gesquiere2011_data.csv | grep -w 3 | grep -c 3

#Para los individuos  27

cut -f 1 Gesquiere2011_data.csv | grep -w 27 | grep -c 27

#Luego se crea un vector para los IDS del documento

vdownloads=`tail -n +2 Gesquiere2011_data.csv | cut -f 1 | uniq `

for x in $vdownloads
do
ids=`bash Conteo_Ejercicio_1-10-2.sh Gesquiere2011_data.csv $x`
echo "ID:" $x "conteo:" $ids
done

