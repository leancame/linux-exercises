# Enunciados de Ejercicios 3

## 1. Creación de directorios y ficheros. Practicar el uso del operador **&&**

Crea la siguiente estructura de directorios: 
```
talavera
└── bootcamp
    └── modulo_linux
        └── grupo1
```

Crea directorios "grupo2" y "grupo3" dentro del directorio "modulo_linux".
```
talavera
└── bootcamp
    └── modulo_linux
        ├── grupo1
        ├── grupo2
        └── grupo3
```

Crea fichero "ejercicio.txt" dentro del directorio "grupo1".  
Cambia el nombre del fichero "ejercicio.txt" a "ejercicioFinal.txt".  
Mueve "ejercicioFinal.txt" del directorio "grupo1" al directorio "grupo2".  
Copia "ejercicioFinal.txt" al directorio "grupo3".  
Borra "ejercicioFinal.txt" del directorio "grupo2".  

## 2. Comando df -h
Explora su uso. Ejecuta el comando y explica lo que ves. Adjunta imágenes

> El comando df es la forma abreviada del disk filesystem. Este es uno de los comandos más básicos para solucionar problemas de E/S del disco. Si no hay espacio disponible, las operaciones de escritura fallarán. El comando df muestra el espacio utilizado y disponible para todos los sistemas de archivos montados en Linux. Por defecto, el espacio utilizado y disponible se muestra en bloques de 1K.

> La opción -h significa "human-readable" (legible por humanos), y muestra los tamaños en un formato más fácil de leer (K para kilobytes, M para megabytes, G para gigabytes, etc.).