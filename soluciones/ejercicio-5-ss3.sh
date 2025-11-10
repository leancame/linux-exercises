#!/bin/bash 

#Mostrar el nombre del script
echo "El nombre del script es $0"

#Mostrar el número de parámetros
echo “El número de parámetros añadidos es: $#”

#La lista de parámetros
echo "Lista de todos los parámetros: $@"

#Enseñar el identificador del id del usuario
echo "Este es mi id de usuario $UID"

#Presentar nuestro usuario
echo "Este es el usuario: $USER"

#Directorio home del usuario
echo "Este es el home de mi usuario $HOME"

#Directorio actual
echo "Se encuentra en $(pwd)."