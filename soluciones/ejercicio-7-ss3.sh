#!/bin/bash


# Verificar si se ha proporcionado un parámetro
if [ -z "$1" ]; then
    echo "Por favor, proporciona la ruta de un fichero como parámetro."
    exit 1
fi

# Asignar la ruta del fichero a una variable
fichero=$1

# Comprobar si el fichero existe
if [ ! -e "$fichero" ]; then
    echo "El fichero '$fichero' no existe."
    exit 1
fi

# Verificar si el fichero tiene permisos de ejecución
if [ -x "$fichero" ]; then
    echo "El fichero '$fichero' tiene permisos de ejecución."
else
    echo "El fichero '$fichero' NO tiene permisos de ejecución."
fi
