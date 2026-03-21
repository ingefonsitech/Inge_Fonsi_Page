# TECH_STACK.md — Arquitectura Técnica "Inge Fonsi"
> Costo mensual objetivo: $0 USD · Sin sorpresas de facturación · Código limpio y mantenible

---

## ⚠️ Lección aprendida (leer antes de continuar)

En un proyecto anterior se incurrió en **$81 USD inesperados** por usar servicios de Google Cloud
Platform sin entender su modelo de facturación. Este archivo existe para que eso **nunca vuelva
a ocurrir**. Toda decisión técnica aquí está tomada con el costo como restricción no negociable.

---

## 1. Stack Tecnológico Principal

| Capa | Tecnología | Versión / Modo | Por qué esta y no otra |
|------|-----------|----------------|------------------------|
| Estructura | HTML5 semántico | Estático | Sin frameworks que generen build complejo |
| Estilos | Tailwind CSS | **Solo CDN** (Play CDN) | Sin Node, sin PostCSS, sin configuración local |
| Interactividad | Alpine.js | **CDN** | Reemplaza lógica JS sin frameworks pesados; sintaxis en el HTML |
| Animaciones scroll | GSAP + ScrollTrigger | **CDN** | La única librería autorizada para el scrollytelling del DESIGN.md |
| Iconos | Lucide Icons | **CDN** | Íconos de línea, livianos, consistentes con la estética técnica |

**Regla de oro del stack:**
> Si no está disponible por CDN en `cdnjs.cloudflare.com` o `cdn.jsdelivr.net`, no se usa.
> No se instala npm. No se corre `npm install`. No hay `node_modules` en este proyecto.

---

## 2. Infraestructura y Despliegue — Costo $0 Garantizado

### Hosting: Vercel Hobby Plan (Gratuito)
- URL del plan: `vercel.com/pricing` → Hobby ($0/mes)
- Incluye: SSL automático, dominios `.vercel.app`, despliegue automático desde GitHub.
- **Límites que no se alcanzarán con este proyecto:** 100GB bandwidth/mes, funciones serverless limitadas.
- **No se requiere tarjeta de crédito** para el Hobby Plan si no se activan add-ons.

### Control de versiones: GitHub (Gratuito)
- Repositorio público o privado (a elección del dueño).
- Estructura de ramas:
  ```
  main          → producción (lo que está en Vercel)
  dev           → integración de cambios antes de subir a main
  feature/xxx   → ramas de trabajo por funcionalidad
  ```

### CI/CD: Integración nativa GitHub → Vercel
- Cada `git push` a `main` despliega automáticamente en Vercel.
- Cada `git push` a otras ramas genera una **Preview URL** temporal para revisar sin afectar producción.
- No se requiere configuración adicional de pipelines.

---

## 3. Arquitectura de Archivos del Proyecto

```
inge-fonsi/
├── index.html          ← Único archivo HTML de la landing
├── assets/
│   ├── css/
│   │   └── custom.css  ← Solo variables CSS y estilos que Tailwind no cubre
│   ├── js/
│   │   └── main.js     ← Lógica de scroll, Alpine data, contadores
│   └── img/            ← Imágenes propias del portafolio y demos
├── .env.example        ← Plantilla de variables de entorno (sin valores reales)
├── .gitignore          ← Incluye .env real para que nunca suba a GitHub
└── README.md           ← Instrucciones de desarrollo y despliegue
```

**Regla de rutas:**
> Todas las rutas de assets deben ser **relativas al directorio raíz** del proyecto.
> ✅ `./assets/img/foto.jpg`
> ❌ `C:/Users/Oscar/...` ni `/home/oscar/...` ni rutas absolutas de ningún tipo.
> Esta fue una de las causas del "código espagueti" anterior.

---

## 4. Manejo de Secretos y Variables de Entorno

El proyecto no maneja APIs de pago, pero sí datos sensibles como el número de WhatsApp
o el correo. La regla es:

| Tipo de dato | Dónde va |
|-------------|----------|
| API Keys de servicios (si se añaden en el futuro) | Variables de entorno en Vercel dashboard |
| Número de WhatsApp y correo | Variables de entorno en Vercel (no en el código) |
| Cualquier contraseña o token | Jamás en el código. Jamás en GitHub. |

**Archivo `.env.example` (se sube a GitHub como plantilla):**
```
WHATSAPP_NUMBER=xxxxxxxxxxxx
CONTACT_EMAIL=tucorreo@dominio.com
```

**Archivo `.env` real (en `.gitignore`, nunca sube a GitHub):**
```
WHATSAPP_NUMBER=573001234567
CONTACT_EMAIL=oscar@ingefonsi.com
```

---

## 5. Entorno de Desarrollo Local (Opcional con Docker)

Para el desarrollo del sitio estático **no se necesita Docker**. El proyecto se abre
directamente con el archivo `index.html` en el navegador o con Live Server de VS Code.

Docker se reserva **únicamente** para cuando se desarrollen los chatbots con conocimiento
de negocio (RAG), que sí requieren un servidor local de Python:

```yaml
# docker-compose.yml — Solo para el servicio de chatbots, no para la landing
services:
  chatbot-api:
    build: ./chatbot
    ports:
      - "8000:8000"
    volumes:
      - ./chatbot:/app
    env_file:
      - .env
```

---

## 6. Restricciones Absolutas — Lista de lo Prohibido

Estas restricciones son **no negociables** y deben respetarse en cada línea de código generada.

### ❌ Servicios con riesgo de costo inesperado
- Google Cloud Platform (GCP) — causó $81 USD en proyecto anterior
- Amazon Web Services (AWS) — modelo de pago por uso, riesgo alto
- Microsoft Azure — mismo riesgo
- Firebase (Firestore, Functions, Hosting) — gratuito con límites, pero escala con costo
- OpenAI API, Anthropic API, o cualquier LLM de pago en producción

### ❌ Complejidad innecesaria
- No instalar npm, yarn, pnpm ni ningún gestor de paquetes para este proyecto
- No usar React, Vue, Angular, Next.js ni ningún framework de componentes
- No crear archivos de configuración de build (webpack, vite, rollup)
- No usar bases de datos externas para la landing (ni Supabase, ni PlanetScale)
- No mezclar lógica de servidor con lógica de cliente sin documentarlo claramente

### ❌ Malas prácticas que causaron el caos anterior
- No usar rutas absolutas en ningún asset o importación
- No hardcodear API Keys, tokens o datos sensibles en el código
- No crear archivos sin una ubicación clara en la estructura del proyecto
- No dejar código comentado sin explicación de por qué está comentado

---

## 7. Estándares de Calidad del Código

Para evitar el "código espagueti" que hizo inmanejable el proyecto anterior:

**Nombrado:**
- Variables y funciones en **inglés**, descriptivas: `handleScrollAnimation()` no `f1()`.
- Clases CSS personalizadas en **kebab-case**: `hero-section`, `service-card`.
- IDs de HTML solo cuando son estrictamente necesarios para JS.

**Comentarios:**
- En **español**, explicando el *por qué*, no el *qué*:
  ```js
  // Usamos IntersectionObserver en lugar de scroll event para mejor rendimiento
  const observer = new IntersectionObserver(...)
  ```

**Funciones JS:**
- Máximo 20 líneas por función.
- Una función, una responsabilidad.
- Sin `console.log` en el código que va a producción.

**HTML:**
- Un solo archivo `index.html`.
- Secciones claramente delimitadas con comentarios:
  ```html
  <!-- ===================== HERO SECTION ===================== -->
  <!-- ===================== SERVICIOS ======================== -->
  ```

---

## 8. Checklist antes de cada `git push` a `main`

- [ ] El sitio abre correctamente desde `index.html` sin servidor local
- [ ] No hay rutas absolutas en ningún asset
- [ ] No hay API Keys ni datos sensibles en el código
- [ ] El sitio se ve bien en móvil (probar en DevTools a 375px)
- [ ] No hay `console.log` activos
- [ ] El archivo `.env` real NO está en el commit
