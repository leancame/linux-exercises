# Ejercicio Extra 3 - Comando `ss`

El comando `ss` (Socket Stat) es una herramienta poderosa para inspeccionar las conexiones de red en Linux. Proporciona una visión detallada de las conexiones TCP, UDP, UNIX y más. Aquí tienes varios ejercicios y aplicaciones del comando `ss` para situaciones del mundo laboral.

---

## Ejercicio 1 - Mostrar todas las conexiones TCP activas

### Objetivo
Aprender a listar todas las conexiones TCP activas en el sistema.

**Instrucciones:**
- Ejecuta `ss -t` para listar las conexiones TCP activas.
- Identifica la dirección IP local y la dirección IP remota en cada conexión.

**Preguntas:**
- ¿Cuántas conexiones activas hay en tu máquina?
- ¿Cuáles son los puertos locales en uso?

### Aplicación laboral:
En un entorno de administración de servidores, esto es útil para monitorear las conexiones activas a un servidor de base de datos, aplicación web o servicio de correo.

---

## Ejercicio 2 - Mostrar puertos en estado de escucha (Listening)

### Objetivo
Determinar qué puertos están en estado de escucha en el servidor para identificar servicios activos.

**Instrucciones:**
- Ejecuta `ss -tuln` para listar los puertos TCP y UDP en estado de escucha.
- Filtra solo las conexiones TCP usando `ss -ltn`.

**Preguntas:**
- ¿Qué servicios están en estado de escucha en tu máquina?
- ¿Qué puertos están abiertos?

### Aplicación laboral:
Como administrador de sistemas, esto es crucial para asegurar que solo los servicios necesarios estén escuchando en los puertos correctos, ayudando a reducir la superficie de ataque en un servidor.

---

## Ejercicio 3 - Filtrar conexiones por puerto específico

### Objetivo
Aprender a filtrar conexiones por un puerto en particular.

**Instrucciones:**
- Usa `ss -t src :6443` para listar todas las conexiones donde el puerto fuente es 80 (puerto HTTP).
- También puedes buscar conexiones hacia un puerto específico, por ejemplo, `ss -t dst :6443` para filtrar las conexiones hacia HTTPS.

**Preguntas:**
- ¿Cuántas conexiones están usando el puerto 6443?
- ¿Existen conexiones hacia el puerto 6443?

### Aplicación laboral:
Este comando es útil en auditorías de seguridad y análisis de tráfico web para asegurarse de que el servidor esté manejando adecuadamente las conexiones HTTP y HTTPS.

---

## Ejercicio 4 - Mostrar conexiones y procesos relacionados

### Objetivo
Visualizar los procesos relacionados con las conexiones de red activas.

**Instrucciones:**
- Ejecuta `ss -tup` para listar las conexiones TCP y UDP junto con los procesos responsables.
- Identifica el PID (ID de proceso) y el nombre del proceso asociado a cada conexión.

**Preguntas:**
- ¿Qué procesos están utilizando conexiones TCP activas?
- ¿Cuál es el nombre y PID del proceso responsable de la conexión?

### Aplicación laboral:
Este comando es útil para diagnosticar problemas en un servidor, especialmente cuando necesitas identificar qué procesos están usando la red y asegurarte de que no haya procesos maliciosos en el sistema.

---

## Ejercicio 5 - Estadísticas de conexiones

### Objetivo
Obtener estadísticas de las conexiones de red para medir el rendimiento y la estabilidad.

**Instrucciones:**
- Usa `ss -s` para obtener un resumen estadístico de las conexiones.
- Observa el estado de las conexiones (SYN-RECV, ESTAB, TIME-WAIT, etc.).

**Preguntas:**
- ¿Cuántas conexiones están establecidas (`ESTAB`)?
- ¿Cuántas están en estado de espera (`TIME-WAIT`)?

### Aplicación laboral:
En monitoreo de red, este comando ayuda a diagnosticar problemas de conectividad o cuellos de botella en la red, especialmente en servidores con alta concurrencia.

---

## Ejercicio 6 - Monitoreo en tiempo real de conexiones

### Objetivo
Aprender a monitorear las conexiones de red en tiempo real.

**Instrucciones:**
- Ejecuta `watch ss -tuln` para monitorear en tiempo real las conexiones activas.
- Usa `watch ss -t src :443` para monitorear solo las conexiones HTTPS en tiempo real.

**Preguntas:**
- ¿Cómo cambia la lista de conexiones durante un período de tiempo?
- ¿Qué tipos de conexiones se establecen y cierran con más frecuencia?

### Aplicación laboral:
Esto es útil en entornos de producción donde un administrador necesita supervisar las conexiones de red en tiempo real, detectar patrones inusuales o ver cambios a medida que los usuarios acceden a servicios.

---

## Ejercicio 7 - Detectar conexiones sospechosas o no autorizadas

### Objetivo
Detectar posibles conexiones maliciosas en el sistema.

**Instrucciones:**
- Usa `ss -atp` para listar las conexiones TCP activas junto con los procesos responsables.
- Busca conexiones inusuales hacia IPs o puertos que no deberían estar activos.

**Preguntas:**
- ¿Existen conexiones hacia IPs o puertos sospechosos?
- ¿Qué proceso está asociado a estas conexiones?

### Aplicación laboral:
En el ámbito de la seguridad informática, este comando es esencial para detectar conexiones no autorizadas o maliciosas en un servidor, lo que puede ser señal de una posible intrusión.

---

## Informe Final

Cada ejercicio debe ser completado con:
- Capturas de pantalla o salida de los comandos ejecutados.
- Respuesta a las preguntas propuestas.
- Observaciones personales sobre cómo los comandos podrían ser aplicados en situaciones reales de trabajo.

Este conjunto de ejercicios proporciona habilidades útiles para la administración de redes, servidores y seguridad informática, haciendo del comando `ss` una herramienta esencial en el día a día laboral.