#!/bin/bash
# Script para el participante 1
participant1() {
    while true; do
        read message
        echo "Participante 1: $message" > /tmp/pipe1
    done
}