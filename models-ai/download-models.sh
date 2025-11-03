#!/bin/bash

# Iniciar los servicios
docker-compose up -d

# Esperar a que Ollama esté listo
echo "Esperando a que Ollama esté listo..."
sleep 10

# Descargar modelos populares
echo "Descargando modelos..."

# Llama 3.1 8B (recomendado para pruebas)
docker exec ollama ollama pull llama3.1:8b

# GPT-4 compatible (Llama 3.1 70B - requiere más RAM)
# docker exec ollama ollama pull llama3.1:70b

# Modelo más ligero para pruebas rápidas
docker exec ollama ollama pull llama3.1:latest

echo "Modelos descargados. Accede a http://localhost:3000 para la interfaz web"
echo "API disponible en http://localhost:11434"