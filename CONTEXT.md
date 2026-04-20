# CONTEXT.md — Pasaporte de Sesión · Inge Fonsi

> ⚠️ Este archivo se actualiza AL FINAL de cada sesión de trabajo.
> Si estás iniciando una sesión nueva, LEE ESTO PRIMERO.

---

## 1. Quién soy y qué es este proyecto
Oscar Alfonso Ochoa Caballero (Inge Fonsi). Sitio web de marca personal
(evolucionado de Landing Page a Multi-Página) enfocado en consultoría de: 
desarrollo web, SEO/GEO, workshops IA y visibilidad digital con IA. 
Stack: HTML + Tailwind CDN + Alpine.js + GSAP.
Hosting: Vercel Hobby (gratuito). Repo: GitHub.

## 2. Reglas de oro que nunca se rompen
- Sin npm, sin node_modules, todo por CDN
- Sin GCP, AWS ni Azure (antecedente de $81 USD)
- Sin rutas absolutas (causa del caos en proyecto anterior)
- Sin API keys secretas quemadas en el código fuente (se inyectan con build.ps1)
- Una fase aprobada antes de empezar la siguiente
- **Sin menciones a clientes confidenciales en el sitio público (ej: empresas de logística)**

## 3. Estado actual del proyecto
- Fase actual: REESTRUCTURACIÓN DE MARCA PERSONAL ✅
- Últimas implementaciones (19 de abril de 2026):
  1. **Reestructuración completa**: 6 servicios → 3 (SEO+GEO, Desarrollo Web, Workshops IA)
  2. **Página /precios/ ELIMINADA**: Cotizaciones personalizadas vía formulario de contacto
  3. **Página /about/ CREADA**: Arco profesional, timeline, stack técnico, descarga de CV
  4. **Página /proyectos/ CREADA**: Reemplazo de /casos/ con proyectos personales (sin clientes confidenciales)
  5. **Página /blog/ CREADA**: Esqueleto vacío (IA, tecnología, educación)
  6. **Home reescrito**: De página de ventas a marca personal
  7. **Purga de datos confidenciales**: Eliminadas todas las menciones a clientes confidenciales
  8. **Redirects 301**: vercel.json con redirecciones de URLs eliminadas
  9. **Scripts actualizados**: update_nav.ps1 y update_footer.ps1 con nueva estructura
- Sitio en producción: https://ingefonsi.vercel.app
- Próximo ítem a trabajar: Correr scripts de actualización y desplegar a producción.

## 4. Decisiones tomadas (para no volver a discutirlas)
- Se sigue estrictamente el stack de CDNs (Html/Tailwind/Alpine) para evitar costos y complejidad de build.
- Navegación textual y superior: En sitios multipágina es mandatorio el uso de un Top Bar en lugar del estilo HUD puro.
- **Manejo de archivos HTML en Windows**: Todos los scripts de PowerShell como `update_nav.ps1` y `build.ps1` obligatoriamente deben procesar los streams utilizando `[System.IO.File]::ReadAllText` y `[System.IO.File]::WriteAllText` junto a `$utf8NoBom = New-Object System.Text.UTF8Encoding $False` para prevenir duplicación de BOM (Byte Order Mark) y prevenir la destrucción de la tabla de caracteres, evitando funciones de PowerShell anticuadas como `Set-Content`.
- **Estructura de navegación**: Home, About, Servicios (dropdown con 3), Proyectos, Blog, Contacto
- **El home NO es página de ventas**: Es marca personal. Hero centrado en identidad, no en producto.

## 5. Problemas conocidos / deuda técnica
- En `custom.css` podrían quedar estilos obsoletos pertenecientes a la anterior barra vertical `hud-navigation` que podrían limpiarse.
- GSAP puede alertar "target not found" silenciosamente si queda lógica residual en `main.js` referente a elementos antiguos.

## 6. Cómo retomar en una sesión nueva
1. Lee este CONTEXT.md completo.
2. Abre y revisa el `TODO.md` para visualizar el estado macro.
3. **IMPORTANTE:** Para cualquier creación de página de blog, valida obligatoriamente la guía en [blog/seo_strategy.md](file:///c:/Users/oscek/Documents/IngeFonsi/blog/seo_strategy.md).
4. Di: "Retomamos desde [ítem pendiente]. El contexto está en CONTEXT.md y TODO.md del repositorio."
5. No preguntes nada más. Continúa desde ahí.
