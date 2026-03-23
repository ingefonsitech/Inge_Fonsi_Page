#!/bin/bash
# build.sh — Inge Fonsi Landing
# Este script es ejecutado por Vercel durante el build, antes de publicar los archivos.
# Reemplaza los marcadores en index.html con las variables de entorno configuradas en Vercel.
# No requiere Node.js, npm ni ningún framework. Solo Linux nativo.

echo "🔧 Inyectando variables de entorno en index.html..."

# Usar valores por defecto en caso de que las variables no estén definidas
WA="${WHATSAPP_NUMBER:-573000000000}"
EMAIL="${CONTACT_EMAIL:-oscar@ingefonsi.com}"
W3F="${WEB3FORMS_KEY:-REEMPLAZA_CON_TU_KEY}"

# Reemplazar marcadores en index.html usando sed
sed -i "s|__WHATSAPP_NUMBER__|${WA}|g" index.html
sed -i "s|__CONTACT_EMAIL__|${EMAIL}|g" index.html
sed -i "s|__WEB3FORMS_KEY__|${W3F}|g" index.html

echo "✅ Variables inyectadas:"
echo "   WHATSAPP_NUMBER = ${WA}"
echo "   CONTACT_EMAIL   = ${EMAIL}"
echo "   WEB3FORMS_KEY   = ${W3F:0:8}... (oculto por seguridad)"

# Inyectar URLs de Redes Sociales
sed -i "s|__GITHUB_URL__|${GITHUB_URL}|g" index.html
sed -i "s|__LINKEDIN_URL__|${LINKEDIN_URL}|g" index.html
sed -i "s|__TIKTOK_URL__|${TIKTOK_URL}|g" index.html
sed -i "s|__TWITTER_URL__|${TWITTER_URL}|g" index.html
