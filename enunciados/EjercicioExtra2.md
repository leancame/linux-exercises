# Ejercicio Extra 2 - Comandos de Red

## Objetivos
Familiarizarse con los comandos básicos de red en sistemas Linux (`ping`, `trace`, `ip`) y comprender su uso práctico para diagnosticar problemas de conectividad y analizar el estado de la red.

## Consideraciones
Elabora un informe breve con:
- Los resultados de cada comando.
- Las respuestas a las preguntas de cada sección.
  
Asegúrate de capturar pantallazos o registrar la salida de los comandos en un archivo que adjuntes en tu solución.

## Tarea

### 1. `ping` - Comprobación de conectividad
- Usa el comando `ping` para comprobar la conectividad entre tu máquina y una página web (la que tú quieras).
  
  **Preguntas**:
  - ¿Cuántos paquetes fueron enviados y recibidos?
  - ¿Cuál fue el tiempo de respuesta promedio?

### 2. `trace` - Trazado de ruta
- Usa el comando `tracepath` o `traceroute` para rastrear la ruta que sigue un paquete hasta la página web anterior. Luego prueba con una página web distinta que esté alojada en otro lugar.
  
  **Preguntas**:
  - ¿Cuántos saltos (hops) hay desde tu dispositivo hasta esas páginas web?
  - ¿Alguno de los saltos tiene una latencia particularmente alta?

### 3. `ip` - Información de configuración de red
- Usa el comando `ip` para obtener información sobre la configuración de tu red local.

  **Instrucciones**:
  - Ejecuta `ip addr` para obtener la lista de interfaces de red.
  - Ejecuta `ip route` para ver las rutas de red configuradas.
  
  **Preguntas**:
  - ¿Cuál es la dirección IP asignada a tu dispositivo?
  - ¿Cuál es tu puerta de enlace predeterminada (default gateway)?
