# Solución del Ejercicios 3

## 1. Creación de directorios y ficheros. Practicar el uso del operador **&&**

Crea la siguiente estructura de directorios: 
```
talavera
└── bootcamp
    └── modulo_linux
        └── grupo1
```
Para la creación de los directorios he usado el comando `mkdir`, mientras que para mostrarlo en árbol con el comando `tree`. Este último, normalmente se debe instalar.

![Captura sobre el código](../datos//Ejercicio%203/ejercicio3apartado1primeracarpeta.png)
![Captura sobre el código](../datos//Ejercicio%203/ejercicio3apartado1primeracarpetaarbol.png)

Crea directorios "grupo2" y "grupo3" dentro del directorio "modulo_linux".
```
talavera
└── bootcamp
    └── modulo_linux
        ├── grupo1
        ├── grupo2
        └── grupo3
```
Seguimos con el comando `mkdir`, pero en este caso añadimos `&&` para crear ambos directorio en una misma línea de código practicando con ello el uso del operador.

![Captura sobre el código](../datos//Ejercicio%203/ejercicio3apartado1segundoejemplo.png)
![Captura sobre el código](../datos//Ejercicio%203/ejercicio3apartado1segundacarpetaarbol.png)

Crea fichero "ejercicio.txt" dentro del directorio "grupo1".
![Captura sobre el código](../datos//Ejercicio%203/ejercicio3apartado1ejercicio.png)

Para la creación de archivos ejecutamos `touch`.

Cambia el nombre del fichero "ejercicio.txt" a "ejercicioFinal.txt".
![Captura sobre el código](../datos//Ejercicio%203/ejercicio3apartado1cambiarnombre.png)
![Captura sobre el código](../datos//Ejercicio%203/ejercicio3apartado1cambiarnombrearbol.png)

Para la modificación de nombres con el comando `mv`y añadiendo el archivo con el nombre antiguo y tras este el nombre nuevo se modifica. En mi caso, use la ruta absoluta del archivo para ello.

Mueve "ejercicioFinal.txt" del directorio "grupo1" al directorio "grupo2". 
![Captura sobre el código](../datos//Ejercicio%203/ejercicio3apartado1movergrupo2.png)
![Captura sobre el código](../datos//Ejercicio%203/ejercicio3apartado1movergrupo2arbol.png)

Al igual que el caso anterior, empleamos `mv` para el movimiento de archivos entre carpetas.

Copia "ejercicioFinal.txt" al directorio "grupo3".
![Captura sobre el código](../datos//Ejercicio%203/ejercicio3apartado1copiararchivo.png)

Para copiar nos valemos del comando `cp`, el cual reproduce el archivo en la ruta que le hayamos asignado.

Borra "ejercicioFinal.txt" del directorio "grupo2".
![Captura sobre el código](../datos//Ejercicio%203/ejercicio3apartado1eliminar.png)

Para borrar usamos el comando `rm` añadiendo la ruta correspondiente. Este comando puede ser peligroso en caso de no usarse con cuidado.


## 2. Comando df -h
Explora su uso. Ejecuta el comando y explica lo que ves. Adjunta imágenes

![Captura sobre el código](../datos//Ejercicio%203/dh.png)

Cuando ejecutamos el comando `df` mostramos la información sobre el espacio disponible y usado en los sistemas de archivo. Nos encontramos ante los archivos montados, su tamaño en un formato adecuado (agregando el `-h`) y no en bytes, el espacio usado, el disponible, el uso en porcentaje y donde esta montado.

> El comando df es la forma abreviada del disk filesystem. Este es uno de los comandos más básicos para solucionar problemas de E/S del disco. Si no hay espacio disponible, las operaciones de escritura fallarán. El comando df muestra el espacio utilizado y disponible para todos los sistemas de archivos montados en Linux. Por defecto, el espacio utilizado y disponible se muestra en bloques de 1K.

> La opción -h significa "human-readable" (legible por humanos), y muestra los tamaños en un formato más fácil de leer (K para kilobytes, M para megabytes, G para gigabytes, etc.).