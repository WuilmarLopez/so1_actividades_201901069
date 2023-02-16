#!/bin/bash


echo "ingrese el usuario"

read GITHUB_USER

ID=$(curl -s "https://api.github.com/users/${GITHUB_USER}" | jq -r '.id')
DATE=$(curl -s "https://api.github.com/users/${GITHUB_USER}" | jq -r '.created_at')
FECHA=$(date +'%d-%m-%Y')

echo "Hola $GITHUB_USER. User ID: $ID. Cuenta fue creada el:  $DATE">"/tmp/${FECHA}/saludos.log"



echo "Creado"
