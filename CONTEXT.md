# CONTEXT.md — Pasaporte de Sesión · Inge Fonsi

> ⚠️ Este archivo se actualiza AL FINAL de cada sesión de trabajo.
> Si estás iniciando una sesión nueva, LEE ESTO PRIMERO.

---

## 1. Quién soy y qué es este proyecto
Oscar Alfonso Ochoa Caballero (Inge Fonsi). Sitio web profesional
(evolucionado de Landing Page a Multi-Página) para ofrecer servicios de: 
landing pages SEO/GEO-ready, auditorías técnicas y chatbots empresariales (RAG). 
Stack: HTML + Tailwind CDN + Alpine.js + GSAP.
Hosting: Vercel Hobby (gratuito). Repo: GitHub.

## 2. Reglas de oro que nunca se rompen
- Sin npm, sin node_modules, todo por CDN
- Sin GCP, AWS ni Azure (antecedente de $81 USD)
- Sin rutas absolutas (causa del caos en proyecto anterior)
- Sin API keys secretas quemadas en el código fuente (se inyectan con build.ps1)
- Una fase aprobada antes de empezar la siguiente

## 3. Estado actual del proyecto
- Fase actual: MANTENIMIENTO MULTI-PÁGINA Y CONTENIDO ✅
- Últimas implementaciones (5 de abril de 2026):
  1. **Footer Global Unificado**: Implementado en todas las páginas (Home, Servicios, Precios, Casos) con arquitectura de silos y NAP (Name, Address, Phone) consistente para SEO local en Bogotá.
  2. **Variables de Entorno (Vercel)**: Se reemplazaron todos los datos hardcodeados de contacto (WhatsApp, Email) y redes sociales por placeholders `__VAR__` (e.g., `__WHATSAPP_NUMBER__`, `__CONTACT_EMAIL__`, `__GITHUB_URL__`, etc.) para inyección segura en Vercel.
  3. **Optimización GEO**: Se integraron etiquetas `rel="me"` en enlaces sociales para validación de identidad ante algoritmos de búsqueda generativa.
  4. **URLs Limpias**: Verificación de navegación consistente sin extensiones `.html` para mejor rastreo de bots.
- Sitio en producción: https://ingefonsi.vercel.app
- Próximo ítem a trabajar: Maquetación y diseño del template visual para el Blog (`/blog/template.html`).

## 4. Decisiones tomadas (para no volver a discutirlas)
- Se sigue estrictamente el stack de CDNs (Html/Tailwind/Alpine) para evitar costos y complejidad de build.
- Navegación textual y superior: En sitios multipágina es mandatorio el uso de un Top Bar en lugar del estilo HUD puro.
- **Manejo de archivos HTML en Windows**: Todos los scripts de PowerShell como `update_nav.ps1` y `build.ps1` obligatoriamente deben procesar los streams utilizando `[System.IO.File]::ReadAllText` y `[System.IO.File]::WriteAllText` junto a `$utf8NoBom = New-Object System.Text.UTF8Encoding $False` para prevenir duplicación de BOM (Byte Order Mark) y prevenir la destrucción de la tabla de caracteres, evitando funciones de PowerShell anticuadas como `Set-Content`.

## 5. Problemas conocidos / deuda técnica
- En `custom.css` podrían quedar estilos obsoletos pertenecientes a la anterior barra vertical `hud-navigation` que podrían limpiarse.
- GSAP puede alertar "target not found" silenciosamente si queda lógica residual en `main.js` referente a elementos antiguos.

## 6. Cómo retomar en una sesión nueva
1. Lee este CONTEXT.md completo.
2. Abre y revisa el `TODO.md` para visualizar el estado macro.
3. **IMPORTANTE:** Para cualquier creación de página de blog, valida obligatoriamente la guía en [blog/seo_strategy.md](file:///c:/Users/oscek/Documents/IngeFonsi/blog/seo_strategy.md).
4. Di: "Retomamos desde [ítem pendiente]. El contexto está en CONTEXT.md y TODO.md del repositorio."
5. No preguntes nada más. Continúa desde ahí.
