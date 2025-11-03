#!/bin/bash

# Asegurar que Ollama esté corriendo
docker-compose up -d ollama

# Esperar más tiempo para que esté completamente listo
echo "Esperando a que Ollama esté completamente listo..."
sleep 20

# Descargar el modelo directamente
echo "Descargando modelo gpt-oss..."
docker exec ollama ollama pull gpt-oss

# Verificar que se descargó
echo "Verificando modelos instalados:"
docker exec ollama ollama list