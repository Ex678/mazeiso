#!/bin/bash

# Nombre del contenedor
CONTAINER_NAME="archlinux-container"

# Carpeta compartida
SHARED_FOLDER_HOST="$HOME/arch_shared"
SHARED_FOLDER_CONTAINER="/shared"

# Verificar si Docker está instalado
if ! command -v docker &> /dev/null; then
    echo "Docker no está instalado. Instálalo antes de ejecutar este script."
    exit 1
fi

# Crear la carpeta compartida si no existe
if [ ! -d "$SHARED_FOLDER_HOST" ]; then
    echo "Creando carpeta compartida en: $SHARED_FOLDER_HOST"
    mkdir -p "$SHARED_FOLDER_HOST"
fi

# Verificar si la imagen de Arch Linux existe, si no, descargarla
if ! docker image inspect archlinux:latest &> /dev/null; then
    echo "Descargando la imagen de Arch Linux..."
    docker pull archlinux:latest
fi

# Verificar si ya existe un contenedor con el mismo nombre
if docker ps -a --format "{{.Names}}" | grep -q "^${CONTAINER_NAME}$"; then
    echo "El contenedor $CONTAINER_NAME ya existe. Eliminándolo..."
    docker rm -f "$CONTAINER_NAME"
fi

# Ejecutar el contenedor con privilegios y carpeta compartida
echo "Iniciando el contenedor $CONTAINER_NAME con privilegios y carpeta compartida..."
docker run -it --privileged \
    --name "$CONTAINER_NAME" \
    -v "$SHARED_FOLDER_HOST:$SHARED_FOLDER_CONTAINER" \
    archlinux:latest /bin/bash
