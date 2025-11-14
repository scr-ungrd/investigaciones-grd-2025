# GUÍA DE ESTILOS DEL LIBRO

Esta guía documenta todos los elementos de estilo específicos del libro basados en el Capítulo 1 de referencia.

---

## 1. COLORES CORPORATIVOS

### Bloques de Contenido Principal

| Elemento | Color Fondo | Color Borde | Código Hex Fondo | Código Hex Borde |
|:---------|:------------|:------------|:-----------------|:-----------------|
| **Resumen** | Azul claro | Azul | `#eff6ff` | `#3b82f6` |
| **Abstract** | Amarillo claro | Dorado | `#FDF6D9` | `#B8860B` |

### Cajas Informativas (Box 1, Box 2...)

| Elemento | Color Fondo | Color Borde | Código Hex Fondo | Código Hex Borde |
|:---------|:------------|:------------|:-----------------|:-----------------|
| **Box general** | Azul muy claro | Azul claro | `#e3f0fbff` | `#d4e8f9ff` |

### Cajas de Conclusiones

| Elemento | Color Fondo | Color Borde | Código Hex Fondo | Código Hex Borde |
|:---------|:------------|:------------|:-----------------|:-----------------|
| **Puntos Clave** | Amarillo | Amarillo oscuro | `#f8f0ddff` | `#f7eed3ff` |
| **Preguntas** | Morado claro | Morado | `#f3eaf8ff` | `#efe3f7ff` |
| **Recomendaciones** | Rojo claro | Rojo | `#f8dedcff` | `#fad4d1ff` |

---

## 2. TIPOGRAFÍA

### Fuentes del Documento

| Elemento | Fuente | Tamaño | Peso |
|:---------|:-------|:-------|:-----|
| **Cuerpo general** | Source Sans Pro | 16px | Normal |
| **Títulos H1** | Source Sans Pro | 1.875rem (30px) | 600 |
| **Títulos H2** | Source Sans Pro | 1.5rem (24px) | 600 |
| **Títulos H3** | Source Sans Pro | 1.25rem (20px) | 600 |
| **Tablas (th/td)** | Arial | 12px | Normal |
| **Box 1, 2... (título)** | Arial | 13px | Normal |
| **Box 1, 2... (contenido)** | Arial | 13px | Normal |
| **Cajas conclusiones (título)** | Source Sans Pro | 1.5rem (24px) | Normal |

### Interlineado
- **Texto general:** 1.6
- **Títulos:** 1.2

---

## 3. ESPACIADO Y MÁRGENES

### Bloques de Contenido

```css
/* Resumen y Abstract */
padding: 2rem;
margin: 2rem 0;
border-radius: 0.5rem;

/* Cajas informativas Box */
padding: 1rem 1.5rem;
margin: 1.5rem 0;
border-radius: 0.25rem;

/* Títulos */
margin-top: 2rem;
margin-bottom: 1rem;
```

### Cajas Especiales (Box1 y Conclusiones)

**CSS aplicado desde custom.css:**
```css
/* Box1 - espaciado mínimo */
#box1 h2 {
  margin-bottom: 0 !important;
}
#box1 ul {
  margin-top: 0.3rem !important;
  margin-bottom: 0 !important;
}

/* Cajas de conclusiones - espaciado mínimo */
#puntos-clave h2,
#preguntas h2,
#recomendaciones h2 {
  margin-bottom: 0 !important;
}

#puntos-clave ul,
#preguntas ul,
#recomendaciones ul {
  margin-top: 0.3rem !important;
  margin-bottom: 0 !important;
}
```

---

## 4. FORMATO DE TABLAS

### Estructura Markdown
```markdown
| Columna 1 | Columna 2 |
|:---------:|:---------:|
|  Valor 1  |  Valor 2  |

: Descripción de la tabla. {#tbl-identificador}
```

### Características CSS
- **Alineación:** Centrada en todas las celdas
- **Bordes:** 1px solid #d1d5db
- **Fondo encabezado:** #f9fafb
- **Fuente:** Arial, 12px
- **Padding:** 0.75rem
- **Caption:** Alineado a la izquierda, texto negro

**CSS aplicado:**
```css
table {
  border-collapse: collapse;
  width: 100%;
  margin: 1.5rem 0;
  font-family: Arial, sans-serif;
  font-size: 12px;
}

th, td {
  border: 1px solid #d1d5db;
  padding: 0.75rem;
  text-align: center;
  font-family: Arial, sans-serif;
  font-size: 12px;
}

th {
  background-color: #f9fafb;
  font-weight: 600;
}

/* Caption alineado a izquierda */
.quarto-float-tbl .quarto-float-caption,
table caption {
  text-align: left !important;
}
```

---

## 5. FORMATO DE FIGURAS

### Imagen Externa
```markdown
![Descripción detallada de la figura.](ruta/imagen.png){#fig-identificador width="383"}
```

### Gráfico OJS Interactivo (D3)
```markdown
```{ojs}
//| echo: false
//| label: fig-identificador
//| fig-cap: "Descripción del gráfico"

// Código JavaScript Observable
data = [...]

// Visualización D3
{
  const width = 550, height = 550;
  // ... resto del código
}
```
```

### Características
- **Caption:** Color negro (#000000)
- **Ancho recomendado imágenes:** 383px (ajustable)
- **Ancho gráficos OJS:** 550px

---

## 6. BLOQUES DE CALLOUT

### Box Informativo Intermedio (Azul)
```markdown
::: {#box1 .callout-important style="background-color: #e3f0fbff; border-left: 4px solid #d4e8f9ff;" appearance="minimal" icon="false"}
<h2 style="font-size: 1rem; margin-top: 0; margin-bottom: 0;">Caja 1. Título del recuadro</h2>
-   Primer punto importante
-   Segundo punto importante
-   Tercer punto importante
:::
```
- **Título:** Arial, 13px (especificado con 1rem pero forzado a 13px por CSS)
- **Contenido:** Arial, 13px
- **Color fondo:** #e3f0fbff
- **Borde izquierdo:** 4px #d4e8f9ff

### Puntos Clave (Amarillo)
```markdown
::: {#puntos-clave .callout-important style="background-color: #f8f0ddff; border-left: 4px solid #f7eed3ff;" appearance="minimal" icon="false"}
<h2 style="font-size: 1.5rem; margin-top: 0; margin-bottom: 0;">Puntos Clave</h2>
-   Punto 1
-   Punto 2
-   Punto 3
:::
```
- **Título:** 1.5rem (24px)
- **Color fondo:** #f8f0ddff
- **Borde izquierdo:** 4px #f7eed3ff

### Preguntas por Resolver (Morado)
```markdown
::: {#preguntas .callout-important style="background-color: #f3eaf8ff; border-left: 4px solid #efe3f7ff;" appearance="minimal" icon="false"}
<h2 style="font-size: 1.5rem; margin-top: 0; margin-bottom: 0;">Preguntas por resolver</h2>
-   Pregunta 1
-   Pregunta 2
-   Pregunta 3
:::
```
- **Título:** 1.5rem (24px)
- **Color fondo:** #f3eaf8ff
- **Borde izquierdo:** 4px #efe3f7ff

### Recomendaciones (Rojo claro)
```markdown
::: {#recomendaciones .callout-important style="background-color: #f8dedcff; border-left: 4px solid #fad4d1ff;" appearance="minimal" icon="false"}
<h2 style="font-size: 1.5rem; margin-top: 0; margin-bottom: 0;">Recomendaciones para tomar decisiones</h2>
-   Recomendación 1
-   Recomendación 2
-   Recomendación 3
:::
```
- **Título:** 1.5rem (24px)
- **Color fondo:** #f8dedcff
- **Borde izquierdo:** 4px #fad4d1ff

---

## 7. BANNER DEL TÍTULO

### Características
- **Archivo:** `bannerCN.png` (N = número de capítulo)
- **Tamaño mínimo:** 400px de altura
- **Position:** Cover, centrado
- **Overlay:** rgba(0, 0, 0, 0.3) para legibilidad
- **Color del texto:** Blanco (`title-block-banner-color: "white"`)

### En YAML:
```yaml
title-block-banner: bannerC2.png  # Para capítulo 2
title-block-banner-color: "white"
```

---

## 8. ECUACIONES MATEMÁTICAS

### En Línea
```markdown
El valor de $\lambda=\frac{1}{79}$ representa...
```

### En Bloque
```markdown
$$
p(x)=\frac{e^{-\lambda} \lambda^{x}}{x !}
$$
```

### Caracteres Especiales Comunes
- Fracciones: `\frac{numerador}{denominador}`
- Exponentes: `e^{-\lambda}`
- Subíndices: `x_{i}`
- Símbolos griegos: `\lambda`, `\mu`, `\sigma`

---

## 9. REFERENCIAS BIBLIOGRÁFICAS

### Estilo: Vancouver con Corchetes
**Archivo CSL:** `vancouver-brackets.csl`

### En el Texto
| Tipo | Markdown | Salida |
|:-----|:---------|:-------|
| Citación numérica | `[@autor2020]` | [1] |
| Múltiples citas | `[@autor2020; @otro2021]` | [1,2] |
| Narrativa | `@autor2020` | Autor [1] |

### En references.bib
Ver archivo `referencias-ejemplo.bib` para formatos específicos.

---

## 10. ESTRUCTURA DE SECCIONES

### Jerarquía de Títulos

```markdown
# 1. INTRODUCCIÓN              (H1 - Secciones principales en MAYÚSCULAS)

## 1.1 Subsección              (H2 - Primera letra mayúscula)

### Título de sub-subsección   (H3 - Primera letra mayúscula)
```

### Orden de Secciones Estándar
1. YAML Header
2. Bloque Resumen
3. Bloque Abstract
4. INTRODUCCIÓN
5. MÉTODOS / METODOLOGÍA
6. RESULTADOS
7. DISCUSIÓN
8. CONCLUSIONES (con 3 cajas)
9. AGRADECIMIENTOS
10. DECLARACIÓN DE AUTORÍA CREDIT
11. BIBLIOGRAFÍA

---

## 11. CROSSREF (Referencias Cruzadas)

### Configuración en YAML
```yaml
crossref:
  fig-prefix: "Figura"
  tbl-prefix: "Tabla"
  chapters: false
```

### En el Texto
- Figuras: `@fig-identificador` → "Figura 1"
- Tablas: `@tbl-identificador` → "Tabla 1"
- Enlaces a cajas: `[Caja 1](#box1)` → "Caja 1"

---

## 12. ARCHIVOS CSS REQUERIDOS

### custom.css
Controla estilos generales, colores, tipografía, bloques especiales

### pdf-styles.css
Asegura que colores se preserven en exportación PDF

### Ambos archivos deben estar listados en YAML:
```yaml
css:
  - custom.css
  - pdf-styles.css
```

---

## 13. PALABRAS CLAVE (KEYWORDS)

- **Cantidad:** 5 palabras clave
- **Idioma:** Inglés
- **Formato:** Minúsculas, separadas por comas
- **Ejemplo:**
```yaml
keywords: [volcanic earthquakes, magma reservoirs, seismic analysis, eruption forecasting, La Palma]
```

---

## NOTAS FINALES

**Todos estos estilos están controlados por:**
1. Archivos CSS del proyecto (custom.css, pdf-styles.css)
2. Configuración Quarto (_quarto.yml)
3. YAML headers individuales de cada capítulo

**NO es necesario modificar los CSS** para nuevos capítulos. Solo seguir la estructura de la plantilla.
