# Inge Fonsi — Plan Completo de Sitio Web 2026
**Oscar Ochoa · ingefonsi.co · Consultor SEO + GEO + Automatización IA**

> Este documento es la referencia maestra para construir el sitio con Antigravity.
> Cubre arquitectura, copy de cada página, estructura del blog, modelo de negocio y cadencia de contenido.
> No omitir ninguna sección — cada parte tiene una razón estratégica.

---

## 0. Decisiones base (hacer primero, antes de cualquier página)

| Decisión | Detalle | Por qué |
|---|---|---|
|
| **Hosting/deploy** | Mantener Antigravity + Vercel, pero apuntado al dominio propio | 
| **Idioma** | Español colombiano en todo el sitio | Las IAs priorizan coherencia regional para citar fuentes |
| **Tono** | Conservar "Sin agencias. Sin mentiras. Sin cuentos." | Es el diferenciador real. No suavizarlo |
| **Reposicionamiento central** | De "hago páginas, SEO y chatbots" a "hago que tu negocio exista donde la gente busca hoy: Google, ChatGPT y WhatsApp, y que lo que encuentren convierta" | Define todo el copy del sitio |

---

## 1. Mapa de navegación completo

```
ingefonsi.co/
│
├── /                          → Home (reescribir desde cero)
├── /servicios                 → Índice de servicios
│   ├── /servicios/geo-visibilidad-ia       ← PRIORITARIO
│   ├── /servicios/seo-tecnico-bogota       ← PRIORITARIO
│   ├── /servicios/auditoria-geo-seo        ← producto de entrada
│   ├── /servicios/chatbot-ia-negocio
│   └── /servicios/landing-pages-bogota
│
├── /blog                      → Motor de tráfico orgánico + autoridad GEO
│   ├── /blog/geo              (categoría)
│   ├── /blog/seo-tecnico      (categoría)
│   ├── /blog/automatizacion   (categoría)
│   └── /blog/[slug]           (artículos)
│
├── /casos                     → Proyectos reales con métricas
│   └── /casos/[slug]
│
├── /precios                   → Rangos visibles por servicio
├── /sobre-oscar               → Historia + credenciales
├── /recursos                  → Lead magnets descargables
│   └── /recursos/[slug]
├── /faq                       → Preguntas frecuentes
└── /contacto                  → Form + WhatsApp
```

---

## 2. Prioridad y orden de construcción

### Semana 1–2 (urgente — base del sitio)
- [ ] Reescribir `/` (home) con nuevo posicionamiento
- [ ] Crear `/servicios/geo-visibilidad-ia` (producto único en Bogotá)
- [ ] Crear `/servicios/seo-tecnico-bogota`
- [ ] Migrar portafolio y casos existentes a `/casos`

### Mes 1 (prioridad alta — motor de contenido)
- [ ] Crear `/blog` con estructura de categorías
- [ ] Publicar artículo semana 1 (ver sección 6)
- [ ] Crear `/precios` con rangos reales
- [ ] Crear `/servicios/auditoria-geo-seo` (producto de entrada)
- [ ] Documentar caso Coordinadora con métricas en `/casos/coordinadora`

### Mes 2–3 (completar el sitio)
- [ ] Crear `/servicios/chatbot-ia-negocio`
- [ ] Crear `/servicios/landing-pages-bogota`
- [ ] Crear `/sobre-oscar`
- [ ] Crear `/recursos` con primer lead magnet
- [ ] Crear `/faq`

### Mes 4+ (escalar)
- [ ] Mini-curso por email (`/recursos/mini-curso-visibilidad`)
- [ ] Segundo caso de éxito documentado
- [ ] Página de noticias tech/IA (`/noticias` — opcional)

---

## 3. Home `/`

### Propósito
Comunicar el reposicionamiento en 10 segundos. El visitante debe entender de inmediato: qué hace Oscar, para quién, y por qué es diferente.

### Secciones (en orden)

#### 3.1 Hero
```
TITULAR:   Tu negocio necesita existir donde la gente busca hoy.
           No solo en Google — también en ChatGPT, Perplexity y WhatsApp.

SUBTÍTULO: Soy Oscar Ochoa (Inge Fonsi). Ingeniero mecatrónico y especialista
           en visibilidad digital real. Sin agencias. Sin mentiras. Sin cuentos.

CTA 1:  [Ver cómo funciono]     → ancla a servicios
CTA 2:  [Hablar por WhatsApp]   → wa.me/573166644714
```

#### 3.2 El problema que resuelve (nueva sección — agregar)
```
Tres cosas están cambiando ahora mismo:

→ El 60% de búsquedas en 2026 generan una respuesta de IA antes
  que Google muestre un enlace. Si no apareces ahí, ya perdiste.

→ Meta bloqueó a ChatGPT y Perplexity dentro de WhatsApp.
  Pero los chatbots de negocio específico siguen activos — y son más
  necesarios que nunca.

→ El 77% de PYMES colombianas planean invertir en IA este año.
  Las que lo hagan primero capturan el mercado. Las que esperen,
  compran más caro.
```

#### 3.3 Servicios destacados (3 cards máximo en hero)
- GEO: visibilidad en IA → `/servicios/geo-visibilidad-ia`
- SEO técnico → `/servicios/seo-tecnico-bogota`
- Chatbot RAG de negocio → `/servicios/chatbot-ia-negocio`

#### 3.4 Prueba social rápida (conservar de la versión actual)
- Métricas del caso Coordinadora (agregar números concretos)
- Stack tecnológico

#### 3.5 CTA final
```
Tu competencia ya está en internet.
La pregunta es si te están encontrando a ti o a ellos.

[Iniciar proyecto →]
```

### SEO del home
- **Title tag:** `Oscar Ochoa (Inge Fonsi) — Consultor SEO, GEO e IA en Bogotá`
- **Meta description:** `Especialista en visibilidad digital real para negocios en Bogotá. SEO técnico, optimización para ChatGPT y Perplexity (GEO), y chatbots de negocio con IA. Sin agencias. Sin cuentos.`
- **H1:** solo uno, coincide con el titular del hero

---

## 4. Páginas de servicios

### 4.1 `/servicios` (índice)
Grid de 5 cards, cada una con:
- Nombre del servicio
- Una línea de descripción
- Para quién es
- CTA → subpágina del servicio

---

### 4.2 `/servicios/geo-visibilidad-ia` ← PRIORITARIO

**Propósito:** Capturar búsquedas de GEO + educar al prospecto que no sabe qué es.

**Title tag:** `GEO en Bogotá — Haz que ChatGPT y Perplexity citen tu negocio | Inge Fonsi`

**Estructura de la página:**
```
H1: ¿Tu negocio aparece cuando alguien le pregunta a ChatGPT?

Intro (2 párrafos):
  El 25% de búsquedas en Colombia ya ocurren en ChatGPT, Perplexity o Claude.
  Si tu negocio no aparece en esas respuestas, estás perdiendo 1 de cada 4
  clientes potenciales sin saberlo.

  GEO (Generative Engine Optimization) es la disciplina de hacer que los
  motores de IA te elijan como fuente cuando alguien pregunta sobre tu industria.
  No es SEO tradicional. Es una capa encima de él.

Qué incluye el servicio:
  → Auditoría de visibilidad en ChatGPT, Perplexity, Google AI y Gemini
  → Optimización de datos estructurados (schema markup)
  → Creación de contenido con alta "extractabilidad" para IAs
  → E-E-A-T: señales de experiencia real para que las IAs confíen en la fuente
  → Menciones en medios y fuentes externas (autoridad de cita)
  → Seguimiento mensual de apariciones en respuestas de IA

Para quién es:
  → Negocios en Bogotá que ya tienen web pero nadie los encuentra
  → PYMES que invierten en SEO tradicional pero quieren la capa de IA
  → Profesionales independientes que quieren ser la respuesta en su nicho

Inversión:
  Auditoría GEO inicial: $300.000 – $500.000 COP (entregable PDF)
  GEO mensual: $1.500.000 – $3.000.000 COP / mes

CTA: [Solicitar auditoría GEO →] → WhatsApp o formulario
```

---

### 4.3 `/servicios/seo-tecnico-bogota` ← PRIORITARIO

**Title tag:** `SEO Técnico en Bogotá — Core Web Vitals, velocidad y estructura | Inge Fonsi`

**Estructura:**
```
H1: SEO técnico para negocios en Bogotá que quieren aparecer primero en Google

Diferenciador clave:
  No hago SEO de palabras clave genéricas. Hago ingeniería de visibilidad:
  audito la estructura técnica, corrijo lo que Google no puede leer, y
  construyo la base sobre la que funciona todo lo demás.

Qué incluye:
  → Auditoría técnica (Core Web Vitals, velocidad, indexación)
  → Optimización para móvil (mobile-first indexing)
  → Estructura de URLs y arquitectura de información
  → Google Business Profile (SEO local Bogotá)
  → WordPress o sitios estáticos
  → GEO incluido como capa adicional en todos los proyectos

Inversión:
  Auditoría técnica: $500.000 – $800.000 COP
  SEO mensual: $1.500.000 – $3.000.000 COP / mes

CTA: [Auditar mi sitio →]
```

---

### 4.4 `/servicios/auditoria-geo-seo`

**Propósito:** Producto de entrada de bajo costo. La barrera mínima para empezar.

**Title tag:** `Auditoría SEO + GEO en Bogotá — Diagnóstico completo | Inge Fonsi`

```
H1: Sabe exactamente cómo está tu negocio en Google y en las IAs — en 5 días

Qué incluye la auditoría ($300.000 – $500.000 COP):
  → Visibilidad actual en ChatGPT, Perplexity, Google AI y Gemini
  → Score técnico SEO (Core Web Vitals, indexación, velocidad)
  → Análisis de 10 keywords prioritarias para tu negocio
  → Comparativa con tus 3 principales competidores
  → Hoja de ruta priorizada de acciones

Entregable: PDF de 15–20 páginas + sesión de 30 min por WhatsApp/videollamada

Por qué empezar con una auditoría:
  Antes de invertir en SEO o GEO, necesitas saber dónde estás parado.
  La auditoría te dice qué está roto, qué ya está bien, y qué moverá
  la aguja más rápido con tu presupuesto actual.

CTA: [Pedir auditoría →]
```

---

### 4.5 `/servicios/chatbot-ia-negocio`

**Title tag:** `Chatbot con IA para tu negocio en Bogotá — RAG, sin alucinaciones | Inge Fonsi`

**Diferenciador clave (responder la objeción de Meta AI):**
```
Meta AI está en WhatsApp — pero no sabe el precio de tus productos,
tus horarios reales, ni cómo funciona tu proceso de compra.

Un chatbot RAG entrenado con la información real de tu negocio
sí lo sabe. Y responde correctamente el 95% de las veces,
sin inventar datos.
```

**Sectores con casos de uso:**
- Salud (citas médicas, preguntas frecuentes de clínicas)
- Ferreterías y tiendas locales (catálogo de productos, disponibilidad)
- Inmobiliarias (filtros de propiedades, agendar visitas)
- Logística (seguimiento, cotizaciones)
- Servicios profesionales (consultoría, contabilidad)

**Inversión:**
- Chatbot básico (FAQ + WhatsApp): $1.500.000 – $2.500.000 COP
- Chatbot RAG avanzado (documentos + integraciones): $2.500.000 – $5.000.000 COP

---

### 4.6 `/servicios/landing-pages-bogota`

**Title tag:** `Landing Pages en Bogotá optimizadas para Google y para IA | Inge Fonsi`

**Diferenciador:**
```
No es solo una página bonita. Es una estructura técnica optimizada
para que Google la posicione Y para que las IAs la citen como fuente.

100/100 en Core Web Vitals. Schema markup incluido. GEO-ready desde el día 1.
```

**Inversión:**
- Landing page optimizada: $1.200.000 – $2.500.000 COP (proyecto único)

---

## 5. Casos de éxito `/casos`

### Estructura de cada caso
```
Empresa: [Nombre]
Sector:  [Sector]
Problema: [Descripción en 2–3 líneas]
Solución: [Servicio aplicado]
Resultado:
  → Métrica 1 (ej: "validaciones de 45 min → 1 min")
  → Métrica 2 (ej: "0 errores manuales desde implementación")
  → Métrica 3 (ej: "adoptado por todo el equipo técnico en 1 semana")
Tecnologías usadas: [stack]
```

### Caso prioritario: `/casos/coordinadora`
```
Empresa: Coordinadora Mercantil
Sector:  Logística crítica
Problema:
  El equipo técnico dependía de Postman y SOAP para validar conexiones
  con clientes finales. Solo los desarrolladores podían hacerlo, lo que
  generaba cuellos de botella y tiempos de validación muy altos.

Solución:
  Aplicación web con interfaz gráfica conectada a las APIs oficiales
  en ambiente sandbox. Sin necesidad de escribir código.

Resultado:
  → Crear/anular guías: de 45 min → menos de 1 min
  → Cualquier persona del equipo (no solo devs) puede operar
  → Cero intervención humana en el proceso de validación
  → Cotizaciones, seguimiento, impresión de rótulos: un clic

Tecnologías: [completar con stack real usado]
```

> **NOTA:** Agregar los números reales de tiempo ahorrado. Si no los tienes exactos, usa "estimado" o pide autorización para citarlos.

---

## 6. Blog `/blog`

### Principio editorial
Cada artículo debe cumplir los tres trabajos simultáneamente:
1. **Posicionar en Google** (keyword en título, URL, H2s)
2. **Posicionar en IAs** (párrafos declarativos, datos estructurados, respuestas directas)
3. **Demostrar expertise local** (ejemplos bogotanos, contexto colombiano)

### Estructura técnica de cada artículo
```
- URL: /blog/[keyword-principal-ciudad-si-aplica]
- Title tag: [Keyword principal] — [Año] | Inge Fonsi
- Meta description: máx 155 caracteres, responde la intención de búsqueda
- H1: solo uno, = intención de búsqueda principal
- H2s: responden preguntas específicas (formato ideal para IAs)
- Párrafos: declarativos, sin rodeos ("El GEO es la técnica de...")
- Longitud ideal: 1.200 – 2.000 palabras
- Schema markup: Article + Author + BreadcrumbList
- Imagen destacada: alt text descriptivo con keyword
- CTA al final: relacionado con el servicio del artículo
```

### Categorías del blog
| Categoría | URL | Propósito |
|---|---|---|
| GEO | `/blog/geo` | Capturar demanda informativa y transaccional de GEO |
| SEO técnico | `/blog/seo-tecnico` | Posicionar como experto técnico, atraer búsquedas de auditoría |
| Automatización IA | `/blog/automatizacion` | Casos de uso de chatbots, responder objeción Meta AI |
| Casos y resultados | `/blog/casos` | Prueba social, cierra ventas con lectores avanzados |

---

### Calendario de publicación — primeras 12 semanas

| Semana | Artículo | URL | Categoría | Objetivo |
|---|---|---|---|---|
| 1 | Qué es GEO y por qué tu negocio en Bogotá debe aparecer en ChatGPT | `/blog/que-es-geo-ia-bogota` | GEO | Educativo + captura demanda informativa. Nadie lo ha escrito bien en español para Colombia |
| 2 | Caso real: chatbot RAG con PDFs de 500 páginas — proceso, errores y métricas | `/blog/chatbot-rag-caso-real-coordinadora` | Casos | Genera confianza. Demuestra expertise técnico real |
| 3 | Meta bloqueó a ChatGPT en WhatsApp — qué cambia para negocios colombianos en 2026 | `/blog/meta-chatgpt-whatsapp-colombia-2026` | Automatización | Noticia técnica con ángulo local. Posiciona como analista del mercado |
| 4 | Core Web Vitals en 2026: el checklist técnico que uso con cada cliente en Bogotá | `/blog/core-web-vitals-checklist-bogota-2026` | SEO técnico | Atrae búsquedas transaccionales. Demuestra proceso |
| 5 | Por qué tu PYME en Bogotá necesita chatbot de negocio, no Meta AI | `/blog/chatbot-negocio-vs-meta-ai-pymes-colombia` | Automatización | Responde la objeción principal de ventas |
| 6 | Cómo estructurar contenido para que ChatGPT y Perplexity te citen | `/blog/contenido-para-ser-citado-chatgpt-perplexity` | GEO | Técnico y único. Nadie más en Bogotá lo escribe así |
| 7 | SEO local en Bogotá: la guía técnica para aparecer en Google Maps en 2026 | `/blog/seo-local-bogota-google-maps-2026` | SEO técnico | Alta intención transaccional. Volumen de búsqueda medio-alto |
| 8 | Cómo optimizar Google Business Profile para más llamadas y visitas | `/blog/optimizar-google-business-profile-bogota` | SEO técnico | Búsqueda transaccional directa, fácil de posicionar localmente |
| 9 | Qué es el SEO técnico y por qué las PYMES colombianas lo ignoran (y lo pagan) | `/blog/seo-tecnico-pymes-colombia` | SEO técnico | Educativo + transaccional. Audiencia amplia |
| 10 | Chatbot con IA para ferreterías en Bogotá — caso de uso real | `/blog/chatbot-ia-ferreterias-bogota` | Casos | Nicho específico con alta demanda de automatización |
| 11 | GEO vs SEO: ¿en qué invertir primero en 2026 si eres PYME? | `/blog/geo-vs-seo-pymes-2026` | GEO | Captura comparativas. Alta intención de decisión de compra |
| 12 | Cómo medir si tu estrategia GEO está funcionando (métricas reales) | `/blog/medir-resultados-geo-ia` | GEO | Consolida autoridad. Útil para clientes actuales también |

---

## 7. Precios `/precios`

### Principio
Mostrar rangos reales, no "cotiza aquí". La transparencia filtra prospectos y genera confianza. Los precios son en COP.

### Tabla de servicios y precios

| Servicio | Tipo | Precio COP |
|---|---|---|
| Auditoría GEO + SEO | Proyecto único (entregable PDF) | $300.000 – $500.000 |
| Landing page GEO-ready | Proyecto único | $1.200.000 – $2.500.000 |
| SEO técnico mensual | Retención mensual | $1.500.000 – $3.000.000 /mes |
| GEO mensual | Retención mensual | $1.500.000 – $3.000.000 /mes |
| SEO + GEO combinado | Retención mensual | $2.500.000 – $4.500.000 /mes |
| Chatbot RAG básico | Proyecto único | $1.500.000 – $2.500.000 |
| Chatbot RAG avanzado | Proyecto único + mantenimiento | $2.500.000 – $5.000.000 |
| Paquete integral (web + SEO/GEO + chatbot) | Proyecto único | $4.000.000 – $8.000.000 |

### Nota importante en la página
```
Los precios varían según el tamaño del proyecto, la cantidad de páginas,
el sector y las integraciones requeridas. La auditoría inicial ($300K–$500K)
incluye un diagnóstico preciso y una propuesta detallada sin compromisos.
```

---

## 8. Sobre Oscar `/sobre-oscar`

### Propósito
Construir la señal E-E-A-T (Experience, Expertise, Authoritativeness, Trustworthiness) que tanto Google como las IAs usan para decidir si citar una fuente.

### Estructura
```
H1: Oscar Ochoa — Ingeniero que resuelve problemas digitales reales

Párrafo de experiencia (contar la historia, no el CV):
  Ingeniero Mecatrónico con más de 10 años resolviendo problemas donde el
  software se encuentra con la realidad física. Trabajé en Coordinadora
  Mercantil, donde vi de cerca cómo los sistemas fallan no por problemas
  técnicos sino porque nadie los entiende de verdad.

  Cuando operaciones críticas dependían de procesos manuales repetitivos,
  las convertí en herramientas que cualquier persona del equipo podía operar.
  Esa mentalidad — diagnosticar antes de programar — es la que traigo a cada
  proyecto digital.

  Hoy ayudo a negocios en Bogotá a ser encontrados donde sus clientes buscan:
  en Google, en ChatGPT y en WhatsApp. Sin agencias intermediarias.
  Sin promesas vacías.

Credenciales técnicas:
  → Ingeniero Mecatrónico (título universitario)
  → +10 años de experiencia en automatización y sistemas
  → Especialización en SEO técnico, GEO y chatbots con RAG
  → Proyectos en logística crítica (Coordinadora Mercantil)
  → Stack: Python, OpenAI, Gemini, Claude, WordPress, Vercel, GitHub

Por qué "Inge Fonsi":
  [Incluir la historia detrás del nombre si es relevante para la marca]

Redes y verificación:
  → GitHub: github.com/ingefonsitech
  → LinkedIn: linkedin.com/in/ingefonsi
  → TikTok: tiktok.com/@ingefonsi
  → X: x.com/IngeFonsi
```

---

## 9. Recursos y lead magnets `/recursos`

### Lead magnet 1 (crear en mes 2)
```
Nombre: "Checklist GEO: 10 puntos para que ChatGPT cite tu negocio"
URL:    /recursos/checklist-geo-bogota
Formato: PDF descargable
A cambio de: nombre + email

Contenido del checklist:
  1. Dominio propio con autoridad (no subdominios)
  2. Schema markup instalado correctamente
  3. Párrafos declarativos en cada página de servicio
  4. Google Business Profile completo y actualizado
  5. Menciones del negocio en al menos 3 medios externos
  6. E-E-A-T: página "sobre nosotros" con historia real
  7. Velocidad de carga < 2.5 segundos
  8. Contenido en el idioma y acento del cliente objetivo
  9. FAQ estructurado con preguntas reales de clientes
  10. Actualización periódica del contenido (señal de frescura)
```

### Lead magnet 2 (crear en mes 2–3)
```
Nombre: "Guía: cómo auditar tu SEO técnico sin ser programador"
URL:    /recursos/guia-auditoria-seo-basica
Formato: PDF descargable
Propósito: Educa al prospecto antes de la venta. El que lo lee
           entiende por qué necesita a Oscar.
```

### Lead magnet 3 (mes 4+)
```
Nombre: "Mini-curso: visibilidad digital para PYMES en Bogotá (5 días por email)"
URL:    /recursos/mini-curso-visibilidad
Formato: Secuencia de 5 emails
Propósito: Nutre leads que no están listos para comprar todavía.
           El día 5 hace la oferta de auditoría.
```

---

## 10. FAQ `/faq`

### Preguntas prioritarias (cubren objeciones de venta y mejoran SEO semántico)

**Sobre GEO:**
- ¿Qué es GEO y en qué se diferencia del SEO?
- ¿Cómo sé si mi negocio aparece en ChatGPT o Perplexity?
- ¿Cuánto tiempo tarda el GEO en dar resultados?
- ¿El GEO reemplaza al SEO tradicional?

**Sobre chatbots:**
- ¿En qué se diferencia un chatbot de negocio de Meta AI?
- ¿Puedo seguir usando chatbots en WhatsApp después del cambio de Meta?
- ¿Qué es RAG y por qué evita las alucinaciones?
- ¿Cuánto tiempo toma implementar un chatbot para mi negocio?

**Sobre el servicio:**
- ¿Trabajas solo o con un equipo?
- ¿En cuánto tiempo veo resultados de SEO?
- ¿Qué pasa si no tengo sitio web todavía?
- ¿Puedes trabajar con mi presupuesto actual?
- ¿Cómo empiezo?

---

## 11. Contacto `/contacto`

### Elementos obligatorios
- Formulario simple: nombre, email, tipo de servicio (select), mensaje
- Botón WhatsApp prominente (+57 316 664 4714)
- Email visible: ingefonsi.tech@gmail.com
- Tiempo de respuesta esperado: "Respondo en menos de 24 horas"
- **No** pedir información excesiva — nombre + email + qué necesita es suficiente

---

## 12. SEO técnico global del sitio

### Configuración base (aplicar a todas las páginas)
```
- sitemap.xml automático (configurar en Antigravity/Vercel)
- robots.txt: permitir todo excepto /admin o rutas internas
- Canonical tags en cada página
- Open Graph tags para compartir en redes sociales
- Twitter/X Card meta tags
- Favicon y apple-touch-icon
- Lang="es-CO" en el html raíz
```

### Schema markup por tipo de página
```
Home:          Organization + LocalBusiness + Person
Servicios:     Service + Offer
Blog artículo: Article + Author + BreadcrumbList + FAQPage (si aplica)
Casos:         CaseStudy (o Article) + Author
Precios:       Service + Offer + PriceSpecification
FAQ:           FAQPage
Sobre Oscar:   Person + ProfilePage
```

### Variables de rastreo (implementar desde el día 1)
- Google Analytics 4 (o Plausible si prefiere privacidad)
- Google Search Console — verificar dominio desde el primer día
- Bing Webmaster Tools (también es fuente para algunos LLMs)

---

## 13. Distribución de contenido — amplificar sin pagar

### El sistema de 1 artículo → 3 piezas de contenido

Cada artículo del blog se convierte automáticamente en:

```
1. Artículo blog (SEO + GEO base)
   → Publicar en /blog con schema markup completo

2. Video corto TikTok (@ingefonsi — ya tiene cuenta)
   → 60–90 segundos explicando el concepto principal del artículo
   → Formato: "esto que hace tu competencia está mal"
   → Sin edición compleja — cámara frontal + pantalla si aplica

3. Post LinkedIn (perfil técnico B2B)
   → Insight técnico del artículo en 150–200 palabras
   → El tipo de contenido que comparten dueños de empresa y gerentes
```

### Canales en orden de prioridad
1. **Blog** — base de autoridad SEO y GEO
2. **TikTok** — generación de demanda, contenido en español técnico sin competencia
3. **LinkedIn** — perfil B2B, decisores de compra en Bogotá
4. **X / Twitter** — comunidad tech hispana
5. **WhatsApp** — difusión directa a contactos de red existente

---

## 14. Modelo de negocio resumido

### Propuesta de valor única
> "Hago que tu negocio exista donde la gente busca hoy — Google, ChatGPT y WhatsApp — y que lo que encuentren, convierta."

### Funnel de adquisición
```
Tráfico orgánico (blog + TikTok + LinkedIn)
        ↓
Landing de servicios o blog
        ↓
Oferta de auditoría GEO + SEO ($300K–$500K) — barrera de entrada baja
        ↓
~40% de los que pagan la auditoría contratan servicio mensual
        ↓
Retención mensual SEO/GEO ($1.5M–$4.5M/mes)
        ↓
Expansión: chatbot RAG o landing page como proyecto adicional
```

### Por qué el modelo de consultor personal y no agencia
- El mercado bogotano de agencias está saturado (cientos de opciones)
- Una persona con nombre, cara y criterio propio genera confianza más rápido
- Más difícil de copiar que cualquier servicio genérico
- Permite cobrar prima por expertise sin el overhead de un equipo

---

## 15. Contexto de mercado (para informar el copy)

Datos verificados que pueden usarse en el sitio:
- 77% de PYMES colombianas planean invertir en IA (2026)
- 25–40% de búsquedas en Colombia ya ocurren en ChatGPT/Perplexity/Claude
- 60%+ de búsquedas globales generan respuesta de IA antes de un enlace
- Meta bloqueó chatbots generalistas en WhatsApp desde enero 15, 2026
- Los chatbots de negocio específico siguen siendo permitidos por Meta
- Solo existe 1 agencia GEO especializada en toda LATAM (México) — Colombia sin cubrir
- SEO técnico mensual en Bogotá: mercado entre $650K y $3.5M/mes

---

*Última actualización: abril 2026*
*Este documento debe actualizarse cada vez que se agregue una página nueva o cambie la estrategia.*
