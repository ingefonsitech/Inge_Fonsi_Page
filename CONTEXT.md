# CONTEXT.md — Pasaporte de Sesión · Inge Fonsi

> ⚠️ Este archivo se actualiza AL FINAL de cada sesión de trabajo.
> Si estás iniciando una sesión nueva, LEE ESTO PRIMERO.

---

## 1. Quién soy y qué es este proyecto
Oscar Alfonso Ochoa Caballero (Inge Fonsi). Landing page personal
para ofrecer servicios de: landing pages, SEO tradicional, SEO para IA,
y chatbots de negocio. Stack: HTML + Tailwind CDN + Alpine.js + GSAP.
Hosting: Vercel Hobby (gratuito). Repo: GitHub.

## 2. Reglas de oro que nunca se rompen
- Sin npm, sin node_modules, todo por CDN
- Sin GCP, AWS ni Azure (antecedente de $81 USD)
- Sin rutas absolutas (causa del caos en proyecto anterior)
- Sin API keys en el código
- Una fase aprobada antes de empezar la siguiente

## 3. Estado actual del proyecto
- Fase actual: FASE 5 — Revisión final y deploy (COMPLETADA ✅)
- Último ítem completado: Checklist de calidad pasado (sin console.logs, sin rutas absolutas, sin API keys hardcodeadas), pruebas responsivas en 375px/768px/1280px en sitio en vivo, variables de entorno inyectadas correctamente en Vercel.
- Sitio en producción: https://ingefonsi.vercel.app
- Repositorio: https://github.com/ingefonsitech/Inge_Fonsi_Page.git
- Próximo ítem a trabajar: PROYECTO COMPLETO — mantenimiento y nuevos demos/portafolio
- Archivos modificados en esta sesión: TODO.md, CONTEXT.md

## 4. Decisiones tomadas (para no volver a discutirlas)
- Se sigue estrictamente el stack de CDNs para evitar costos y complejidad de build. — decidido Fase 0
- Se utilizará GSAP como motor principal de animaciones de scroll. — decidido Fase 0

## 5. Problemas conocidos / deuda técnica
- Las tarjetas de portafolio tienen imágenes placeholder (icono lucide). Se recomienda reemplazar por capturas reales de los proyectos cuando estén disponibles.
- Los links de portafolio (#) aún apuntan a "#" — pendiente conectar con GitHub/Vercel real de cada demo.

## 6. Cómo retomar en una sesión nueva
1. Lee este CONTEXT.md completo
2. Lee el TODO.md y ubica el primer ítem sin [x]
3. Di: "Retomamos desde [ítem pendiente]. El contexto está en
   CONTEXT.md y TODO.md del repositorio."
4. No preguntes nada más. Continúa desde ahí.
