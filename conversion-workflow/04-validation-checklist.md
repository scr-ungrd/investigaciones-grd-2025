# CHECKLIST DE VALIDACIÓN POST-CONVERSIÓN

Usa esta lista para verificar que el capítulo convertido cumple todos los requisitos antes de integrarlo al libro.

---

## 📋 FASE 1: VERIFICACIÓN DEL ARCHIVO .QMD

### ✅ YAML Header
- [ ] Campo `title` presente y correcto
- [ ] Campo `author` presente
- [ ] Campo `date` establecido (por defecto "2025")
- [ ] `title-block-banner` con nombre correcto (bannerCN.png)
- [ ] `title-block-banner-color: "white"` presente
- [ ] Sección `css` incluye `custom.css` y `pdf-styles.css`
- [ ] Sección `format` con configuraciones `html` y `pdf`
- [ ] Campo `keywords` con 5 palabras clave en inglés
- [ ] Campo `bibliography: references.bib` presente
- [ ] Campo `csl: vancouver-brackets.csl` presente
- [ ] Sección `crossref` configurada (fig-prefix, tbl-prefix, chapters: false)

### ✅ Bloques Iniciales
- [ ] Bloque `#resumen` presente con contenido
- [ ] Bloque `#abstract` presente con contenido
- [ ] Ambos bloques usan sintaxis `:::` correctamente
- [ ] Abstract tiene título en inglés

### ✅ Estructura de Secciones
- [ ] Sección `# 1. INTRODUCCIÓN` (o equivalente) presente
- [ ] Títulos principales en MAYÚSCULAS
- [ ] Subsecciones numeradas correctamente (1.1, 1.2, etc.)
- [ ] Sub-subsecciones con ### cuando necesario
- [ ] Todas las secciones del Word están presentes

### ✅ Contenido Textual
- [ ] No hay texto faltante comparado con el Word
- [ ] Párrafos formateados correctamente
- [ ] Listas con viñetas o numeradas correctas
- [ ] Énfasis (cursiva, negrita) preservado cuando relevante

---

## 📊 FASE 2: TABLAS Y FIGURAS

### ✅ Tablas
- [ ] Todas las tablas del Word están convertidas
- [ ] Formato Markdown correcto (pipes `|`)
- [ ] Alineación centrada en todas las columnas `|:-----:|`
- [ ] Caption DEBAJO de cada tabla con formato: `: Descripción. {#tbl-nombre}`
- [ ] IDs únicos para cada tabla (#tbl-tabla1, #tbl-tabla2, etc.)
- [ ] Referencias en el texto actualizadas a `@tbl-nombre`
- [ ] Contenido de celdas correcto y completo

### ✅ Figuras
- [ ] Todas las figuras del Word identificadas
- [ ] Cada figura tiene ID único (#fig-nombre)
- [ ] Sintaxis correcta: `![Descripción](ruta){#fig-nombre width="383"}`
- [ ] Descripciones detalladas en caption
- [ ] Referencias en el texto actualizadas a `@fig-nombre`
- [ ] Lista de archivos de imágenes necesarios documentada
- [ ] Gráficos interactivos convertidos a código OJS (si aplica)

---

## 🔢 FASE 3: ELEMENTOS ESPECIALES

### ✅ Ecuaciones Matemáticas
- [ ] Todas las ecuaciones identificadas
- [ ] Ecuaciones en línea usan `$...$`
- [ ] Ecuaciones en bloque usan `$$...$$`
- [ ] Sintaxis LaTeX correcta
- [ ] Variables y símbolos correctos (λ, μ, σ, etc.)

### ✅ Cajas Informativas (Box)
- [ ] Recuadros del Word identificados
- [ ] Convertidos a formato callout con ID único (#box1, #box2, etc.)
- [ ] Color de fondo correcto: `#e3f0fbff`
- [ ] Borde correcto: `4px solid #d4e8f9ff`
- [ ] Título con formato HTML: `<h2 style="font-size: 1rem; margin-top: 0; margin-bottom: 0;">Caja N. Título</h2>`
- [ ] Contenido en lista con viñetas
- [ ] Referencias en texto como `[Caja N](#boxN)`

### ✅ Cajas de Conclusiones (3 OBLIGATORIAS)
- [ ] **Caja "Puntos Clave"** presente
  - [ ] ID: `#puntos-clave`
  - [ ] Color fondo: `#f8f0ddff`
  - [ ] Borde: `4px solid #f7eed3ff`
  - [ ] Título: "Puntos Clave"
  - [ ] Tamaño título: `1.5rem`

- [ ] **Caja "Preguntas por resolver"** presente
  - [ ] ID: `#preguntas`
  - [ ] Color fondo: `#f3eaf8ff`
  - [ ] Borde: `4px solid #efe3f7ff`
  - [ ] Título: "Preguntas por resolver"
  - [ ] Tamaño título: `1.5rem`

- [ ] **Caja "Recomendaciones"** presente
  - [ ] ID: `#recomendaciones`
  - [ ] Color fondo: `#f8dedcff`
  - [ ] Borde: `4px solid #fad4d1ff`
  - [ ] Título: "Recomendaciones para tomar decisiones"
  - [ ] Tamaño título: `1.5rem`

- [ ] Las 3 cajas están en la sección de CONCLUSIONES
- [ ] Contenido relevante y extraído del texto original

---

## 📚 FASE 4: REFERENCIAS BIBLIOGRÁFICAS

### ✅ Citaciones en el Texto
- [ ] Todas las referencias del Word identificadas
- [ ] Formato (Autor, año) convertido a `[@autor2020]`
- [ ] Citaciones múltiples con punto y coma: `[@autor2020; @otro2021]`
- [ ] Citaciones narrativas usan `@autor2020` (sin corchetes)
- [ ] No quedan referencias sin convertir

### ✅ Archivo BibTeX
- [ ] Lista de entradas .bib generada
- [ ] Cada entrada tiene identificador único
- [ ] Formato BibTeX correcto
- [ ] Campos requeridos completos (author, title, year, journal/book, etc.)
- [ ] DOIs y URLs incluidos cuando disponibles
- [ ] Listo para agregar a `references.bib`

### ✅ Sección de Bibliografía
- [ ] Sección `# BIBLIOGRAFÍA` presente
- [ ] Bloque `:::  {#refs} :::` incluido
- [ ] Ubicada al final del documento

---

## 📝 FASE 5: SECCIONES FINALES

### ✅ Agradecimientos
- [ ] Sección `# AGRADECIMIENTOS` presente
- [ ] Contenido extraído del Word o placeholder apropiado

### ✅ Declaración de Autoría
- [ ] Sección `# DECLARACIÓN DE AUTORÍA CREDIT` presente
- [ ] Contenido sobre contribuciones y datos incluido

---

## 🖼️ FASE 6: RECURSOS EXTERNOS

### ✅ Banner del Título
- [ ] Archivo de banner identificado (bannerCN.png)
- [ ] Nombre correcto en YAML header
- [ ] Imagen preparada o en proceso
- [ ] Dimensiones apropiadas (mínimo 400px altura)

### ✅ Imágenes
- [ ] Lista completa de imágenes necesarias
- [ ] Nombres de archivo documentados
- [ ] Rutas relativas correctas en el .qmd
- [ ] Formatos apropiados (PNG, JPG)

---

## 🔧 FASE 7: RENDERIZADO Y PRUEBAS

### ✅ Renderizado HTML
- [ ] Ejecutar `quarto render capitulo-N.qmd`
- [ ] Renderizado exitoso sin errores
- [ ] Verificar visualización en navegador
- [ ] Comprobar que tablas se ven correctamente
- [ ] Comprobar que figuras cargan (placeholder OK)
- [ ] Verificar colores de cajas
- [ ] Comprobar referencias cruzadas funcionan

### ✅ Renderizado PDF (opcional)
- [ ] Ejecutar `quarto render capitulo-N.qmd --to pdf`
- [ ] PDF generado sin errores
- [ ] Colores preservados
- [ ] Formato correcto

### ✅ Referencias Bibliográficas
- [ ] Números de citas aparecen en el texto [1], [2], etc.
- [ ] Lista de referencias generada al final
- [ ] Formato Vancouver correcto
- [ ] No hay citas sin resolver (??)

---

## 📦 FASE 8: INTEGRACIÓN AL LIBRO

### ✅ Agregar a _quarto.yml
- [ ] Abrir `_quarto.yml`
- [ ] Agregar `- capitulo-N.qmd` en la sección `chapters`
- [ ] Orden correcto en la lista de capítulos
- [ ] Guardar cambios

### ✅ Actualizar references.bib
- [ ] Abrir `references.bib`
- [ ] Agregar nuevas entradas bibliográficas
- [ ] Verificar no hay duplicados
- [ ] Verificar sintaxis BibTeX
- [ ] Guardar cambios

### ✅ Renderizado del Libro Completo
- [ ] Ejecutar `quarto render` en la raíz del proyecto
- [ ] Libro genera sin errores
- [ ] Nuevo capítulo aparece en el índice
- [ ] Navegación entre capítulos funciona
- [ ] Estilos consistentes con otros capítulos

---

## 🎯 FASE 9: REVISIÓN FINAL

### ✅ Calidad del Contenido
- [ ] Leer capítulo completo renderizado
- [ ] Comparar con Word original
- [ ] Verificar coherencia del texto
- [ ] Revisar ortografía y gramática
- [ ] Comprobar que no hay contenido inventado

### ✅ Consistencia con el Libro
- [ ] Estilo coherente con Capítulo 1
- [ ] Numeración de secciones apropiada
- [ ] Formato de cajas idéntico
- [ ] Colores correctos
- [ ] Fuentes correctas

### ✅ Documentación
- [ ] Notas sobre elementos pendientes (imágenes, datos, etc.)
- [ ] Lista de cambios necesarios documentada
- [ ] Problemas o dudas registradas

---

## ✅ APROBACIÓN FINAL

- [ ] **TODAS las fases anteriores completadas**
- [ ] **Capítulo listo para publicación**
- [ ] **Usuario ha revisado y aprobado**

---

## 🚨 PROBLEMAS COMUNES

### Si el renderizado falla:
1. Verificar sintaxis YAML (indentación correcta)
2. Verificar que todos los bloques `:::` están cerrados
3. Verificar sintaxis de ecuaciones LaTeX
4. Verificar que IDs son únicos
5. Verificar rutas de archivos CSS

### Si las referencias no funcionan:
1. Verificar que `bibliography: references.bib` está en YAML
2. Verificar que las claves en `[@clave]` existen en .bib
3. Verificar sintaxis BibTeX (comas, llaves)
4. Ejecutar `quarto render` de nuevo

### Si los colores no aparecen:
1. Verificar que `custom.css` y `pdf-styles.css` existen
2. Verificar que están listados en YAML
3. Verificar códigos de color hex correctos

### Si las tablas se ven mal:
1. Verificar alineación centrada `|:-----:|`
2. Verificar que todas las filas tienen mismo número de columnas
3. Verificar sintaxis del caption

---

## 📊 RESUMEN DE PROGRESO

Anota tu progreso:

- Fecha de inicio: ___________
- Fecha de finalización: ___________
- Elementos pendientes: ___________
- Notas adicionales: ___________

---

**IMPORTANTE:** No marques el capítulo como completado hasta que TODAS las casillas estén marcadas.
