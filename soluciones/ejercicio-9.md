# Solución del Ejercicios 9

## 1. Creación de Usuarios y Grupos

Crea un usuario con el Id 999 y el nombre `navin`. 

![Captura sobre el código](../datos/Ejercicio9/creacion%20del%20usuario%20con%20id%20999%20error.png)

![Captura sobre el código](../datos/Ejercicio9/ver%20el%20id%20999%201.png)

![Captura sobre el código](../datos/Ejercicio9/usuario%20999.png)

![Captura sobre el código](../datos/Ejercicio9/creacion%20del%20usuario%20sin%20id.png)

![Captura sobre el código](../datos/Ejercicio9/se%20crea%20usuario.png)

Crea el grupo `oficina1`.

![Captura sobre el código](../datos/Ejercicio9/creacion%20del%20grupo.png)

![Captura sobre el código](../datos/Ejercicio9/busqueda%20del%20grupo.png)

![Captura sobre el código](../datos/Ejercicio9/grupo%20oficina%201.png)

Cambia el nombre del grupo anterior a `oficina2`.

![Captura sobre el código](../datos/Ejercicio9/modificacion%20del%20nombre%20del%20grupo%20y%20busqueda.png)

![Captura sobre el código](../datos/Ejercicio9/nombre%20del%20grupo%20cambiado.png)

Crea usuario `sonia` en `oficina2`.

![Captura sobre el código](../datos/Ejercicio9/creacion%20de%20sonia.png)

![Captura sobre el código](../datos/Ejercicio9/ver%20las%20caracteristicas%20de%20sonia.png)


## 2. Crea un script que reciba como parámetros el nombre de uno o varios usuarios, y nos indique si existen en el sistema.

Crea un script que reciba como parámetros el nombre de uno o varios usuarios, y nos indique si existen en el sistema.
Consejo, utiliza el archivo `/etc/passwd` y realiza filtros con grep.

Empezamos verificando si se ha añadido algún parámetro y tras esto iteramos todos los usuarios pasados para filtrarlos con el `grep -q` que nos indica si existe o no.


![Captura sobre el código](../datos/Ejercicio9/ejecucionapartado2.png)