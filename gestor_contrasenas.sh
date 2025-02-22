#!/bin/bash

ARCHIVO_CONTRASENA="$HOME/contrasenas.txt"
echo "$ARCHIVO_CONTRASENA"

generar_contrasena() {
  longitud=16
  contrasena=$(openssl rand -base64 48 | tr -dc 'a-zA-Z0-9!@#$%^&*()_+-=' | head -c $longitud)
  echo "$contrasena"
}

# PEDIR EL NOMBRE DE SISTEMA O PÁGINA DE LA CONTRASEÑA
echo "Generador de contraseñas: "
echo -e "\033[1;36m[*] Generador de Contraseñas Seguras\033[0m"
read -p "¿Para qué sitio/sistema es esta contraseña?: " sitio

contrasena_generada=$(generar_contrasena)

fecha=$(date +"%Y-%m-%d %H:%M:%S")
echo "$fecha|$sitio|$contrasena_generada" >> "$ARCHIVO_CONTRASENA"

# GUARDAR EN ARCHIVO
echo -e "\n\033[1;32m[+] Contraseña generada para \033[1;34m'$sitio'\033[0m"
echo -e "\033[1;33mContraseña: \033[0;35m$contraseña_generada\033[0m"
echo -e "\033[1;32m[+] Guardada en: \033[0;33m$ARCHIVO_CONTRASEÑAS\033[0m"

# GUARDAR EN BASE DE DATOS

# Opcional - Coopiar en portapapeles

