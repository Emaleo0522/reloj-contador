#!/bin/bash

# Script para actualizar el juego en GitHub
# Uso: ./update.sh "mensaje del commit"

set -e

echo "🚀 Actualizando Neon Core en GitHub..."
echo ""

# Verificar que estamos en el directorio correcto
if [ ! -f "neon-core-overdrive.html" ]; then
    echo "❌ Error: Ejecuta este script desde /home/pc004/neon-core-game"
    exit 1
fi

# Verificar que se pasó un mensaje
if [ -z "$1" ]; then
    echo "❌ Error: Debes proporcionar un mensaje de commit"
    echo "Uso: ./update.sh \"tu mensaje aquí\""
    exit 1
fi

# Mostrar cambios
echo "📝 Cambios detectados:"
git status --short
echo ""

# Confirmar
read -p "¿Subir estos cambios? (s/n): " confirm
if [ "$confirm" != "s" ]; then
    echo "❌ Cancelado"
    exit 0
fi

# Git operations
echo "📦 Agregando archivos..."
git add .

echo "💾 Creando commit..."
git commit -m "$1"

echo "📤 Subiendo a GitHub..."
git push

echo ""
echo "✅ ¡Actualización completada!"
echo "🌐 Ver en: https://github.com/Emaleo0522/reloj-contador"
echo "⏳ Vercel desplegará automáticamente en ~30 segundos"
echo ""
