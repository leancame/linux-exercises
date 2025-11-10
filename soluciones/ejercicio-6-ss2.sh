#Crea un script donde se use la orden `printf` (salida formateada) de 3 formas distintas.

#!/bin/bash

# Ejemplo 1: Imprimir una cadena de texto simple
printf "%-20s Hola, mundo!\n"

# Ejemplo 2: Imprimir variables con formato
nombre="Juan"
edad=25
altura=1,75

printf "Nombre: %s\n" "$nombre"
printf "Edad: %d años\n" "$edad"
printf "Altura: %.2f metros\n" "$altura"

# Ejemplo 3: Imprimir una tabla formateada
printf "%-10s %-10s %-10s\n" "Nombre" "Edad" "Altura"
printf "%-10s %-10d %-10.2f\n" "Ana" 30 1,65
printf "%-10s %-10d %-10.2f\n" "Luis" 28 1,80
printf "%-10s %-10d %-10.2f\n" "Marta" 22 1,70