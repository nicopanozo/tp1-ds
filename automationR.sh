#!/bin/bash

for n in {1..35}; do

    # Ejecutar el comando docker con el valor de n y capturar la salida
    output=$(TIMEFORMAT='%3R';time docker run --rm -v /home/ds/:/home -w /home rocker/r-base Rscript recursivo.R $n
2>&1)

    # Extraer el tiempo real de la salida y convertirlo a milisegundos
    real_time_ms=$(echo "$output" | grep real | awk '{print $2*1000}' | cut -d "." -f 1)

done


