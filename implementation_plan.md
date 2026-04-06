# Plan de Implementación: Reestructuración de Servicios

Este plan detalla la migración del catálogo actual de servicios a un modelo modular de 6 ingeniería especializadas.

## 1. Mapeo de Servicios y Estructura

| Servicio | Folder Sugerido | Estado |
| :--- | :--- | :--- |
| **Ingeniería SEO + GEO** | `seo-geo-ingenieria` | Refactor de SEO y GEO |
| **Agente IA WhatsApp** | `agente-ia-whatsapp` | Nuevo |
| **Chatbots Especializados** | `chatbot-ia-empresarial` | Evolución de RAG |
| **Desarrollo Web Pro** | `desarrollo-web-bogota` | Expansión de Landings |
| **Workshops IA** | `workshops-ia-equipos` | Nuevo |
| **Auditorías 1a1** | `consultoria-auditoria-ia` | Refactor de Auditoría |

## 2. Hoja de Ruta Operativa

### Fase 1: Base Estructural y Navegación
- [ ] Renombrar/Crear los 6 directorios en `/servicios/`.
- [ ] Actualizar el script `update_nav.ps1` con los 6 nuevos enlaces y textos (usando entidades HTML).
- [ ] Ejecutar el script para propagar la nueva navegación a todo el sitio.

### Fase 2: Rediseño de Home (`index.html`)
- [ ] Modificar la sección "Servicios" para una cuadrícula de 3 columnas x 2 filas (Desktop).
- [ ] Actualizar iconos Lucide y copywriting HUD.
- [ ] Generar e insertar 6 imágenes técnicas (prompts de ingeniería real).

### Fase 3: Página de Servicios Principal (`servicios/index.html`)
- [ ] Rediseño completo para listar los 6 módulos con secciones de "Para quién es" y "Tech Stack".
- [ ] Actualizar Metadata SEO (Schema.org).

### Fase 4: Contenido Interno y Verificación
- [ ] Crear/actualizar los archivos `index.html` de cada uno de los 6 servicios.
- [ ] Verificación visual en servidor local.

---

Este plan está listo para ser ejecutado. Si deseas algún ajuste en los nombres de las carpetas o los enfoques, házmelo saber.
