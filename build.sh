#!/bin/bash
# build.sh — Inge Fonsi Site (Multi-página)
# Ejecutado por Vercel durante el build.
# Reemplaza marcadores en TODOS los archivos .html con variables de entorno.
# No requiere Node.js, npm ni framework. Solo Linux nativo.

echo "🔧 Inyectando variables de entorno en todos los archivos HTML..."

# Valores por defecto
WA="${WHATSAPP_NUMBER:-573000000000}"
EMAIL="${CONTACT_EMAIL:-oscar@ingefonsi.com}"
W3F="${WEB3FORMS_KEY:-REEMPLAZA_CON_TU_KEY}"
GH="${GITHUB_URL:-https://github.com/ingefonsitech}"
LI="${LINKEDIN_URL:-https://linkedin.com/in/ingefonsi}"
TT="${TIKTOK_URL:-https://tiktok.com/@ingefonsi}"
TW="${TWITTER_URL:-https://x.com/IngeFonsi}"

# Reemplazar en TODOS los archivos .html (multi-página)
find . -name "*.html" -exec sed -i "s|__WHATSAPP_NUMBER__|${WA}|g" {} \;
find . -name "*.html" -exec sed -i "s|__CONTACT_EMAIL__|${EMAIL}|g" {} \;
find . -name "*.html" -exec sed -i "s|__WEB3FORMS_KEY__|${W3F}|g" {} \;
find . -name "*.html" -exec sed -i "s|__GITHUB_URL__|${GH}|g" {} \;
find . -name "*.html" -exec sed -i "s|__LINKEDIN_URL__|${LI}|g" {} \;
find . -name "*.html" -exec sed -i "s|__TIKTOK_URL__|${TT}|g" {} \;
find . -name "*.html" -exec sed -i "s|__TWITTER_URL__|${TW}|g" {} \;

echo "✅ Variables inyectadas en $(find . -name '*.html' | wc -l) archivos HTML:"
echo "   WHATSAPP_NUMBER = ${WA}"
echo "   CONTACT_EMAIL   = ${EMAIL}"
echo "   WEB3FORMS_KEY   = ${W3F:0:8}... (oculto por seguridad)"
echo "   GITHUB_URL      = ${GH}"
echo "   LINKEDIN_URL    = ${LI}"
echo "   TIKTOK_URL      = ${TT}"
echo "   TWITTER_URL     = ${TW}"
