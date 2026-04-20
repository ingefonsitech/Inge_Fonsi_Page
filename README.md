# Inge Fonsi — Consultoría SEO e IA (Edición Alto Rendimiento 2026)

Hub personal de servicios de IA, SEO (Tradicional y GEO) y Soporte Técnico. 
Proyecto multi-página optimizado para **rendimiento extremo** (Lighthouse 100/100) y visibilidad en motores de búsqueda generativa.

Construido por **Oscar Alfonso Ochoa Caballero**.

## 🚀 Optimización 2026
El sitio ha sido migrado de una arquitectura basada en CDNs a una **Infraestructura de Activos Estáticos**:
- **CSS Local:** Se eliminó el Tailwind Play CDN en favor de una compilación estática minificada (`tailwind.css`).
- **Gestión de Fuentes:** Tipografías Montserrat y Oswald servidas localmente con `font-display: swap`.
- **Carga Diferida:** Todos los scripts (GSAP, Alpine, Lucide) se cargan con `defer` para no bloquear el renderizado inicial.
- **Activos Optimizados:** Imágenes y CV actualizados para 2026.

## 🛠 Stack Tecnológico
- **Estilos:** [Tailwind CSS v3](https://tailwindcss.com/) (Compilación Estática).
- **Interactividad:** [Alpine.js](https://alpinejs.dev/) (Vía CDN).
- **Animaciones:** [GSAP](https://greensock.com/gsap/) + ScrollTrigger.
- **Iconografía:** [Lucide Icons](https://lucide.dev/).

## 📁 Arquitectura del Proyecto
- `index.html`: Home principal optimizada para conversión.
- `about/index.html`: Identidad profesional y enlace al **CV 2026**.
- `/servicios/`: Estructura de silos para servicios de IA y SEO.
- `/proyectos/`: Portafolio técnico de soluciones.
- `/assets/`:
    - `/css/`: `tailwind.css` (compilado) y `custom.css` (temas).
    - `/js/`: `main.js` (lógica centralizada).
    - `/fonts/`: Tipografía de alto rendimiento.
    - `/doc/`: CV y documentación pública.

## 💻 Desarrollo Local
1. Clona el repositorio.
2. Abre `index.html` con **Live Server**.
3. Para realizar cambios en el diseño, usa la entrada de Tailwind:
   `npx tailwindcss -i ./assets/css/tailwind-input.css -o ./assets/css/tailwind.css --minify`

## ☁️ Despliegue en Vercel
Configura las variables de entorno para habilitar la funcionalidad:
- `WHATSAPP_NUMBER`, `CONTACT_EMAIL`, `WEB3FORMS_KEY`.
- `GITHUB_URL`, `LINKEDIN_URL`, etc.

---
*Ingeniería de visibilidad digital real. Sin frameworks pesados. Velocidad luz.*
