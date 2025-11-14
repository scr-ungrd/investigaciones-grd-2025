# Recomendaciones de Estilo para el Libro de Investigaciones
## Basadas en el análisis de Nature Climate Change

**Fecha:** 2025-01-19
**Referencia:** [ANALISIS-ESTILO-NATURE.md](ANALISIS-ESTILO-NATURE.md)

---

## 🎨 APLICACIÓN INMEDIATA: MEJORAS PRIORITARIAS

### 1. TIPOGRAFÍA (Alta prioridad)

#### ✅ Cambios recomendados

**Familia de fuentes:**
```css
/* Mantener para títulos y cuerpo */
font-family: "Source Sans Pro", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;

/* AGREGAR para dar elegancia científica (similar a Nature) */
h1, h2, h3, .article-title {
  font-family: "Merriweather", "Georgia", "Palatino", serif;
}
```

**Tamaños de fuente (ajustar a estándares Nature):**
```css
body {
  font-size: 1.125rem;  /* 18px - más legible que 16px actual */
  line-height: 1.76;    /* Aumentar de 1.6 a 1.76 para mejor lectura */
}

h1 {
  font-size: 2rem;      /* 32px */
  line-height: 1.25;
  letter-spacing: -0.0390625rem;  /* Ajuste óptico */
}

h2 {
  font-size: 1.5rem;    /* 24px */
  line-height: 1.4;
  letter-spacing: -0.0117156rem;
}

h3 {
  font-size: 1.25rem;   /* 20px */
  line-height: 1.4;
}

.metadata, .caption {
  font-size: 0.875rem;  /* 14px */
}
```

**Antialiasing para títulos:**
```css
h1, h2, h3, h4, h5, h6 {
  -webkit-font-smoothing: antialiased;
  font-weight: 700;
}
```

---

### 2. PALETA DE COLORES (Alta prioridad)

#### ✅ Definir variables CSS

Crear archivo: `color-scheme.css`

```css
:root {
  /* Colores principales */
  --color-primary: #006699;           /* Azul Nature para enlaces/botones */
  --color-text: #222222;              /* Negro suave para texto */
  --color-text-secondary: #6F6F6F;    /* Gris para metadatos */
  --color-text-tertiary: #626262;     /* Gris oscuro */

  /* Fondos */
  --color-bg-page: #FFFFFF;           /* Blanco puro */
  --color-bg-alt: #EEEEEE;            /* Gris muy claro */
  --color-bg-box-info: #EBF1F5;       /* Azul claro para cajas */

  /* Bordes */
  --color-border: #D5D5D5;            /* Gris claro */
  --color-border-light: #EEEEEE;      /* Gris muy claro */
  --color-border-separator: #CEDBE0;   /* Azul grisáceo */

  /* Estados */
  --color-success: #00B8B0;           /* Verde azulado */
  --color-error: #C40606;             /* Rojo */
  --color-warning: #EDBC53;           /* Amarillo */
  --color-info: #003F8D;              /* Azul oscuro */

  /* Resumen/Abstract existentes (mantener compatibilidad) */
  --color-resumen-bg: #EFF6FF;        /* Azul muy claro */
  --color-resumen-border: #DBEAFE;    /* Azul claro */
  --color-resumen-title: #3B82F6;     /* Azul brillante */
  --color-resumen-title-border: #BFDBFE;

  --color-abstract-bg: #FDF6D9;       /* Amarillo claro */
  --color-abstract-border: #F4E9B5;   /* Amarillo */
  --color-abstract-title: #B8860B;    /* Dorado oscuro */
  --color-abstract-title-border: #E8D995;
}
```

#### ✅ Aplicar colores

```css
body {
  color: var(--color-text);
  background-color: var(--color-bg-page);
}

a {
  color: var(--color-primary);
  text-decoration: underline;
}

.metadata, .author, .date {
  color: var(--color-text-secondary);
}

/* Bordes de sección */
.c-article-section__title {
  border-bottom: 2px solid var(--color-border);
  padding-bottom: 8px;
}
```

---

### 3. CAJAS INFORMATIVAS MEJORADAS (Media prioridad)

#### ✅ Actualizar estilos de callouts

```css
/* Caja base estilo Nature */
.callout {
  background-color: #FFFFFF;
  border: 1px solid var(--color-border-light);
  border-left: 4px solid var(--color-info);  /* Borde grueso izquierdo */
  border-radius: 2px;
  padding: 16px;
  margin: 24px 0;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
  font-size: 1rem;
  line-height: 1.4;
}

/* Variantes por tipo */
.callout-info {
  border-left-color: var(--color-info);
}

.callout-tip, .callout-success {
  border-left-color: var(--color-success);
}

.callout-warning {
  border-left-color: var(--color-warning);
}

.callout-caution, .callout-important {
  border-left-color: var(--color-error);
}

/* Títulos de cajas */
.callout-title {
  font-weight: 700;
  margin-top: 0;
  margin-bottom: 8px;
  font-size: 1.125rem;
}
```

#### ✅ Cajas de conclusiones (mantener colores actuales, mejorar formato)

```css
/* Puntos Clave */
#puntos-clave {
  background-color: #F8F0DD;
  border: 1px solid #F7EED3;
  border-left: 4px solid #EDBC53;  /* Amarillo warning */
  border-radius: 2px;
  padding: 16px;
  margin: 24px 0;
}

#puntos-clave h2 {
  color: #B8860B;
  font-size: 1.25rem;
  margin-top: 0;
  margin-bottom: 12px;
  border-bottom: 2px solid #E8D995;
  padding-bottom: 8px;
}

/* Preguntas */
#preguntas {
  background-color: #F3EAF8;
  border: 1px solid #EFE3F7;
  border-left: 4px solid #9333EA;  /* Morado */
  border-radius: 2px;
  padding: 16px;
  margin: 24px 0;
}

#preguntas h2 {
  color: #7C3AED;
  font-size: 1.25rem;
  margin-top: 0;
  margin-bottom: 12px;
  border-bottom: 2px solid #DDD6FE;
  padding-bottom: 8px;
}

/* Recomendaciones */
#recomendaciones {
  background-color: #F8DEDC;
  border: 1px solid #FAD4D1;
  border-left: 4px solid #C40606;  /* Rojo error */
  border-radius: 2px;
  padding: 16px;
  margin: 24px 0;
}

#recomendaciones h2 {
  color: #DC2626;
  font-size: 1.25rem;
  margin-top: 0;
  margin-bottom: 12px;
  border-bottom: 2px solid #FECACA;
  padding-bottom: 8px;
}
```

---

### 4. ESPACIADO Y MÁRGENES (Alta prioridad)

#### ✅ Sistema de espaciado consistente

```css
/* Usar múltiplos de 8px (sistema Nature) */
.spacing-xs { margin: 8px; }
.spacing-sm { margin: 16px; }
.spacing-md { margin: 24px; }
.spacing-lg { margin: 32px; }
.spacing-xl { margin: 40px; }

/* Aplicar a elementos */
p {
  margin-bottom: 24px;  /* Aumentar de 16px actual */
  margin-top: 0;
}

.c-article-section {
  margin-bottom: 40px;  /* Espaciado generoso entre secciones */
}

.c-article-section__content {
  padding-top: 8px;
}

h2, h3, h4 {
  margin-top: 32px;    /* Más espacio antes de títulos */
  margin-bottom: 16px;
}

h1 {
  margin-bottom: 24px;
}
```

---

### 5. TABLAS ESTILO NATURE (Media prioridad)

#### ✅ Actualizar estilos de tablas

```css
table {
  border-collapse: collapse;
  width: 100%;
  margin: 24px 0;  /* Aumentar de 1.5rem */
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
  font-size: 0.875rem;  /* 14px - más pequeño que cuerpo */
  line-height: 1.4;
}

th, td {
  border: 1px solid var(--color-border);
  padding: 12px;  /* Aumentar de 0.75rem */
  text-align: left;  /* Cambiar de center a left */
}

th {
  background-color: #F9FAFB;  /* Gris muy claro Nature */
  font-weight: 600;
  color: var(--color-text);
}

tr:nth-child(even) {
  background-color: #FAFAFA;  /* Zebra striping sutil */
}

/* Caption */
table caption {
  text-align: left;
  font-weight: 600;
  margin-bottom: 8px;
  color: var(--color-text);
}
```

---

### 6. FIGURAS Y LEYENDAS (Media prioridad)

#### ✅ Mejorar presentación de figuras

```css
/* Container de figura */
.quarto-figure {
  margin: 24px 0;
  background-color: var(--color-bg-page);
}

/* Imagen */
.quarto-figure img {
  max-width: 100%;
  height: auto;
  display: block;
  border: 1px solid var(--color-border-light);
  border-radius: 2px;
}

/* Caption */
figcaption,
.figure-caption {
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
  font-size: 0.875rem;  /* 14px */
  line-height: 1.4;
  color: var(--color-text-secondary);
  margin-top: 8px;
  padding-top: 8px;
  border-top: 1px solid var(--color-border-light);
}

/* Prefijo "Figura X:" en negrita */
figcaption strong,
.figure-caption strong {
  color: var(--color-text);
  font-weight: 700;
}
```

---

### 7. METADATOS DE ARTÍCULO (Media prioridad)

#### ✅ Estilo para información del capítulo

```css
.article-header {
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
  margin-bottom: 40px;
  border-bottom: 2px solid var(--color-border);
  padding-bottom: 24px;
}

.article-title {
  font-size: 1.875rem;  /* 30px */
  line-height: 1.25;
  margin: 0 0 16px;
  color: var(--color-text);
}

@media (min-width: 768px) {
  .article-title {
    font-size: 2.25rem;  /* 36px */
  }
}

.article-authors {
  font-size: 1rem;
  color: var(--color-text);
  margin-bottom: 8px;
}

.article-meta {
  display: flex;
  flex-wrap: wrap;
  font-size: 0.875rem;
  color: var(--color-text-secondary);
  gap: 8px;
}

.article-meta__item {
  border-right: 2px solid var(--color-border-separator);
  padding-right: 8px;
  margin-right: 8px;
}

.article-meta__item:last-child {
  border-right: none;
}
```

---

### 8. BOTONES Y ELEMENTOS INTERACTIVOS (Baja prioridad)

#### ✅ Botones estilo Nature

```css
.btn-primary {
  background-color: var(--color-primary);
  border: 1px solid var(--color-primary);
  border-radius: 2px;
  color: #FFFFFF;
  padding: 12px 16px;
  font-size: 0.875rem;
  font-weight: 600;
  cursor: pointer;
  transition: background-color 0.2s ease-out, color 0.2s ease-out;
  text-decoration: none;
  display: inline-block;
}

.btn-primary:hover {
  background-color: #FFFFFF;
  color: var(--color-primary);
  border-color: var(--color-primary);
  text-decoration: none;
}

.btn-secondary {
  background-color: transparent;
  border: 1px solid var(--color-primary);
  border-radius: 2px;
  color: var(--color-primary);
  padding: 12px 16px;
  font-size: 0.875rem;
  font-weight: 600;
  cursor: pointer;
  transition: background-color 0.2s ease-out;
}

.btn-secondary:hover {
  background-color: var(--color-primary);
  color: #FFFFFF;
}
```

---

### 9. CÓDIGO Y ELEMENTOS TÉCNICOS (Baja prioridad)

#### ✅ Bloques de código

```css
pre, code {
  font-family: "Fira Code", "Consolas", "Monaco", monospace;
  font-size: 0.875rem;
}

pre {
  background-color: #F9FAFB;
  border: 1px solid var(--color-border);
  border-left: 4px solid var(--color-primary);
  border-radius: 2px;
  padding: 16px;
  margin: 24px 0;
  overflow-x: auto;
  line-height: 1.5;
}

code {
  background-color: #F3F4F6;
  padding: 2px 6px;
  border-radius: 2px;
  color: #DC2626;
}

pre code {
  background-color: transparent;
  padding: 0;
  color: inherit;
}
```

---

### 10. REFERENCIAS BIBLIOGRÁFICAS (Alta prioridad)

#### ✅ Mejorar presentación de bibliografía

```css
#refs {
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
  font-size: 0.875rem;  /* 14px - más pequeño que cuerpo */
  line-height: 1.5;
}

.csl-entry {
  margin-bottom: 16px;
  padding-bottom: 16px;
  border-bottom: 1px solid var(--color-border-light);
}

.csl-entry:last-child {
  border-bottom: none;
}

/* Número de referencia */
.csl-left-margin {
  font-weight: 700;
  color: var(--color-primary);
  min-width: 32px;
  display: inline-block;
}

/* Contenido de referencia */
.csl-right-inline {
  display: inline;
  padding-left: 8px;
}

/* Enlaces en referencias */
.csl-entry a {
  color: var(--color-primary);
  text-decoration: underline;
  word-break: break-word;
}
```

---

## 📋 PLAN DE IMPLEMENTACIÓN

### Fase 1: Inmediata (1-2 horas)
1. ✅ Crear archivo `color-scheme.css` con variables
2. ✅ Actualizar tipografía (tamaños, line-heights)
3. ✅ Mejorar espaciado (párrafos, secciones)
4. ✅ Actualizar cajas de conclusiones
5. ✅ Mejorar referencias bibliográficas

### Fase 2: Corto plazo (2-4 horas)
6. ✅ Actualizar tablas
7. ✅ Mejorar figuras y leyendas
8. ✅ Estilizar metadatos de capítulos
9. ✅ Agregar cajas informativas tipo Nature

### Fase 3: Mediano plazo (opcional)
10. ✅ Implementar botones
11. ✅ Mejorar bloques de código
12. ✅ Agregar elementos interactivos
13. ✅ Optimizar responsive design

---

## 🎯 CAMBIOS MÍNIMOS PARA MÁXIMO IMPACTO

Si solo puedes hacer **3 cambios**, estos son los más importantes:

### 1. Tipografía mejorada
```css
body {
  font-size: 1.125rem;
  line-height: 1.76;
}

h1, h2, h3 {
  font-family: "Merriweather", Georgia, serif;
  -webkit-font-smoothing: antialiased;
}

p {
  margin-bottom: 24px;
}
```

### 2. Paleta de colores consistente
```css
:root {
  --color-primary: #006699;
  --color-text: #222222;
  --color-border: #D5D5D5;
}

a { color: var(--color-primary); }
body { color: var(--color-text); }
```

### 3. Cajas con borde lateral grueso
```css
.callout {
  border-left: 4px solid var(--color-info);
  padding: 16px;
  margin: 24px 0;
  background: #FFFFFF;
  border-radius: 2px;
}
```

---

## 📝 ARCHIVOS A CREAR/MODIFICAR

### Crear nuevos archivos:
1. `color-scheme.css` - Variables de colores
2. `nature-style.css` - Estilos inspirados en Nature
3. `improved-tables.css` - Tablas mejoradas
4. `bibliography-style.css` - Referencias bibliográficas

### Modificar archivos existentes:
1. `custom.css` - Actualizar con nuevos valores
2. `_quarto.yml` - Agregar nuevos CSS en cascada

### Orden de carga CSS recomendado:
```yaml
css:
  - color-scheme.css      # 1. Variables primero
  - custom.css            # 2. Estilos base
  - nature-style.css      # 3. Estilos Nature
  - pdf-styles.css        # 4. PDF último
```

---

## 🔍 COMPARACIÓN ANTES/DESPUÉS

| Elemento | Antes | Después (Nature-inspired) |
|:---------|:------|:-------------------------|
| **Font-size body** | 16px | 18px (1.125rem) |
| **Line-height** | 1.6 | 1.76 |
| **Color enlaces** | #069 | #006699 |
| **Color texto** | #333 | #222222 |
| **Margen párrafos** | 16px | 24px |
| **Border cajas** | 4px sólido color | 1px + 4px lateral |
| **Border radius** | 0.5rem (8px) | 2px |
| **Espaciado secciones** | Variable | 40px consistente |

---

## ✨ BENEFICIOS ESPERADOS

1. **Mayor legibilidad** - Fuente más grande (18px), line-height generoso
2. **Apariencia profesional** - Inspirado en revistas científicas de prestigio
3. **Consistencia visual** - Sistema de colores y espaciado coherente
4. **Mejor jerarquía** - Tipografía diferenciada (serif para títulos)
5. **Accesibilidad mejorada** - Contraste optimizado, tamaños legibles
6. **Responsive superior** - Breakpoints bien definidos
7. **Experiencia de lectura** - Espaciado generoso, menos fatiga visual

---

**Próximo paso:** Implementar Fase 1 (cambios inmediatos de alto impacto)
