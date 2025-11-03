#!/bin/bash

# Parar contenedores
docker-compose down

# Limpiar volúmenes de Docker para liberar espacio
docker system prune -f
docker volume prune -f

# Crear directorio local para modelos
mkdir -p ollama_models

# Reiniciar y descargar
docker-compose up -d
sleep 20

echo "Descargando gpt-oss..."
docker exec ollama ollama pull gpt-oss

echo "Modelos disponibles:"
docker exec ollama ollama list