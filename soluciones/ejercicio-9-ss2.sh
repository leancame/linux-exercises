#!/bin/bash

# Verifica si no se han pasado parámetros al script
if [ $# -eq 0 ];then

echo "No se ha añadido parámetros"

fi

# Itera sobre cada parámetro pasado al script
for usuario in $@; do
    # Verifica si el usuario existe en el archivo /etc/passwd
    if grep -q "^$usuario:" /etc/passwd; then
        echo "Existe el usuario $usuario"
    else
        echo "No existe $usuario"
    fi
done