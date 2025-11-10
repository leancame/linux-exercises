
#!/bin/bash
echo "Mete varios valores por parámetros:"
read var1 var2 var3

# Mostrar cómo el último valor adquiere más valores que argumentos
echo "Mostrar como el último valor adquiere más valores que argumentos: $var3"

# Unir los valores en una sola variable
combo="$var1 $var2 $var3"

# Verificar si alguno de los valores es nulo
if [ -z "$var1" ] || [ -z "$var2" ] || [ -z "$var3" ]; then
  echo "Uno o más valores son nulos"
fi

# Mostrar los valores introducidos
echo "Valores unidos: $combo"