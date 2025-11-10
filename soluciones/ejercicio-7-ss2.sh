#!/bin/bash

# Solicitar al usuario el peso y la estatura
read -p "¿Introduce tu peso en kilogramos? " peso
read -p "¿Introduce tu estatura en metros? " altura

# Calcular el IMC
IMC=$(echo "scale=2; $peso/($altura*$altura)" | bc -l)

# Mostrar la salida con saltos de línea y tabulaciones
echo -e "\n\tPeso: $peso kg"
echo -e "\tEstatura: $altura metros"
echo -e "\tÍndice de Masa Corporal (IMC): $IMC"