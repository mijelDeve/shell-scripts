#!/bin/bash

ARCHIVO_CONTRASENAS="$HOME/contrasenas.txt"

if [[ ! -f "$ARCHIVO_CONTRASENAS" ]]; then
    echo -e "\033[1;31m[!] No se encontró el archivo de contraseñas.\033[0m"
    exit 1
fi


mostrar_contrasenas() {
    local sitio_buscado="$1"
    echo -e "\033[1;36m[*] Contraseñas guardadas:\033[0m"
    echo -e "\033[1;33m----------------------------------------\033[0m"
    while IFS='|' read -r fecha sitio contrasena; do
      if [[ -z "$sitio_buscado" || "$sitio" == *"$sitio_buscado"* ]]; then
        echo -e "\033[1;32mFecha: \033[0;35m$fecha\033[0m"
        echo -e "\033[1;32mSitio: \033[0;35m$sitio\033[0m"
        echo -e "\033[1;32mContraseña: \033[0;35m$contrasena\033[0m"
        echo -e "\033[1;33m----------------------------------------\033[0m"
      fi
    done < "$ARCHIVO_CONTRASENAS"
}

read -p "¿Estás seguro de que quieres ver las contraseñas? (s/n): " confirmacion
if [[ "$confirmacion" != "s" ]]; then
    echo -e "\033[1;31m[!] Operación cancelada.\033[0m"
    exit 0
fi

mostrar_contrasenas
