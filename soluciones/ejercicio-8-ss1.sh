#!/bin/bash

# Verificar que se haya pasado un parámetro
if [ -z "$1" ]; then
  echo "No se ha añadido ningún parámetro"
  exit 1
fi

# Obtener la IP del dominio
ip_dominio=$(dig +short $1)

# Mostrar la IP del dominio
echo "La IP del dominio $1 es: $ip_dominio"