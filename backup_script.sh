#!/bin/bash

#Script para hacer backup de una carpeta
# Ruta de la carpeta que quieres respaldar
origen="/home/mijel/obsidian"

# Ruta y nombre del archivo de backup
destino="/home/mijel/Backups/obsidian_backup_$(date +%Y-%m-%d).tar.gz"

# Crear el backup
tar -czf "$destino" -C "$(dirname "$origen")" "$(basename "$origen")"

# Verificar si el backup se creó correctamente
if [ $? -eq 0 ]; then
    echo "Backup completado: $destino"
else
    echo "Error al crear el backup."
fi
