# PROMPT PARA CONVERTIR CAPÍTULOS DE WORD A QUARTO MARKDOWN

Usa este prompt cuando conviertas un nuevo capítulo desde Word.

---

## INSTRUCCIONES PARA CLAUDE

**Contexto:**
Estoy convirtiendo capítulos de un libro científico desde formato Word a Quarto Markdown. El libro sigue un formato específico establecido en el Capítulo 1 de referencia.

**Tu tarea:**
Convertir el documento Word adjunto a formato Quarto Markdown siguiendo EXACTAMENTE la estructura y formato del archivo `01-conversion-template.md`.

---

## PASOS A SEGUIR

### PASO 1: Análisis del contenido Word
1. Usa pandoc para extraer el contenido del Word a markdown temporal:
   ```bash
   pandoc "archivo.docx" -t markdown -o temp.md --extract-media=media/
   ```
2. Lee el documento completo e identifica:
   - Título del capítulo y autor(es) con afiliaciones
   - Resumen/Abstract (en español e inglés)
   - Estructura de secciones (Introducción, Métodos, Resultados, Discusión, Conclusiones)
   - Tablas con sus títulos y contenido
   - Figuras con sus descripciones
   - Referencias bibliográficas (al final del documento)
   - Ecuaciones o fórmulas matemáticas
   - Cajas informativas o callouts
   - Agradecimientos y declaraciones de autoría

### PASO 2: Crear el YAML Header
Usa la plantilla exacta del archivo `01-conversion-template.md` o del archivo `capitulo-plantilla.qmd`:
- **title:** Extraer del documento Word (formato: "N. Título del Capítulo")
- **author:** Extraer del documento (usar formato: "Nombre Apellido")
- **date:** "2025" (por defecto, o año actual)
- **title-block-banner:** Usar `bannerCN.png` donde N es el número del capítulo (ej: bannerC1.png, bannerC2.png)
- **keywords:** Extraer o inferir 5 palabras clave en inglés, separadas por comas
- **bibliography:** **IMPORTANTE:** Usar `capituloN-references.bib` (archivo individual por capítulo, NO references.bib global)
- **csl:** Siempre incluir `vancouver-brackets.csl`
- **css:** Incluir `custom.css` y `pdf-styles.css`
- Mantener todos los demás campos exactamente como en la plantilla de referencia

**Nota sobre bibliografías:** Cada capítulo tiene su propia bibliografía independiente para evitar conflictos entre referencias.

### PASO 3: Convertir Resumen y Abstract
- Si hay resumen en español → bloque `#resumen`
- Si hay abstract en inglés → bloque `#abstract`
- Si solo hay uno, crear el otro mediante traducción
- Mantener formato de bloques con `:::`

### PASO 4: Convertir Secciones
- **Encabezados principales:** `# 1. INTRODUCCIÓN` (MAYÚSCULAS)
- **Subsecciones:** `## 1.1 Título` (Primera letra mayúscula)
- **Sub-subsecciones:** `### Título` (Primera letra mayúscula)
- Mantener numeración original del documento

### PASO 5: Convertir Tablas
Para cada tabla:
1. Convertir a formato Markdown con alineación centrada: `|:---------:|`
2. Agregar caption DEBAJO de la tabla: `: Descripción. {#tbl-tablaN}`
3. Actualizar referencias en el texto a `@tbl-tablaN`
4. **Importante:** Fuente será Arial 12px automáticamente (por CSS)

**Ejemplo:**
```markdown
| Nombre | Año |
|:------:|:---:|
| Item 1 | 2021|
| Item 2 | 2022|

: Descripción de la tabla. {#tbl-tabla1}
```

### PASO 6: Convertir Figuras
Para cada figura:
1. **Si es imagen externa:**
   ```markdown
   ![Descripción de la figura.](images/capituloN/imagen.png){#fig-figuraN width="383"}
   ```
2. **Si es gráfico con código R:** Mantener el código R en chunks con labels apropiados
3. **Si requiere interactividad avanzada:** Convertir a código OJS/D3 (solo si es absolutamente necesario)
4. Actualizar referencias en el texto a `@fig-figuraN`
5. **IMPORTANTE:** Crear archivo `imagenes-capituloN.txt` listando:
   - Nombre original de la imagen en el Word
   - Nombre nuevo sugerido (descriptivo)
   - Ruta donde debe colocarse: `images/capituloN/`
   - Descripción de la figura
   - Formato (PNG, JPG, etc.)

### PASO 7: Convertir Ecuaciones
- **En línea:** `$\lambda=\frac{1}{79}$`
- **En bloque:**
  ```markdown
  $$
  p(x)=\frac{e^{-\lambda} \lambda^{x}}{x !}
  $$
  ```

### PASO 8: Identificar y Convertir Cajas Informativas
Busca cuadros, recuadros o texto destacado en el Word:

**Para cajas intermedias (Box 1, Box 2...):**
```markdown
::: {#box1 .callout-important style="background-color: #e3f0fbff; border-left: 4px solid #d4e8f9ff;" appearance="minimal" icon="false"}
<h2 style="font-size: 1rem; margin-top: 0; margin-bottom: 0;">Caja 1. Título</h2>
-   Punto 1
-   Punto 2
:::
```

**Para sección de Conclusiones, SIEMPRE crear estas 3 cajas:**

1. **Puntos Clave** (fondo amarillo):
```markdown
::: {#puntos-clave .callout-important style="background-color: #f8f0ddff; border-left: 4px solid #f7eed3ff;" appearance="minimal" icon="false"}
<h2 style="font-size: 1.5rem; margin-top: 0; margin-bottom: 0;">Puntos Clave</h2>
-   [Extraer puntos principales de las conclusiones]
:::
```

2. **Preguntas por Resolver** (fondo morado):
```markdown
::: {#preguntas .callout-important style="background-color: #f3eaf8ff; border-left: 4px solid #efe3f7ff;" appearance="minimal" icon="false"}
<h2 style="font-size: 1.5rem; margin-top: 0; margin-bottom: 0;">Preguntas por resolver</h2>
-   [Extraer preguntas o limitaciones del estudio]
:::
```

3. **Recomendaciones** (fondo rojo claro):
```markdown
::: {#recomendaciones .callout-important style="background-color: #f8dedcff; border-left: 4px solid #fad4d1ff;" appearance="minimal" icon="false"}
<h2 style="font-size: 1.5rem; margin-top: 0; margin-bottom: 0;">Recomendaciones para tomar decisiones</h2>
-   [Extraer recomendaciones prácticas o implicaciones]
:::
```

### PASO 9: Convertir Referencias Bibliográficas

1. **En el texto:**
   - Cambiar (Autor, 2020) → `[@autor2020]`
   - Cambiar (Autor et al., 2020) → `[@autor2020]`
   - Cambiar (Autor, 2020; Otro, 2021) → `[@autor2020; @otro2021]`
   - Cambiar múltiples citas: (Autor1, 2020; Autor2, 2021; Autor3, 2022) → `[@autor2020; @autor2021; @autor2022]`

2. **Crear entradas .bib:**
   - **IMPORTANTE:** Crear archivo `referencias-capituloN.bib` con todas las referencias del capítulo
   - Listar todas las referencias que necesitan ser agregadas a `references.bib` del proyecto
   - Usar formato BibTeX estándar
   - Seguir ejemplos de `referencias-ejemplo.bib`
   - Para cada referencia, crear un identificador único y descriptivo:
     - Formato: `apellidoprimerautoranio` (ej: `cardona2021`, `ramirez2020`)
     - Si hay múltiples del mismo autor/año: `cardona2021a`, `cardona2021b`
   - Incluir TODOS los campos necesarios: author, title, journal/booktitle, year, volume, pages, doi (si aplica)

3. **Sección de bibliografía:**
   ```markdown
   # BIBLIOGRAFÍA

   ::: {#refs}
   :::
   ```

4. **Validación de referencias:**
   - Verificar que cada cita `[@clave]` en el texto tenga su entrada correspondiente en el archivo .bib
   - Contar el número total de referencias únicas
   - Listar referencias que puedan estar duplicadas o con formato inconsistente

### PASO 10: Agregar Secciones Finales

Siempre incluir:
```markdown
# AGRADECIMIENTOS

[Texto de agradecimientos si existe en el Word, o placeholder]

# DECLARACIÓN DE AUTORÍA CREDIT

[Texto sobre contribuciones si existe, o placeholder estándar]
```

---

## FORMATO DE SALIDA

Entregar los siguientes archivos:

1. **CapituloN.qmd** (en la raíz del proyecto)
   - Archivo completo con todo el contenido convertido
   - YAML header completo
   - Todas las secciones convertidas
   - Referencias cruzadas funcionando

2. **conversion-workflow/imagenes-capituloN.txt**
   - Lista detallada de todas las imágenes necesarias
   - Formato por imagen:
     ```
     IMAGEN N:
     - Nombre original: image1.jpg
     - Nombre sugerido: distribucion-poblacional.jpg
     - Ruta destino: images/capituloN/
     - Descripción: Distribución poblacional por edad y sexo
     - Formato: JPG
     - Dimensiones sugeridas: 800x600px
     ```

3. **conversion-workflow/referencias-capituloN.bib**
   - Archivo BibTeX con TODAS las referencias del capítulo
   - Listo para copiar/pegar en `references.bib` principal
   - Verificado contra el archivo `referencias-ejemplo.bib`

4. **conversion-workflow/conversion-report-capituloN.md** (opcional pero recomendado)
   - Resumen de la conversión
   - Estadísticas: número de secciones, tablas, figuras, referencias
   - Notas sobre elementos difíciles de convertir
   - Lista de verificación completada
   - Instrucciones para el siguiente paso

---

## REGLAS CRÍTICAS

- ✅ NO inventar contenido
- ✅ NO omitir ninguna sección del Word
- ✅ RESPETAR el formato EXACTO de la plantilla
- ✅ USAR los mismos colores para las cajas de conclusiones
- ✅ MANTENER referencias cruzadas (@fig-, @tbl-)
- ✅ CONSERVAR todas las ecuaciones matemáticas
- ✅ INDICAR claramente lo que falta (imágenes, datos, etc.)

---

## EJEMPLO DE USO

**Prompt completo que usarás con Claude:**

```
Lee el archivo Word "conversion-workflow/capitulos-word/[nombre-archivo].docx"
y conviértelo a formato Quarto Markdown siguiendo EXACTAMENTE las instrucciones
del archivo "conversion-workflow/02-conversion-prompt.md" y usando la estructura
de "conversion-workflow/01-conversion-template.md" o del archivo "capitulo-plantilla.qmd".

Este es el capítulo [N] de [TOTAL] del libro.

IMPORTANTE:
1. Usa pandoc para extraer el contenido del Word a markdown temporal
2. Procesa el contenido siguiendo TODOS los pasos del prompt de conversión
3. Crea el archivo "CapituloN.qmd" en el directorio raíz del proyecto (NO en conversion-workflow)

Genera los siguientes archivos:
1. CapituloN.qmd - Archivo completo del capítulo
2. conversion-workflow/imagenes-capituloN.txt - Lista detallada de imágenes
3. conversion-workflow/referencias-capituloN.bib - Referencias BibTeX
4. conversion-workflow/conversion-report-capituloN.md - Reporte de conversión

REGLAS CRÍTICAS:
- title-block-banner debe ser "bannerCN.png" (para Capítulo N)
- Mantener TODAS las secciones del documento original
- Convertir TODAS las tablas a formato Markdown con alineación centrada
- Identificar y marcar TODAS las figuras con rutas images/capituloN/
- Crear las 3 cajas de conclusiones (Puntos Clave, Preguntas, Recomendaciones)
- Convertir TODAS las referencias bibliográficas al formato [@clave]
- Incluir secciones de AGRADECIMIENTOS y DECLARACIÓN DE AUTORÍA CREDIT

Retorna en tu respuesta final un resumen con:
1. Confirmación de archivos creados
2. Número total de secciones convertidas
3. Número de tablas y figuras identificadas
4. Número de referencias bibliográficas
5. Cualquier problema o nota importante
```

---

## VERIFICACIÓN FINAL

Antes de entregar, verifica:
- [ ] YAML header completo y correcto
- [ ] Resumen y Abstract presentes
- [ ] Todas las secciones convertidas
- [ ] Tablas con formato centrado e IDs
- [ ] Figuras con IDs y referencias
- [ ] Cajas de conclusiones (3 tipos) incluidas
- [ ] Referencias bibliográficas convertidas
- [ ] Ecuaciones en formato LaTeX
- [ ] Secciones finales incluidas

---

## CONSULTA LA GUÍA DE ESTILOS

Para detalles específicos sobre colores, fuentes y espaciado, consulta el archivo `03-style-guide.md`.

---

## MEJORES PRÁCTICAS Y CONSEJOS

### Organización de IDs
- **Tablas:** Usa IDs descriptivos: `{#tbl-demografia}` en lugar de `{#tbl-1}`
- **Figuras:** Usa IDs descriptivos: `{#fig-mapa-riesgo}` en lugar de `{#fig-1}`
- **Cajas:** Usa IDs únicos: `{#box-metodologia}` en lugar de `{#box1}`

### Manejo de imágenes
- Crear carpeta específica: `images/capituloN/`
- Usar nombres descriptivos: `mapa-distribucion-poblacional.png` en lugar de `image1.png`
- Documentar dimensiones recomendadas en el archivo de imágenes
- Indicar si la imagen necesita ser recreada o mejorada

### Referencias bibliográficas
- Verificar que no haya duplicados en el archivo .bib
- Usar identificadores consistentes: `apellido_primer_autor + año`
- Incluir DOI cuando esté disponible
- Mantener formato consistente en todos los campos

### Verificación de calidad
- Renderizar el capítulo individual antes de integrar al libro: `quarto render CapituloN.qmd`
- Verificar que todas las referencias cruzadas funcionen correctamente
- Revisar que las cajas de conclusiones tengan los colores correctos
- Confirmar que el YAML header esté completo

### Documentación
- Mantener un registro de decisiones tomadas durante la conversión
- Documentar elementos que requieran atención especial del autor original
- Listar mejoras o correcciones sugeridas

---

## VERSIÓN DEL WORKFLOW

**Versión:** 2.0
**Última actualización:** 2025-10-28
**Cambios principales:**
- Actualización de referencias a `capitulo-plantilla.qmd`
- Mejora en instrucciones de manejo de imágenes
- Ampliación de guía de referencias bibliográficas
- Adición de sección de mejores prácticas
