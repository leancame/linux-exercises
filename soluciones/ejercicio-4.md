# Solución del Ejercicios 4

## 1. Cambiar el valor de la variable PATH

Cambia el valor de la variable PATH para que incluya nuestro directorio personal.

![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%201.png)

Al usar el comando `export` y añadir `PATH="$PATH:$HOME"` estamos exportando a `PATH` nuestro propio usuario añadiéndolo al final de la cadena tal y como se muestra después con el comando `echo`.

## 2. Modificar Archivos de Configuración de Shell

El cambio en la variable PATH en el ejercicio anterior se pierde al cerrar la terminal, por lo que ahora modifica el archivo `/home/user/.bash_profile` o el `.profile` (`.profile` se ejecuta si no hay `.bash_profile`) para que dicho cambio sea permanente.

Empezamos buscando uno de los dos archivos con el comando `ls`. En este punto, usaremos el comando `nano` para poder modificar el archivo y añadir el export correspondiente, después reiniciaremos el archivo con el comando `source` para no tener que cerrar la terminal. 

![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%202%20Punto%201.png)

![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%202%20Punto%202.png)

![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%202%20Punto%203.png)


## 3. Extraer Subcadenas

Dada la cadena `cadena=abcdeABCDE1234567`, extrae diferentes subcadenas. NO usar ni grep ni cut. Buscar otra forma más simple.

En mi caso he realizado las subcadenas usando el comando `echo` para mostrarlas y una sintaxis sencilla y básica donde `${variable:posicion_inicial:longitud}`

![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%202%20Punto%203.2.png
)

## 4. Búsqueda de Palabra en Ficheros

¿En qué ficheros aparece la palabra `FILE`? (En mayúscula o minúscula)

Dicho suspuesto nos sugiere a usar el comando `grep` y algunas de sus opciones. Concretamente apliqué el comando `grep -i -l -r "FILE"` con la finalidad de encontrar los ficheros denominados `FILE`ignorando minúsculas y mayúsulas y con caracter repursivo. 

Al ser una respuesta bastante larga en pantalla, resumiré los conjuntos de fichero donde salen las coincidencias y subiré algunas muestra de código, el resto se adjunta en la carpeta datos. Entre los ficheros más repetidos se encuentra snap, mozilla, config, local, escritorio y cache.


![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%202%20Punto%204.png)

![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%202%20Punto%204.4.png)

![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%202%20Punto%204.7.png)


## 5. Uso de grep con el Fichero /etc/passwd

El fichero `/etc/passwd` tiene el siguiente formato:            
login:password:UID:GID:comentario:HOME:Shell`

    a) Mostrad la línea correspondiente a la cuenta `man`.

![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%205%20man.png)

Con `grep man:` buscaremos la línea concreta que contenga `man:`
    
    b) Mostrad las cuentas que empiecen por `a` o `r`.

![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%205%20ar.png)

Iniciamos la búsqueda añadiendo al comando `^[ar]`lo que permitirá buscar aquellos que empiecen `^` por estas letras.

    c) Mostrad las cuentas que terminen por `c`.

![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%205%20c.png)

Si antes `^` era empezar el símbolo `$` significa finalizar. 
   
    d) Mostrad las cuentas que NO usen `bash` como intérprete de comandos.

![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%205%20bash%201.png)

Cuando buscamos con el comando `grep` podemos añadir características a estas búsquedas. Entre ellas se encuentra el `-v` que permite eliminar de la lista el término buscado encontrando aquellos que no poseen en este caso la terminología `bash`.

    e) Mostrad las cuentas que no empiecen por vocal.

![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%205%20vocales.png)

Al igual que el anterior, usamos el `-v` y posteriormente la expresión regular para no tener en cuenta a las vocales en un inicio `^[aeoiuAEOIU]`.

    f) Mostrad las cuentas que empiecen por mayúscula.

![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%205%20mayusculas.png)

![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%205%20mayusculas%202.png)

En dicho apartado he decidido realizarlo de dos formas diferente. La primera es con la empresión regular `^[A-Z]`para controlar el abecedario en mayúscula, mientras que la segunda forma es `^[[:upper:]]` que realiza el mismo comportamiento.

    g) Mostrad las líneas cuyo tercer campo tenga una sola cifra.

![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%205%20unacifra.png)

En este supuesto añadimos la expresión `^[^:]*:[^:]*:[0-9]:` permitiendo la búsqueda del tercer apartado empezando por el 0 y terminando por el 9. 

    h) Mostrad las líneas que tengan cifras de 3 a 5 dígitos.

![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%205%20devaariascifra.png)

Similar al caso anterior, pero añadimos al comando el `-E` para expresiones extendidas y tras los números sumamos el arco de cifras deseadas con `{3,5}`.

    i) Mostrad las cuentas `root` o de `ftp`.

![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%205%20bashftp.png)

Similar a todos los anteriores, la única diferencia que usamos `|` para separar las palabras.

    j) ¿Qué ficheros de cabecera usan la constante `MAXDOUBLE`?

![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%205%20maxdouble.png)

Comparando con el resto de caso, este archivo se encontraba en la carpeta /urs/include y lo busque de forma repursiva con el `-r` del comando.

    k) ¿En qué ficheros aparece la palabra `bash`? (En mayúscula o minúscula)
![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%205%20bashlimitado.png)

Usando `-i` `-r` y finalizando con el comodín `*` buscamos todos los ficheros bash ignorando mayúscula o minúscula y además con carácter retroactivo. 

## 6. Uso de sort

1. Ordenad el fichero `/etc/passwd` por orden alfabético.

    ![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%206%20alfabeticamente.png)

2. Ordenadlo en sentido inverso.

    ![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%206%20inversa.png)

    A través del `-r` conseguimos que sea el sentido inverso.

3. Ordenadlo ignorando mayúsculas.

    ![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%206%20mayusculas.png)

    Usando el `-f` del comando ignoramos las mayúsculas.

4. Ordenadlo según el tercer campo.

    ![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%206%20terceracolumna.png)

    Este supuesto empezamos añadiendo `-t:` para estipular el delimitador que usa esta carpeta siendo `:` y tras este añadimos `-k3` que nos permite ordenar por la tercera columna.

5. Ordenadlo según el tercer campo en orden numérico.

    ![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%206%20ordennumerico.png)

    Idéntico al anterior pero añadimos el `-n` para poder ordenar por número

6. Ordenadlo según el cuarto campo en orden numérico y eliminando repeticiones.

    ![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%206%20eliminarepetidas.png)

    En este caso, encontré la posibilidad de usar desde el propio comando el `-u` dando la posibilidad de eliminar los repetidos. Sin embargo, se puede usar el comando `uniq` y añadirlo con una tubería por ejemplo.

## 7. Uso de Arrays

- Crea un menú empleando arrays. En cada posición del array introduce un plato (ej. Espaguetis; melón con jamón… etc.). Emplea 4 platos diferentes.
- Después modifica un plato (ej. El plato n1 2 por otro diferente).
- Añade un 5º plato al array.
- Muestra todo el menú del día con una orden (todos los elementos del array).
- Ahora, con `RANDOM`, selecciona y muestra aleatoriamente uno de los platos.

![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%207.png)

Inicio con una variable menú donde introduzco los elementos que forman el array con cuatros platos. Posteriormente, modifico el situado en segundo lugar cambiando su nombre. En tercer lugar, añado un siguiente elemento. Muestros los datos con el comando `echo` y usando además `${menu[@]}`que mostrará todos los elementos. Por último, añadimos el random con la sentencia `${menu[RANDOM % ${#menu[@]}]}` mostrando de nuestra variable un plato al azar.

## 8. Uso de > y >>

Crea un archivo llamado `redirreciones.txt` y añade  en la primera linea **mi Nombre es**,ahora prueba a concatenar tu nombre con los dos operadores y comprueba la diferencia de su uso. 

Si usamos `>` solo crearemos el archivo con esa línea de código sobrescribiendo cada vez que lo volvamos a usar, mientras que si usamos `>>` añadiremos el texto al final del todo. 

![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%208.png)

## 9. Uso de la redirrecion

Lista todos archivos de tu directorio actual y usa el operador de redirrecion `|` para filtrar su salida y buscar el archivo `redirreciones.txt`.

Usamos el comando `ls` con el `*` para listar el contenido del directorio con sus subdirectorios. Luego, utilizamos la tubería con la intención de añadir otro comando que será `grep` para buscar el archivo concreto que queremos.

![Captura sobre el código](../datos//Ejercicio4/ejercicio4%20apartado%209ç.png)