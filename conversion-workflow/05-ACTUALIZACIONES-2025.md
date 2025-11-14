# ACTUALIZACIONES DEL PROYECTO - 2025

Documentación de cambios y mejoras aplicadas al proyecto después de la versión 1.1 del workflow original.

---

## 📅 FECHA DE ACTUALIZACIÓN

**Última actualización:** 12 de enero de 2025
**Versión del workflow:** 1.2
**Versión anterior:** 1.1 (28 de octubre de 2024)

---

## 🎨 1. CAMBIOS EN TIPOGRAFÍA

### 1.1 Nueva Fuente Principal: Merriweather

**Cambio aplicado:**
- ❌ **Antes:** Source Sans Pro (sans-serif) para todo el contenido
- ✅ **Ahora:** Merriweather (serif) para el cuerpo del texto principal

**Razón del cambio:**
Mejorar la legibilidad académica siguiendo el estilo de revistas científicas como Nature.

**Implementación en custom.css:**
```css
/* Import Merriweather font from Google Fonts */
@import url('https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&display=swap');

body {
  font-family: 'Merriweather', Georgia, serif;
  line-height: 1.6;
  color: #333;
}
```

**Dónde se aplica:**
- Párrafos del cuerpo principal
- Texto de introducción, métodos, resultados, discusión, conclusiones
- Todo el contenido narrativo del capítulo

**Dónde NO se aplica:**
- Tablas (siguen usando Arial)
- Cajas informativas Box 1, 2, etc. (siguen usando Arial)
- Menús de navegación (usan Source Sans Pro)

---

### 1.2 Source Sans Pro para Elementos de Navegación

**Cambio aplicado:**
Se mantiene Source Sans Pro específicamente para elementos de interfaz y navegación.

**Implementación en custom.css:**
```css
/* Import Source Sans Pro for sidebars */
@import url('https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400;1,600;1,700&display=swap');

/* Source Sans Pro for sidebars */
#quarto-sidebar-glass,
#quarto-sidebar,
.sidebar,
.sidebar-navigation,
.sidebar-menu,
.sidebar-item,
#TOC,
.toc-actions,
#quarto-margin-sidebar,
.margin-sidebar,
#quarto-header,
.navbar,
.nav-link,
.sidebar-title,
.chapter-number,
.menu-text {
  font-family: 'Source Sans Pro', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif !important;
}
```

**Dónde se aplica:**
- Menú lateral izquierdo (sidebar)
- Tabla de contenidos (TOC) derecha
- Encabezado del sitio
- Enlaces de navegación

---

### 1.3 Tabla Actualizada de Fuentes

| Elemento | Fuente | Tamaño | Peso | **CAMBIO** |
|:---------|:-------|:-------|:-----|:-----------|
| **Cuerpo general** | Merriweather | 16px | Normal | ✅ **NUEVO** |
| **Navegación/Sidebars** | Source Sans Pro | - | Normal | ✅ **NUEVO** |
| **Títulos H1** | Merriweather | 1.875rem (30px) | 600 | ✅ Actualizado |
| **Títulos H2** | Merriweather | 1.5rem (24px) | 600 | ✅ Actualizado |
| **Títulos H3** | Merriweather | 1.25rem (20px) | 600 | ✅ Actualizado |
| **Tablas (th/td)** | Arial | 12px | Normal | Sin cambio |
| **Box 1, 2... (título)** | Arial | 13px | Normal | Sin cambio |
| **Box 1, 2... (contenido)** | Arial | 13px | Normal | Sin cambio |
| **Cajas conclusiones (título)** | Merriweather | 1.5rem (24px) | Normal | ✅ Actualizado |

---

## 🎨 2. CAMBIOS EN COLORES

### 2.1 Estilo Nature: Texto Más Oscuro

**Cambio aplicado:**
- ❌ **Antes:** #4b5563 (gris medio) para el texto principal
- ✅ **Ahora:** #333 (casi negro) para mejor contraste y legibilidad

**Razón del cambio:**
Seguir el estilo de revistas científicas de alto impacto como Nature, que usan colores cercanos al negro puro para máxima legibilidad.

**Implementación en custom.css:**
```css
/* Nature-style darker text for main content sections (Introduction onwards) */
/* Apply to all content except Resumen and Abstract sections */
main h1:not(#resumen h1):not(#abstract h1),
main h2:not(#resumen h2):not(#abstract h2),
main h3:not(#resumen h3):not(#abstract h3),
main h4:not(#resumen h4):not(#abstract h4),
main p:not(#resumen p):not(#abstract p),
main li:not(#resumen li):not(#abstract li),
main td:not(#resumen td):not(#abstract td),
main th:not(#resumen th):not(#abstract th),
main div:not(#resumen):not(#resumen *):not(#abstract):not(#abstract *) {
  color: #333 !important;
}

/* Ensure strong/bold text in main sections also uses darker color */
main strong:not(#resumen strong):not(#abstract strong) {
  color: #1f2937 !important;
}
```

**Áreas afectadas:**
- ✅ Todo el contenido desde Introducción en adelante
- ❌ **NO afecta:** Bloques de Resumen y Abstract (mantienen sus colores originales)

**Comparación visual:**
- Contraste anterior: 4.5:1 (WCAG AA)
- Contraste actual: 12.6:1 (WCAG AAA) - Máxima accesibilidad

---

### 2.2 Líneas Horizontales Más Visibles

**Cambio aplicado:**
- ❌ **Antes:** #e5e7eb (gris muy claro, casi invisible)
- ✅ **Ahora:** #9ca3af (gris medio, claramente visible)

**Implementación en custom.css:**
```css
hr {
  border: 0;
  border-top: 1px solid #9ca3af;  /* Changed from #e5e7eb */
  margin: 1.5rem 0;
}
```

**Uso en Markdown:**
```markdown
---

(Usa exactamente 3 guiones, NO más)
```

---

### 2.3 Paleta de Colores Actualizada

| Elemento | Color Anterior | Color Actual | Código Hex |
|:---------|:--------------|:-------------|:-----------|
| **Texto principal** | #4b5563 | #333 | ✅ **CAMBIO** |
| **Texto en negrita** | - | #1f2937 | ✅ **NUEVO** |
| **Líneas horizontales** | #e5e7eb | #9ca3af | ✅ **CAMBIO** |
| **Resumen (fondo)** | #eff6ff | #eff6ff | Sin cambio |
| **Abstract (fondo)** | #FDF6D9 | #FDF6D9 | Sin cambio |
| **Box general (fondo)** | #e3f0fbff | #e3f0fbff | Sin cambio |
| **Puntos Clave (fondo)** | #f8f0ddff | #f8f0ddff | Sin cambio |
| **Preguntas (fondo)** | #f3eaf8ff | #f3eaf8ff | Sin cambio |
| **Recomendaciones (fondo)** | #f8dedcff | #f8dedcff | Sin cambio |

---

## 📚 3. CAMBIOS EN NAVEGACIÓN Y ESTRUCTURA

### 3.1 Títulos Cortos en Menú Lateral

**Cambio aplicado:**
Nueva estructura en `_quarto.yml` que permite títulos cortos en el menú lateral mientras se mantienen títulos completos en las páginas.

**Estructura anterior:**
```yaml
chapters:
  - part: "Capítulos"
    chapters:
      - Capitulo1.qmd
      - Capitulo2.qmd
      - Capitulo3.qmd
```
*Problema: Títulos muy largos en el menú lateral, difíciles de leer*

**Estructura actual:**
```yaml
chapters:
  - Principios.qmd
  - Presentacion.qmd
  - Prologo.qmd
  - index.qmd
  - text: "1: Estrategias en el Valle de Aburrá"
    href: Capitulo1.qmd
  - text: "2: Enfoque etnodiferencial"
    href: Capitulo2.qmd
  - text: "3: Cartografía participativa"
    href: Capitulo3.qmd
  - text: "4: Resiliencia comunitaria"
    href: Capitulo4.qmd
  - text: "5: Riesgo volcánico en animales"
    href: Capitulo5.qmd
  - glosario.qmd
  - capitulo-plantilla.qmd
```

**Ventajas:**
- ✅ Menú lateral más limpio y legible
- ✅ Títulos completos se mantienen en las páginas de capítulos
- ✅ Mejor experiencia de navegación
- ✅ Mayor flexibilidad en la nomenclatura

**Cómo implementarlo en nuevos capítulos:**

1. **Para capítulos con títulos largos:**
```yaml
- text: "N: Título corto descriptivo"
  href: CapituloN.qmd
```

2. **Para páginas simples:**
```yaml
- archivo.qmd  # Usa el title del YAML del archivo
```

---

### 3.2 Índice con Títulos Completos y Enlaces

**Cambio aplicado:**
La página `index.qmd` ahora contiene títulos completos de cada capítulo con enlaces clickeables.

**Formato:**
```markdown
## [Capítulo 1: Título completo extendido del capítulo](Capitulo1.html)

**Autores:** Nombre1, Nombre2, Nombre3

Descripción breve del contenido del capítulo.

------------------------------------------------------------------------
```

**Ejemplo real:**
```markdown
## [Capítulo 1: Entre el conocimiento y la acción: estrategias para la gestión del riesgo de desastres y la adaptación climática en el Valle de Aburrá](Capitulo1.html)

**Autores:** Yazmín Cardona, Adriana Carolina Herrera-López, María Alejandra Parra-Góez, Olga Ramírez, Julián Sepúlveda, Esneider Zapata

Este estudio analiza el papel del proyecto SIATA frente a la apropiación social del conocimiento y el fortalecimiento ciudadano en la gestión del riesgo de desastres y la adaptación climática en el Valle de Aburrá.
```

---

## 📖 4. CAMBIOS EN ESTILO DE CITACIONES

### 4.1 Números de Citación en Negrita

**Cambio aplicado:**
Siguiendo el estilo de Annual Reviews, los números de citación ahora aparecen en negrita.

**Implementación en custom.css:**
```css
/* Annual Reviews style - Bold citation numbers */
/* Style for CSL citations in brackets */
a.citation,
.citation-number,
sup a {
  font-weight: 700 !important;
  text-decoration: none;
}
```

**Comparación visual:**
- ❌ **Antes:** [1] (peso normal, con subrayado)
- ✅ **Ahora:** **[1]** (negrita, sin subrayado)

**En el texto Markdown:**
```markdown
Los estudios previos [@autor2020] han demostrado...
```

**Renderiza como:**
```
Los estudios previos [1] han demostrado...
```
*Donde [1] aparece en negrita*

---

## 🆕 5. NUEVAS PÁGINAS PRELIMINARES

### 5.1 Páginas Agregadas

Se agregaron tres nuevas páginas preliminares antes del índice:

1. **Principios.qmd** → Página legal con créditos y comisión editorial
2. **Presentacion.qmd** → Presentación del libro
3. **Prologo.qmd** → Prólogo

**Orden en _quarto.yml:**
```yaml
chapters:
  - Principios.qmd      # 1. Página legal
  - Presentacion.qmd    # 2. Presentación
  - Prologo.qmd         # 3. Prólogo
  - index.qmd           # 4. Índice/Inicio
  - text: "1: ..."      # 5. Capítulo 1
    href: Capitulo1.qmd
  # ... resto de capítulos
```

### 5.2 Formato de Página Legal (Principios.qmd)

**Estructura recomendada:**
```markdown
# Página legal {.unnumbered}

**Nombre Autoridad 1** | Cargo 1

**Nombre Autoridad 2** | Cargo 2

------------------------------------------------------------------------

**Comisión Editorial** | Editores

-   **Nombre Editor 1**, Institución
-   **Nombre Editor 2**, Institución

------------------------------------------------------------------------

Coordinación editorial | Nombre

Proceso de arbitraje | Descripción

ISBN obra digital: 978-XXX-XXXX-XX-X

Copyright: © Institución, Año
```

**Características:**
- Nombres en negrita: `**Nombre**`
- Uso de líneas horizontales para separar secciones: `---` (exactamente 3 guiones)
- Etiqueta `.unnumbered` para evitar numeración

---

## 📝 6. GUÍA DE CONVERSIÓN ACTUALIZADA

### 6.1 Checklist de Nuevo Capítulo (ACTUALIZADO)

Cuando conviertas un nuevo capítulo, verifica:

#### **YAML Header:**
- [ ] `title:` con título completo del capítulo
- [ ] Fuentes correctas listadas en CSS
- [ ] `css: [custom.css, pdf-styles.css]`

#### **Estilos y Formato:**
- [ ] Texto principal renderiza con Merriweather
- [ ] Menú lateral usa Source Sans Pro
- [ ] Tablas y cajas usan Arial
- [ ] Color de texto principal es #333 (Nature style)
- [ ] Líneas horizontales usan `---` (3 guiones exactos)
- [ ] Citaciones en negrita sin subrayado

#### **Navegación:**
- [ ] Entrada en `_quarto.yml` con título corto usando `text:` y `href:`
- [ ] Entrada en `index.qmd` con título completo y enlace
- [ ] Descripción breve en index.qmd

#### **Contenido:**
- [ ] Resumen y Abstract presentes
- [ ] 3 cajas de conclusiones (Puntos Clave, Preguntas, Recomendaciones)
- [ ] Todas las secciones convertidas
- [ ] Tablas con IDs únicos `{#tbl-...}`
- [ ] Figuras con IDs únicos `{#fig-...}`
- [ ] Referencias en formato `[@clave]`

---

### 6.2 Prompt Actualizado para Claude

**Úsalo al convertir nuevos capítulos:**

```
Lee el archivo Word "capitulos-word/[nombre-archivo].docx" y conviértelo
a Quarto Markdown siguiendo estas especificaciones:

ESTRUCTURA BASE:
- Usa "conversion-workflow/01-conversion-template.md" como plantilla
- Sigue instrucciones de "conversion-workflow/02-conversion-prompt.md"
- Aplica estilos de "conversion-workflow/05-ACTUALIZACIONES-2025.md"

CONFIGURACIÓN DE ESTILOS:
- Fuente principal: Merriweather (cuerpo de texto)
- Fuente tablas/cajas: Arial
- Color de texto: #333 (Nature style)
- Citaciones en negrita, sin subrayado
- Líneas horizontales: --- (3 guiones)

NAVEGACIÓN:
- Título corto para _quarto.yml (máx 40 caracteres)
- Título completo para el YAML del capítulo
- Descripción breve para index.qmd

Este es el capítulo [N] del libro.

Genera:
1. Archivo .qmd completo con YAML header actualizado
2. Entrada para _quarto.yml con text: y href:
3. Entrada para index.qmd con título completo
4. Lista de imágenes a preparar
5. Referencias BibTeX a agregar
```

---

## 🔄 7. CAMBIOS EN CSS

### 7.1 Archivo custom.css - Cambios Principales

**Imports de fuentes:**
```css
/* NUEVO: Import Merriweather */
@import url('https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&display=swap');

/* ACTUALIZADO: Import Source Sans Pro para sidebars */
@import url('https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400;1,600;1,700&display=swap');
```

**Body principal:**
```css
/* ACTUALIZADO */
body {
  font-family: 'Merriweather', Georgia, serif;  /* Cambio de Source Sans Pro */
  line-height: 1.6;
  color: #333;  /* Cambio de #4b5563 */
}
```

**Sidebars y navegación:**
```css
/* NUEVO: Source Sans Pro para navegación */
#quarto-sidebar-glass,
#quarto-sidebar,
.sidebar,
.sidebar-navigation,
/* ... más selectores ... */ {
  font-family: 'Source Sans Pro', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif !important;
}
```

**Texto estilo Nature:**
```css
/* NUEVO: Nature-style darker text */
main h1:not(#resumen h1):not(#abstract h1),
main p:not(#resumen p):not(#abstract p),
/* ... más selectores ... */ {
  color: #333 !important;
}
```

**Líneas horizontales:**
```css
/* ACTUALIZADO */
hr {
  border: 0;
  border-top: 1px solid #9ca3af;  /* Cambio de #e5e7eb */
  margin: 1.5rem 0;
}
```

**Citaciones en negrita:**
```css
/* NUEVO: Annual Reviews style */
a.citation,
.citation-number,
sup a {
  font-weight: 700 !important;
  text-decoration: none;
}
```

---

## 📋 8. ACTUALIZACIONES EN ARCHIVOS EXISTENTES

### 8.1 Archivos Modificados (No Requieren Acción)

Estos archivos YA fueron actualizados en el proyecto:

- ✅ `custom.css` - Todos los estilos nuevos aplicados
- ✅ `_quarto.yml` - Estructura de navegación actualizada
- ✅ `index.qmd` - Títulos completos con enlaces
- ✅ `Capitulo1.qmd` a `Capitulo5.qmd` - Títulos completos en YAML
- ✅ `Principios.qmd`, `Presentacion.qmd`, `Prologo.qmd` - Páginas creadas

### 8.2 Archivos a Actualizar en el Futuro

Para mantener la documentación sincronizada, considera actualizar:

- [ ] `03-style-guide.md` - Sección 2 (Tipografía) con Merriweather
- [ ] `03-style-guide.md` - Sección 1 (Colores) con #333 y #9ca3af
- [ ] `01-conversion-template.md` - Ejemplo de YAML header
- [ ] `CHANGELOG.md` - Agregar entrada de versión 1.2

*Nota: NO es urgente. Este archivo (05-ACTUALIZACIONES-2025.md) contiene toda la información necesaria.*

---

## 🎯 9. MEJORES PRÁCTICAS ACTUALIZADAS

### 9.1 Al Crear Nuevos Capítulos

1. **YAML Header:**
   ```yaml
   title: "N. Título completo del capítulo"
   css:
     - custom.css
     - pdf-styles.css
   ```
   *Ya no necesitas especificar fuentes - se heredan de custom.css*

2. **Entrada en _quarto.yml:**
   ```yaml
   - text: "N: Título corto (máx 40 caracteres)"
     href: CapituloN.qmd
   ```

3. **Entrada en index.qmd:**
   ```markdown
   ## [Capítulo N: Título completo extendido](CapituloN.html)

   **Autores:** Lista de autores

   Descripción breve del capítulo en 1-2 oraciones.

   ---
   ```

4. **Líneas horizontales:**
   ```markdown
   ---
   ```
   *Exactamente 3 guiones, NO más*

5. **Verificación visual:**
   - Texto principal debe verse en Merriweather (serif)
   - Menú lateral debe verse en Source Sans Pro (sans-serif)
   - Tablas deben verse en Arial
   - Texto debe ser #333 (casi negro)
   - Citaciones deben aparecer en negrita: **[1]**

---

## 🚨 10. PROBLEMAS COMUNES Y SOLUCIONES

### 10.1 "El texto no se ve en Merriweather"

**Causas posibles:**
- CSS no listado en YAML header
- Caché del navegador

**Solución:**
```yaml
# Verifica que tu YAML incluya:
css:
  - custom.css
  - pdf-styles.css
```
```bash
# Limpia caché y re-renderiza:
quarto render --no-cache
```

---

### 10.2 "Los títulos del menú lateral son muy largos"

**Solución:**
Usa la nueva estructura con `text:` y `href:` en `_quarto.yml`:

```yaml
# ❌ ANTES (título automático del archivo):
- CapituloN.qmd

# ✅ AHORA (título personalizado corto):
- text: "N: Título corto descriptivo"
  href: CapituloN.qmd
```

---

### 10.3 "Las citaciones no aparecen en negrita"

**Causas posibles:**
- `custom.css` no está listado en YAML
- Conflicto con otros estilos

**Solución:**
Verifica que `custom.css` esté incluido y que el archivo contenga:
```css
a.citation,
.citation-number,
sup a {
  font-weight: 700 !important;
  text-decoration: none;
}
```

---

### 10.4 "Las líneas horizontales no se ven"

**Causa:**
Probablemente usaste demasiados guiones.

**Solución:**
```markdown
# ❌ INCORRECTO:
------------------------------------------------------------------------

# ✅ CORRECTO:
---
```
*Usa exactamente 3 guiones*

---

## 📊 11. COMPARACIÓN ANTES/DESPUÉS

### Visual Summary

| Aspecto | Versión 1.1 (Oct 2024) | Versión 1.2 (Ene 2025) |
|:--------|:-----------------------|:----------------------|
| **Fuente cuerpo** | Source Sans Pro | Merriweather ✅ |
| **Fuente navegación** | Source Sans Pro | Source Sans Pro |
| **Color texto** | #4b5563 (gris) | #333 (casi negro) ✅ |
| **Títulos menú** | Largos automáticos | Cortos personalizados ✅ |
| **Citaciones** | Normal, subrayado | Negrita, sin subrayado ✅ |
| **Líneas HR** | #e5e7eb (invisible) | #9ca3af (visible) ✅ |
| **Páginas prelim** | Solo index | Legal + Presentación + Prólogo ✅ |

---

## 🔗 12. ARCHIVOS RELACIONADOS

### Documentación del Workflow

- `README.md` - Guía general del workflow
- `01-conversion-template.md` - Plantilla de estructura
- `02-conversion-prompt.md` - Instrucciones de conversión
- `03-style-guide.md` - Guía de estilos (versión anterior)
- **`05-ACTUALIZACIONES-2025.md`** - Este archivo (NUEVO)
- `04-validation-checklist.md` - Lista de verificación
- `CHANGELOG.md` - Historial de cambios

### Archivos del Proyecto

- `custom.css` - Estilos actualizados
- `_quarto.yml` - Configuración del libro actualizada
- `capitulo-plantilla.qmd` - Ejemplo de referencia
- `index.qmd` - Índice con títulos completos

---

## ✅ 13. CHECKLIST DE VALIDACIÓN ACTUALIZADO

### Para Nuevos Capítulos (Versión 1.2)

#### Fase 1: YAML Header
- [ ] Título completo del capítulo en `title:`
- [ ] CSS incluye `custom.css` y `pdf-styles.css`
- [ ] Metadata de autores con ORCID
- [ ] Keywords en inglés (5 palabras)

#### Fase 2: Navegación
- [ ] Entrada en `_quarto.yml` con `text:` corto y `href:`
- [ ] Entrada en `index.qmd` con título completo
- [ ] Enlace funcional en index: `[Título](CapituloN.html)`
- [ ] Descripción breve en index (1-2 oraciones)

#### Fase 3: Estilos Visuales
- [ ] Texto principal renderiza en Merriweather (serif)
- [ ] Menú lateral usa Source Sans Pro (sans-serif)
- [ ] Tablas usan Arial, 12px
- [ ] Cajas Box 1, 2... usan Arial, 13px
- [ ] Color de texto es #333 (oscuro, legible)
- [ ] Líneas horizontales visibles (color #9ca3af)

#### Fase 4: Citaciones
- [ ] Referencias en formato `[@clave]`
- [ ] Números de citación aparecen en negrita
- [ ] Números de citación sin subrayado
- [ ] Archivo .bib con referencias completas

#### Fase 5: Contenido
- [ ] Resumen y Abstract presentes
- [ ] 3 cajas de conclusiones:
  - [ ] Puntos Clave (amarillo)
  - [ ] Preguntas por resolver (morado)
  - [ ] Recomendaciones (rojo claro)
- [ ] Todas las figuras con `{#fig-id}`
- [ ] Todas las tablas con `{#tbl-id}`
- [ ] Referencias cruzadas funcionan

#### Fase 6: Renderizado
- [ ] `quarto render CapituloN.qmd` sin errores
- [ ] `quarto render` (libro completo) sin errores
- [ ] Verificación visual en navegador
- [ ] PDF genera correctamente (si aplica)

---

## 📞 14. SOPORTE Y RECURSOS

### Si Tienes Problemas:

1. **Consulta primero:**
   - Este archivo (05-ACTUALIZACIONES-2025.md)
   - `04-validation-checklist.md`
   - `03-style-guide.md`

2. **Verifica archivos de referencia:**
   - `capitulo-plantilla.qmd` - Ejemplo funcional
   - `Capitulo1.qmd` - Primer capítulo con estilos aplicados
   - `custom.css` - Todos los estilos actuales

3. **Recursos externos:**
   - Documentación Quarto: https://quarto.org/docs/books
   - Sintaxis Markdown: https://quarto.org/docs/authoring/markdown-basics.html
   - Crossref: https://quarto.org/docs/authoring/cross-references.html

---

## 📈 15. PRÓXIMOS PASOS SUGERIDOS

### Para Mantener el Workflow Actualizado:

1. **Actualizar archivos base (Opcional):**
   - Revisar `03-style-guide.md` con nuevos colores y fuentes
   - Actualizar `01-conversion-template.md` con ejemplo de YAML header actual
   - Agregar entrada en `CHANGELOG.md` para versión 1.2

2. **Documentar casos especiales:**
   - Si encuentras nuevos patrones, documéntalos aquí
   - Si creas nuevos tipos de cajas, añade ejemplos
   - Si hay problemas recurrentes, agrégalos a sección de troubleshooting

3. **Mantener sincronización:**
   - Cuando actualices estilos CSS, documenta aquí
   - Cuando agregues nuevas páginas, actualiza la estructura
   - Cuando cambies la configuración de Quarto, registra el cambio

---

## 🎓 16. FORMACIÓN Y CAPACITACIÓN

### Para Nuevos Colaboradores:

**Orden de lectura recomendado:**

1. `README.md` - Vista general del workflow
2. **`05-ACTUALIZACIONES-2025.md`** - Cambios recientes (este archivo)
3. `02-conversion-prompt.md` - Proceso de conversión
4. `01-conversion-template.md` - Estructura a seguir
5. `04-validation-checklist.md` - Verificación de calidad

**Práctica:**
1. Revisa `capitulo-plantilla.qmd` en el editor
2. Compáralo con la versión renderizada
3. Intenta replicar una sección simple
4. Verifica con el checklist actualizado

---

## ✨ VERSIÓN Y MANTENIMIENTO

**Versión de este documento:** 1.0
**Fecha de creación:** 12 de enero de 2025
**Última modificación:** 12 de enero de 2025
**Responsable:** Claude Code (Workflow Documentation)
**Basado en:** Proyecto Libro de Investigaciones CNAIGRD

**Estado:** ✅ Activo y actualizado

---

## 📝 NOTAS FINALES

Este documento complementa (NO reemplaza) la documentación existente del workflow. Usa este archivo junto con:

- `README.md` para el flujo general
- `03-style-guide.md` para detalles de estilo base
- `04-validation-checklist.md` para verificación

**¡Los cambios documentados aquí YA están aplicados en el proyecto!**
No necesitas modificar nada manualmente. Solo úsalo como referencia al crear nuevos capítulos.

---

**¿Preguntas? ¿Encontraste un error? ¿Necesitas agregar algo?**
Actualiza este archivo y documenta cualquier cambio futuro aquí.

---

🎉 **¡Documentación completa y actualizada!**
