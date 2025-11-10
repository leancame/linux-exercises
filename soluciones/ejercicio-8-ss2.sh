#!/bin/bash

usuario=$1

echo -e "Vamos a mostrar los procesos de este usuario:\n"
ps -u $usuario
echo -e "\n"

echo -e "Mostraremos los procesos en forma de árbol:\n"
pstree $usuario
echo -e "\n"

echo -e "Mostraremos más datos del usuario a tiempo real:\n"
sleep 1
top -u $usuario






