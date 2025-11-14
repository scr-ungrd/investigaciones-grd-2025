# REPORTE DE CONVERSIÓN - CAPÍTULO 1

**Fecha:** 2025-10-27
**Capítulo:** 1 - Entre el conocimiento y la acción: estrategias para la gestión del riesgo de desastres y la adaptación climática en el Valle de Aburrá
**Autores:** Yazmín Cardona, Adriana Carolina Herrera-López, María Alejandra Parra-Góez, Olga Ramírez, Julián Sepúlveda, Esneider Zapata

---

## ARCHIVOS GENERADOS

### 1. Archivo Principal
- **Ubicación:** `/Users/mauricio/Documents/Data-Science/Myst/libro-investigaciones-quarto/Capitulo1.qmd`
- **Tamaño:** 96,653 bytes (~94 KB)
- **Formato:** Quarto Markdown (.qmd)

### 2. Archivo de Imágenes
- **Ubicación:** `conversion-workflow/imagenes-capitulo1.txt`
- **Contenido:** Lista de 9 imágenes necesarias con sus ubicaciones y descripciones

### 3. Archivo de Referencias BibTeX
- **Ubicación:** `conversion-workflow/referencias-capitulo1.bib`
- **Contenido:** 32 entradas bibliográficas en formato BibTeX

---

## ESTADÍSTICAS DE CONVERSIÓN

### Estructura del Documento

#### Secciones Principales (5)
1. INTRODUCCIÓN
2. ESTRATEGIAS SIATA
3. MATERIALES Y MÉTODOS
4. RESULTADOS
5. CONCLUSIONES

#### Subsecciones (7)
- 1.1. Contexto del territorio, climatológico e hidrográfico
- 1.2. Apropiación social del conocimiento para la gestión del riesgo de desastres y la adaptación al cambio climático
- 1.3. Fortalecimiento ciudadano (implícita en contenido)
- 2.1. Semilleros de ciudadanos científicos (SCC)
- 2.2. Sistemas de Alerta Temprana Comunitarios
- 3.1. Descripción del contexto de las comunidades
- 3.2. Categorías de análisis

### Elementos Convertidos

| Elemento | Cantidad | Estado |
|:--------:|:--------:|:------:|
| Tablas | 8 | ✓ Convertidas a Markdown con alineación centrada |
| Figuras | 11 | ✓ Identificadas con referencias |
| Imágenes | 9 | ✓ Rutas actualizadas a images/capitulo1/ |
| Cajas informativas | 5+ | ✓ Convertidas a callout boxes |
| Referencias bibliográficas | 32 | ✓ Convertidas a formato [@refN] |
| Citas en texto | 28+ | ✓ Formato actualizado |

### Secciones Especiales

| Sección | Estado | Detalles |
|:--------|:------:|:---------|
| YAML Header | ✓ | Incluye metadata completa, keywords, y configuración |
| Resumen (español) | ✓ | Formato ::: {#resumen} |
| Abstract (inglés) | ✓ | Formato ::: {#abstract} |
| Puntos Clave | ✓ | Caja amarilla con estilo personalizado |
| Preguntas por resolver | ✗ | No presente en documento original |
| Recomendaciones | ✓ | Caja roja claro con estilo personalizado |
| Agradecimientos | ✓ | Incluido al final |
| Declaración de Autoría CREDIT | ✓ | Incluido al final |
| Bibliografía | ✓ | Sección con ::: {#refs} ::: |

---

## DETALLES DE IMÁGENES

### Imágenes Requeridas (9 archivos)

#### Banner
- `bannerC1.png` - Banner del capítulo 1

#### Contenido del Capítulo
1. `image1.jpg` - Radar Hidrometeorológico del AMVA (Caja 1)
2. `image2.png` - Figura 1: Ocurrencia de eventos extremos estandarizada
3. `image3.png` - Figura 2: Monitoreo hidrometeorológico red de drenaje
4. `image4.jpg` - Figura 3: Metodología Semilleros de Ciudadanos Científicos
5. `image5.jpg` - Caja 3: Formación Red de Educadores Científicos
6. `image6.jpg` - Figura 4: Formación comunidades SATC
7. `image7.png` - Figura 5: Fases proceso formativo SATC
8. `image8.jpg` - Figura 6: Análisis codificación entrevistas

### Ubicación de Imágenes
- **Carpeta destino:** `images/capitulo1/`
- **Formatos:** 6 JPG, 3 PNG
- **Nota:** Las imágenes deben extraerse del documento Word original

---

## REFERENCIAS BIBLIOGRÁFICAS

### Total: 32 referencias

#### Distribución por Tipo
- Artículos de revista: 14
- Libros: 4
- Reportes técnicos: 6
- Tesis doctorales: 2
- Tesis de maestría: 1
- Capítulos de libro: 2
- Documentos legales: 1
- Sitios web institucionales: 2

#### Principales Temas
- Gestión del riesgo de desastres
- Apropiación social del conocimiento
- Sistemas de alerta temprana
- Cambio climático
- Metodología cualitativa
- Educación científica

---

## FORMATO Y ESTILO

### YAML Header
- **title-block-banner:** bannerC1.png ✓
- **keywords:** [resilience, social appropriation of knowledge, SIATA, citizen empowerment, extreme hydrometeorological events] ✓
- **bibliography:** references.bib ✓
- **csl:** vancouver-brackets.csl ✓

### Tablas
- Formato: Markdown con columnas centradas (|:---:|)
- Captions: Ubicados debajo con formato `: Descripción {#tbl-N}`
- Referencias: Formato @tbl-N en el texto

### Figuras
- Rutas: images/capitulo1/imageN.ext
- IDs: {#fig-N width="383"}
- Referencias: @fig-N en el texto

### Cajas Informativas
- **Cajas numeradas (1-5):** Fondo azul claro (#e3f0fbff)
- **Puntos Clave:** Fondo amarillo (#f8f0ddff)
- **Recomendaciones:** Fondo rojo claro (#f8dedcff)
- Todas con borde izquierdo de 4px

---

## TAREAS PENDIENTES

### Antes de Compilar el Documento

1. **Extraer y ubicar imágenes**
   - Extraer las 9 imágenes del documento Word original
   - Crear carpeta `images/capitulo1/`
   - Renombrar según lista en `imagenes-capitulo1.txt`
   - Verificar resolución (mínimo 300 DPI)

2. **Crear banner del capítulo**
   - Diseñar `bannerC1.png`
   - Dimensiones sugeridas: 1200x300 px
   - Ubicar en raíz del proyecto

3. **Agregar referencias a references.bib**
   - Copiar contenido de `referencias-capitulo1.bib`
   - Añadir al archivo `references.bib` del proyecto
   - Verificar que no haya duplicados

4. **Revisión manual**
   - Verificar formato de tablas complejas
   - Revisar ecuaciones matemáticas (si las hay)
   - Verificar saltos de línea y espaciado
   - Comprobar que todas las referencias funcionan

5. **Compilación de prueba**
   ```bash
   quarto render Capitulo1.qmd --to html
   quarto render Capitulo1.qmd --to pdf
   ```

---

## NOTAS TÉCNICAS

### Conversión Realizada
1. Extracción inicial con pandoc desde Word a Markdown
2. Procesamiento con Python para:
   - Limpieza de marcas de pandoc ({.mark}, {.underline})
   - Conversión de tablas a formato centrado
   - Conversión de cajas a formato callout
   - Actualización de rutas de imágenes
   - Formato de referencias bibliográficas

### Limitaciones
- Algunas tablas complejas pueden requerir ajuste manual
- Las cajas informativas con contenido muy largo pueden necesitar revisión de formato
- Verificar manualmente ecuaciones matemáticas si las hay

### Archivos de Referencia
- Template: `conversion-workflow/01-conversion-template.md`
- Prompt: `conversion-workflow/02-conversion-prompt.md`
- Markdown temporal: `conversion-workflow/capitulo1-temp.md`

---

## VERIFICACIÓN FINAL

- [x] YAML header completo y correcto
- [x] Resumen (español) con bloque :::
- [x] Abstract (inglés) con bloque :::
- [x] 5 secciones principales convertidas
- [x] 7 subsecciones identificadas
- [x] 8 tablas con formato Markdown
- [x] 11 figuras con IDs y referencias
- [x] 9 imágenes identificadas (pendiente: extraer archivos)
- [x] 32 referencias en formato BibTeX
- [x] Cajas de conclusiones (Puntos Clave, Recomendaciones)
- [x] Secciones finales (Agradecimientos, Declaración CREDIT)
- [x] Sección Bibliografía con ::: {#refs} :::

---

## CONTACTO Y SOPORTE

Para cualquier problema con la conversión o ajustes necesarios, consultar:
- Guía de estilos: `conversion-workflow/03-style-guide.md` (si existe)
- Template de referencia: `conversion-workflow/01-conversion-template.md`
- Prompt de conversión: `conversion-workflow/02-conversion-prompt.md`

---

**Conversión completada:** 2025-10-27
**Herramientas utilizadas:** pandoc, Python 3, Quarto Markdown
**Estado:** LISTO PARA REVISIÓN
