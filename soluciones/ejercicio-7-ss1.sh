#!/bin/bash

# Solicitar al usuario el primer valor
echo "Ingresa el primer número:"
read num1

# Solicitar al usuario el segundo valor
echo "Ingresa el segundo número:"
read num2

# Solicitar la operación a realizar
echo "Ingresa la operación (+, -, *, /):"
read operacion

if [ "$operacion" == "+" ];then
    echo "La sumatoria es $(($num1 + $num2))"
elif [ "$operacion" == "-" ];then
    echo "La diferencia es $(($num1 - $num2))"
elif [ "$operacion" == "*" ];then
    echo "La múltiplicación es $(($num1 * $num2))"
elif [ "$operacion" == "/" ];then
     if [ "$num2" -ne 0 ]; then
        echo "La división es $(($num1 / $num2))"
    else
        echo "Error: No se puede dividir entre cero"
    fi
else
    echo "Operación no válida."
fi
