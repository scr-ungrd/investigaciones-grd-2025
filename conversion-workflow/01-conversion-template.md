# PLANTILLA DE CONVERSIÓN WORD → QUARTO MARKDOWN

Este archivo muestra la estructura exacta que debe seguir cada capítulo convertido desde Word.

**IMPORTANTE:** Puedes consultar el archivo `capitulo-plantilla.qmd` en la raíz del proyecto como ejemplo real y funcional de esta plantilla.

---

## ESTRUCTURA DEL YAML HEADER

```yaml
---
title: "N. Título del Capítulo"
author: "Nombre del Autor"
date: "2025"
title-block-banner: bannerCN.png  # Cambiar N por número de capítulo
title-block-banner-color: "white"
css:
  - custom.css
  - pdf-styles.css
format:
  html:
    theme: cosmo
    toc: true
    number-sections: false
  pdf:
    documentclass: article
    geometry: margin=1in
    number-sections: false
    include-in-header:
      - text: |
          \usepackage{graphicx}
          \usepackage{xcolor}
          \usepackage{fancyhdr}
          \usepackage{wallpaper}
    title-block-banner: bannerCN.png
    colorlinks: true
    keep-tex: true
keywords: [palabra1, palabra2, palabra3, palabra4, palabra5]
bibliography: references.bib
csl: vancouver-brackets.csl
crossref:
  fig-prefix: "Figura"
  tbl-prefix: "Tabla"
  chapters: false
---
```

---

## BLOQUE RESUMEN (ESPAÑOL)

```markdown
::: {#resumen}
# Resumen

[Texto del resumen en español, 150-250 palabras]
:::
```

---

## BLOQUE ABSTRACT (INGLÉS)

```markdown
::: {#abstract}
# [Título en Inglés]

**Abstract**. [Texto del abstract en inglés, 150-250 palabras]
:::
```

---

## SECCIONES PRINCIPALES

```markdown
# 1. INTRODUCCIÓN

Texto de la introducción...

## 1.1 Subsección

Texto de la subsección...

### Subtítulo nivel 3

Texto...
```

---

## TABLAS

### Formato estándar:

```markdown
| Columna 1 | Columna 2 | Columna 3 |
|:---------:|:---------:|:---------:|
|  Dato 1   |  Dato 2   |  Dato 3   |
|  Dato 4   |  Dato 5   |  Dato 6   |

: Descripción de la tabla. {#tbl-identificador}
```

**Referencia en el texto:** `@tbl-identificador`

---

## FIGURAS

### Imágenes externas:

```markdown
![Descripción de la figura.](images/capituloN/imagen.png){#fig-identificador width="383"}
```

**Nota:** Todas las imágenes deben estar en la carpeta `images/capituloN/` donde N es el número del capítulo.

### Gráficos OJS (interactivos):

```markdown
```{ojs}
//| echo: false
//| label: fig-identificador
//| fig-cap: "Descripción del gráfico. Puede ser larga y ocupar varias líneas."

// Código JavaScript Observable aquí
data = [
  {axis: "Indicador 1", value: 1.2},
  {axis: "Indicador 2", value: 2.0}
]

// Código de visualización D3
{
  // ... código del gráfico
}
```
```

**Referencia en el texto:** `@fig-identificador`

---

## CAJAS INFORMATIVAS

### Caja de ejemplo (Box 1):

```markdown
::: {#box1 .callout-important style="background-color: #e3f0fbff; border-left: 4px solid #d4e8f9ff;" appearance="minimal" icon="false"}
<h2 style="font-size: 1rem; margin-top: 0; margin-bottom: 0;">Caja 1. Título de la caja informativa</h2>
-   Punto 1 de información importante.
-   Punto 2 de información importante.
-   Punto 3 de información importante.
:::
```

**Referencia en el texto:** `[Caja 1](#box1)`

---

## ECUACIONES MATEMÁTICAS

### En línea:
```markdown
El valor de $\lambda=\frac{1}{79}$ representa...
```

### En bloque:
```markdown
$$
p(x)=\frac{e^{-\lambda} \lambda^{x}}{x !}
$$
```

---

## CAJAS DE CONCLUSIONES (3 tipos)

### 1. Puntos Clave (amarillo):

```markdown
::: {#puntos-clave .callout-important style="background-color: #f8f0ddff; border-left: 4px solid #f7eed3ff;" appearance="minimal" icon="false"}
<h2 style="font-size: 1.5rem; margin-top: 0; margin-bottom: 0;">Puntos Clave</h2>
-   Punto clave 1.
-   Punto clave 2.
-   Punto clave 3.
:::
```

### 2. Preguntas por Resolver (morado):

```markdown
::: {#preguntas .callout-important style="background-color: #f3eaf8ff; border-left: 4px solid #efe3f7ff;" appearance="minimal" icon="false"}
<h2 style="font-size: 1.5rem; margin-top: 0; margin-bottom: 0;">Preguntas por resolver</h2>
-   Pregunta 1.
-   Pregunta 2.
-   Pregunta 3.
:::
```

### 3. Recomendaciones (rojo claro):

```markdown
::: {#recomendaciones .callout-important style="background-color: #f8dedcff; border-left: 4px solid #fad4d1ff;" appearance="minimal" icon="false"}
<h2 style="font-size: 1.5rem; margin-top: 0; margin-bottom: 0;">Recomendaciones para tomar decisiones</h2>
-   Recomendación 1.
-   Recomendación 2.
-   Recomendación 3.
:::
```

---

## SECCIONES FINALES

```markdown
# AGRADECIMIENTOS

Texto de agradecimientos...

# DECLARACIÓN DE AUTORÍA CREDIT

Texto sobre contribuciones de autores y disponibilidad de datos...

# BIBLIOGRAFÍA

::: {#refs}
:::
```

---

## REFERENCIAS BIBLIOGRÁFICAS

**En el texto:**
- Citación simple: `[@autor2020]` → [1]
- Múltiples citas: `[@autor2020; @autor2021]` → [1,2]
- Cita narrativa: `@autor2020` → Autor [1]

**En references.bib:** Ver archivo `referencias-ejemplo.bib`

---

## NOTAS IMPORTANTES

1. **Todas las tablas** deben tener alineación centrada (`:-----:`)
2. **Todas las figuras** deben tener ID único (`#fig-nombre`)
3. **Todas las tablas** deben tener ID único (`#tbl-nombre`)
4. **Los encabezados** de secciones principales en MAYÚSCULAS
5. **Las cajas de conclusión** siempre van al final, antes de Agradecimientos
6. **Banner de título** debe crearse (imagen bannerCN.png)
7. **Keywords** deben estar en inglés
8. **Fuente de tablas:** Arial, 12px (se controla con CSS)
9. **Cajas box1, box2...** usan fuente Arial, 13px (se controla con CSS)
