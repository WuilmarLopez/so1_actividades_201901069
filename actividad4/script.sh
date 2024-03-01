#!/bin/bash

# Limpiar cualquier Named Pipe existente
rm -f /tmp/pipe1
rm -f /tmp/pipe2

# Crear los Named Pipes
mkfifo /tmp/pipe1
mkfifo /tmp/pipe2

# Iniciar los scripts para cada participante en un nuevo terminal
gnome-terminal -- bash -c './chat_participante1.sh'
gnome-terminal -- bash -c './chat_participante2.sh'

# Leer de los Named Pipes y mostrar los mensajes en este terminal
while true; do
    if read line < /tmp/pipe1; then
        echo "$line"
    elif read line < /tmp/pipe2; then
        echo "$line"
    fi
done
