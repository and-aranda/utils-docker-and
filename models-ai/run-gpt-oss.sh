#!/bin/bash

# Iniciar servicios
docker-compose up -d

# Esperar a que esté listo
echo "Esperando a que Ollama esté listo..."
sleep 15

# Ejecutar gpt-oss interactivamente
docker exec -it ollama ollama run gpt-oss