#!/bin/bash
# build.sh — Inge Fonsi Landing
# Este script es ejecutado por Vercel durante el build, antes de publicar los archivos.
# Reemplaza los marcadores en index.html con las variables de entorno configuradas en Vercel.
# No requiere Node.js, npm ni ningún framework. Solo Linux nativo.

echo "🔧 Inyectando variables de entorno en index.html..."

# Usar valores por defecto en caso de que las variables no estén definidas
WA="${WHATSAPP_NUMBER:-573000000000}"
EMAIL="${CONTACT_EMAIL:-oscar@ingefonsi.com}"

# Reemplazar marcadores en index.html usando sed
sed -i "s|__WHATSAPP_NUMBER__|${WA}|g" index.html
sed -i "s|__CONTACT_EMAIL__|${EMAIL}|g" index.html

echo "✅ Variables inyectadas:"
echo "   WHATSAPP_NUMBER = ${WA}"
echo "   CONTACT_EMAIL   = ${EMAIL}"
