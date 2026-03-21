# DESIGN.md — Especificación Visual "Inge Fonsi"
> Sistema de Telemetría Táctica · Retro-Futurista · Minimalismo Técnico

---

## 1. Concepto Central

**Nombre del concepto:** *Engineer's HUD* (Heads-Up Display de Ingeniero).

La landing debe verse como el panel de control de un ingeniero de soporte del futuro:
oscura, precisa, con información densa pero ordenada. Cada sección es un módulo
de sistema que se activa al ser explorado.

**Referencias visuales (por orden de influencia):**

1. **Final Fantasy XV UI** (`image_0.png` / `cafeTechne/Final-Fantasy-CSS`):
   - Fondos casi negros con paneles de borde fino en azul-gris.
   - Texto monoespaciado, jerarquía de datos tipo "ficha de personaje".
   - Barras de progreso, etiquetas de estado (chips/tags), tablas limpias.
   - Acento en cian eléctrico para elementos activos e interactivos.

2. **Tech Blogs Grid** (`image_1.png`):
   - Tarjetas oscuras con bordes sutiles flotando sobre fondo casi negro.
   - Chips/tags de tecnologías en la parte inferior de cada tarjeta.
   - Layout de grilla limpio, escalable y respirable.

3. **KERN / Telemetría deportiva** (`image_2.png`):
   - Texto enorme y contundente como elemento visual en sí mismo.
   - Combinación de fotografía de fondo con tipografía pesada encima.
   - Métricas numéricas con tipografía monoespaciada (ej: "8% — 12%").
   - Motion de texto en scroll: palabras que aparecen o se deslizan al bajar.

---

## 2. Paleta de Colores

| Token | Valor HEX | Uso |
|-------|-----------|-----|
| `--bg-base` | `#0c0d12` | Fondo principal (negro azulado, casi pizarra) |
| `--bg-panel` | `#13151f` | Fondo de tarjetas, paneles y contenedores |
| `--border` | `#1f2231` | Bordes de contenedores y líneas divisorias |
| `--text-primary` | `#ffffff` | Texto principal, títulos |
| `--text-muted` | `#8892a4` | Texto secundario, placeholders, subtítulos |
| `--accent-cyan` | `#00bcd4` | Acento primario: botones, barras activas, íconos, subrayados |
| `--accent-orange` | `#ff5722` | Acento secundario: alertas, hover de botón primario, énfasis puntual |
| `--accent-glow` | `rgba(0,188,212,0.15)` | Glow suave detrás de elementos cian (sombra de tarjeta activa) |

**Regla de uso:**
- El cian (`--accent-cyan`) es el color de **interacción**: todo lo que el usuario puede tocar o leer como dato clave.
- El naranja (`--accent-orange`) es el color de **atención**: solo para hover, errores o un dato destacado por sección.
- Nunca usar ambos acentos juntos en el mismo elemento.

---

## 3. Tipografía

### Fuentes
| Rol | Fuente | Peso | CDN |
|-----|--------|------|-----|
| Títulos hero y secciones | `Oswald` | 600–700 | Google Fonts |
| Subtítulos y labels | `Montserrat` | 500–600 | Google Fonts |
| Cuerpo y descripciones | `Roboto Mono` | 400 | Google Fonts |
| Chips, métricas, datos | `Fira Code` | 400–500 | Google Fonts |

### Tratamiento tipográfico
- **Títulos principales:** `UPPERCASE`, `letter-spacing: 0.08em`, tamaño grande (clamp entre 2.5rem y 5rem).
- **Labels de sección:** texto pequeño en cian con `letter-spacing: 0.2em` y guión antes. Ej: `— SERVICIOS`.
- **Datos y métricas:** siempre en `Fira Code` o `Roboto Mono`. Los números deben "verse como consola".
- **Cuerpo:** `Roboto Mono` a 0.9rem con `line-height: 1.8` para legibilidad.

### Jerarquía de texto (inspirada en FF XV)
```
[LABEL DE SECCIÓN]    → Fira Code, cian, uppercase, pequeño
[TÍTULO PRINCIPAL]    → Oswald, blanco, grande, bold
[SUBTÍTULO]           → Montserrat, blanco/muted, medium
[DESCRIPCIÓN]         → Roboto Mono, muted, normal
[DATO / MÉTRICA]      → Fira Code, cian o blanco, destacado
```

---

## 4. Componentes de UI

### Contenedores / Paneles
- Fondo: `--bg-panel` (`#13151f`)
- Borde: `1px solid --border` (`#1f2231`)
- Border-radius: `4px` (casi recto, no redondeado)
- Sin sombras externas excepto en estado hover: `box-shadow: 0 0 16px --accent-glow`
- Inspiración directa: los paneles "Vitals", "Attributes" y "Settings" de la FF CSS library.

### Botones
**Primary (acción principal):**
- Fondo: `--accent-cyan` sólido
- Texto: `#000000` negro, `Montserrat`, uppercase, bold
- Border-radius: `2px`
- Hover: fondo cambia a `--accent-orange`, transición `0.2s ease`
- Sin sombras, sin adornos.

**Secondary / Outline:**
- Fondo: transparente
- Borde: `1px solid --accent-cyan`
- Texto: `--accent-cyan`
- Hover: fondo `rgba(0,188,212,0.1)`, borde se mantiene
- Mismo border-radius que el primario.

**Ghost / Link:**
- Sin fondo ni borde
- Texto en cian con subrayado fino al hover
- Para links dentro del body text.

### Inputs de formulario
- Fondo: transparente
- Sin borde lateral ni superior: solo `border-bottom: 1px solid --border`
- Al hacer focus: `border-bottom-color: --accent-cyan`, transición suave
- Placeholder: `--text-muted` en `Roboto Mono`
- Label flotante: sube al hacer focus, color cian

### Chips / Tags de tecnologías
- Fondo: `rgba(0,188,212,0.1)`
- Borde: `1px solid rgba(0,188,212,0.3)`
- Texto: `--accent-cyan`, `Fira Code`, `font-size: 0.7rem`, uppercase
- Border-radius: `2px`
- Inspiración directa: los chips de tags de `image_1.png` (Tech Blogs grid)

### Iconos
- Librería: **Lucide Icons** (vía CDN)
- Tamaño base: `20px`
- Color: `--accent-cyan`
- Sin relleno, solo stroke

### Barra de navegación
- Fondo: `rgba(12,13,18,0.85)` con `backdrop-filter: blur(12px)`
- Sticky en top
- Logo izquierda, links derecha en `Montserrat` uppercase pequeño
- Link activo: subrayado cian de `2px` en la parte inferior

---

## 5. Motion & Scrollytelling

### Comportamiento general
Cada sección se activa con el scroll. Los elementos entran con micro-animaciones
cuando aparecen en el viewport (`IntersectionObserver` o equivalente en Antigravity).

### Transición de fondo (efecto principal)
El fondo del hero tiene una imagen o patrón que transiciona progresivamente
al hacer scroll, dividido en 3 etapas:

| Scroll position | Fondo / Imagen | Concepto |
|-----------------|---------------|----------|
| 0% — 30% (Hero) | Gradiente oscuro con partículas o red de nodos suave | "El sistema arranca" |
| 30% — 65% (Servicios / Sobre mí) | Diagrama de circuito o grid de puntos conectados | "El ingeniero trabaja" |
| 65% — 100% (Demos / Contacto) | Red neuronal animada, nodos que pulsan | "La IA entra en juego" |

**Implementación:** `opacity` crossfade entre capas de fondo fijas con `position: fixed`,
controladas por `scroll progress` en porcentaje. Las capas tienen `z-index: -1`.

### Micro-animaciones por elemento
- **Títulos de sección:** entran desde abajo (`translateY(30px)` → `0`) con `opacity 0→1`, duración `0.6s ease-out`.
- **Tarjetas de servicios/demos:** entran en cascada (stagger de `0.1s` entre tarjetas).
- **Métricas numéricas:** efecto contador: el número sube desde 0 hasta su valor real al entrar en viewport.
- **Chips de stack:** aparecen uno a uno con un delay pequeño.
- **Líneas divisorias:** se dibujan de izquierda a derecha (`width: 0` → `100%`) al hacer scroll.

### Efecto de texto tipo KERN (`image_2.png`)
En el Hero: una palabra clave grande (ej: "INGENIERÍA", "AUTOMATIZACIÓN", "IA")
cambia o se transforma con scroll, creando un efecto de "pinning" o "text morphing".
Técnica: texto con `position: sticky` dentro de un contenedor alto.

### Botón flotante de WhatsApp
- Posición: `fixed`, `bottom: 24px`, `right: 24px`
- Ícono de WhatsApp, fondo cian, `border-radius: 50%`
- Efecto `pulse` suave en loop para llamar atención (escala 1 → 1.08 → 1 cada 2s)
- Tooltip con texto al hover: "Escríbeme directo"

---

## 6. Layout y Estructura

- **Max-width del contenido:** `1200px`, centrado
- **Padding lateral mobile:** `16px`
- **Padding lateral desktop:** `40px`
- **Grid de tarjetas:** 1 columna en mobile, 2 en tablet, 3 en desktop
- **Espaciado entre secciones:** `120px` vertical en desktop, `80px` en mobile
- **Sin imágenes de stock genéricas.** Solo gráficos generados con CSS, SVG o imágenes propias.

---

## 7. Lo que este diseño NO hace

- No usa fondos blancos ni secciones claras (la oscuridad es parte de la marca).
- No usa border-radius mayor a `6px` en ningún contenedor (no es una app de bienestar).
- No usa gradientes de colores pastel o vivos (solo oscuros con toques de cian).
- No usa más de 2 fuentes activas al mismo tiempo en pantalla.
- No usa animaciones de más de `0.6s` (el sistema debe sentirse rápido y preciso).
