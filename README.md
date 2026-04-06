# Inge Fonsi — Consultoría SEO e IA

Hub personal de servicios de IA, SEO (Tradicional y GEO) y Soporte Técnico. 
Proyecto multi-página optimizado para rendimiento extremo y visibilidad en motores de búsqueda generativa.

Construido por **Oscar Alfonso Ochoa Caballero**.

## Stack Tecnológico
- **Diseño:** Tailwind CSS (via Play CDN)
- **Lógica:** Alpine.js (via CDN)
- **Animaciones:** GSAP + ScrollTrigger (via CDN)
- **Iconos/Vectores:** Lucide Icons & Simple Icons (via CDN)

## Arquitectura del Proyecto
Este es un proyecto estático. No requiere `npm` ni compilación.

- `index.html`: Home principal.
- `_template.html`: Estructura base para nuevas páginas.
- `/servicios/`, `/precios/`, `/casos/`: Directorios de contenido modular.
- `/assets/`: Estilos CSS globales (`custom.css`) y lógica JS (`main.js`).

## Desarrollo Local
1. Abre `index.html` en cualquier navegador.
2. Se recomienda usar la extensión **Live Server** en VS Code para recarga automática.

## Despliegue en Vercel
1. Sube el código a GitHub.
2. Conecta el repositorio en el dashboard de **Vercel**.
3. **IMPORTANTE:** Debes configurar las siguientes Variables de Entorno para que el contacto y las redes funcionen correctamente:
   - `WHATSAPP_NUMBER`: Solo números (ej: 573001234567)
   - `CONTACT_EMAIL`: Correo oficial
   - `WEB3FORMS_KEY`: Llave de acceso para el formulario
   - `GITHUB_URL`, `LINKEDIN_URL`, `TIKTOK_URL`, `TWITTER_URL`: URLs de perfiles sociales

---
*Ingeniería de visibilidad digital real. Sin frameworks pesados. Sin complicaciones.*
