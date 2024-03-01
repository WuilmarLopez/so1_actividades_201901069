#!/bin/bash
# Script para el participante 2
participant2() {
    while true; do
        read message
        echo "Participante 2: $message" > /tmp/pipe2
    done
}