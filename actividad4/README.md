# Actividad 4

Chat Basico con Named Pipes y bash 

Ejecución
---------------
* Dar Permisos
  * chmod +x participant1.sh participant2.sh chat_principal.sh
* Ejecutar Scripts en diferentes terminales
  * ./script.sh
  * ./chat_participante1.sh
  * ./chat_participante2.sh


Flujo básico de funcionamiento:
---------------------------------

1. **Creación de Named Pipes:** El script principal (chat_principal.sh) crea dos Named Pipes, uno para cada dirección de comunicación (/tmp/pipe1 y /tmp/pipe2).

2. **Ejecución de scripts de participantes:** El script principal inicia dos instancias de terminal, una para cada participante (participant1.sh y participant2.sh). Cada participante está representado por un script de bash.

3. **Interacción de los participantes:** Cada participante lee desde la entrada estándar (stdin) utilizando el comando read, lo que le permite escribir mensajes. Estos mensajes son enviados al Named Pipe correspondiente (/tmp/pipe1 para el participante 1 y /tmp/pipe2 para el participante 2).

4. **Lectura del script principal:** El script principal constantemente lee de ambos Named Pipes (/tmp/pipe1 y /tmp/pipe2) en un bucle infinito. Cuando un mensaje llega a uno de los Named Pipes, el script principal lo lee y lo muestra en su propia terminal.
