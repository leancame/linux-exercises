# Enunciados de Ejercicios 4

## 1. Cambiar el valor de la variable PATH

Cambia el valor de la variable PATH para que incluya nuestro directorio personal.

## 2. Modificar Archivos de Configuración de Shell

El cambio en la variable PATH en el ejercicio anterior se pierde al cerrar la terminal, por lo que ahora modifica el archivo `/home/user/.bash_profile` o el `.profile` (`.profile` se ejecuta si no hay `.bash_profile`) para que dicho cambio sea permanente.

## 3. Extraer Subcadenas

Dada la cadena `cadena=abcdeABCDE1234567`, extrae diferentes subcadenas. NO usar ni grep ni cut. Buscar otra forma más simple.

## 4. Búsqueda de Palabra en Ficheros

¿En qué ficheros aparece la palabra `FILE`? (En mayúscula o minúscula)

## 5. Uso de grep con el Fichero /etc/passwd

El fichero `/etc/passwd` tiene el siguiente formato:            
login:password:UID:GID:comentario:HOME:Shell`

    a) Mostrad la línea correspondiente a la cuenta `man`.

    b) Mostrad las cuentas que empiecen por `a` o `r`.

    c) Mostrad las cuentas que terminen por `c`.

    d) Mostrad las cuentas que NO usen `bash` como intérprete de comandos.

    e) Mostrad las cuentas que no empiecen por vocal.

    f) Mostrad las cuentas que empiecen por mayúscula.

    g) Mostrad las líneas cuyo tercer campo tenga una sola cifra.

    h) Mostrad las líneas que tengan cifras de 3 a 5 dígitos.

    i) Mostrad las cuentas `root` o de `ftp`.

    j) ¿Qué ficheros de cabecera usan la constante `MAXDOUBLE`?

    k) ¿En qué ficheros aparece la palabra `bash`? (En mayúscula o minúscula)

## 6. Uso de sort

1. Ordenad el fichero `/etc/passwd` por orden alfabético.

2. Ordenadlo en sentido inverso.
3. Ordenadlo ignorando mayúsculas.
4. Ordenadlo según el tercer campo.
5. Ordenadlo según el tercer campo en orden numérico.
6. Ordenadlo según el cuarto campo en orden numérico y eliminando repeticiones.

## 7. Uso de Arrays

- Crea un menú empleando arrays. En cada posición del array introduce un plato (ej. Espaguetis; melón con jamón… etc.). Emplea 4 platos diferentes.
- Después modifica un plato (ej. El plato n1 2 por otro diferente).
- Añade un 5º plato al array.
- Muestra todo el menú del día con una orden (todos los elementos del array).
- Ahora, con `RANDOM`, selecciona y muestra aleatoriamente uno de los platos.

## 8. Uso de > y >>

Crea un archivo llamado `redirreciones.txt` y añade  en la primera linea **mi Nombre es**,ahora prueba a concatenar tu nombre con los dos operadores y comprueba la diferencia de su uso.  

## 9. Uso de la redirrecion

Lista todos archivos de tu directorio actual y usa el operador de redirrecion `|` para filtrar su salida y buscar el archivo `redirreciones.txt`.