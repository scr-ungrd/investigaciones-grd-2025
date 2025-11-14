# 📚 WORKFLOW DE CONVERSIÓN WORD → QUARTO MARKDOWN

Sistema completo para convertir capítulos desde Microsoft Word al formato Quarto Markdown del libro.

---

## 📁 ESTRUCTURA DE ARCHIVOS

```
conversion-workflow/
├── README.md                        # Este archivo - Guía de uso
├── 01-conversion-template.md        # Plantilla con estructura exacta
├── 02-conversion-prompt.md          # Instrucciones detalladas para Claude
├── 03-style-guide.md                # Guía de estilos y colores
├── 04-validation-checklist.md       # Lista de verificación
├── referencias-ejemplo.bib          # Ejemplos de referencias BibTeX
└── capitulos-word/                  # Coloca tus archivos .docx aquí
```

---

## 🚀 GUÍA DE USO RÁPIDO

### PASO 1: Preparar el archivo Word
1. Coloca tu archivo `.docx` en la carpeta `capitulos-word/`
2. Asegúrate de que tiene la estructura típica de un artículo científico

### PASO 2: Convertir con Claude
Usa este prompt:

```
Lee el archivo Word "capitulos-word/[nombre-archivo].docx" y conviértelo
a Quarto Markdown siguiendo las instrucciones del archivo
"conversion-workflow/02-conversion-prompt.md" y usando la estructura de
"conversion-workflow/01-conversion-template.md".

Este es el capítulo [N] del libro.

Genera:
1. El archivo .qmd completo
2. Lista de imágenes a preparar
3. Referencias BibTeX a agregar
```

### PASO 3: Validar el resultado
Usa el checklist en `04-validation-checklist.md` para verificar:
- YAML header correcto
- Todas las secciones presentes
- Tablas y figuras convertidas
- Referencias bibliográficas
- Cajas de conclusiones (3 obligatorias)

### PASO 4: Integrar al libro
1. Guardar el archivo como `capituloN.qmd` en la raíz del proyecto
2. Agregar las referencias a `references.bib`
3. Actualizar `_quarto.yml` con el nuevo capítulo
4. Renderizar: `quarto render`

---

## 📖 DESCRIPCIÓN DE ARCHIVOS

### [01-conversion-template.md](01-conversion-template.md)
**Qué es:** Plantilla completa que muestra la estructura exacta de cada capítulo.

**Cuándo usar:**
- Como referencia rápida del formato
- Para verificar que tienes todos los elementos
- Como ejemplo para copiar/pegar estructuras

**Incluye:**
- Estructura del YAML header
- Formato de bloques (resumen, abstract)
- Sintaxis de tablas, figuras, ecuaciones
- Cajas informativas y de conclusiones
- Secciones finales

---

### [02-conversion-prompt.md](02-conversion-prompt.md)
**Qué es:** Instrucciones paso a paso para que Claude (o tú) convierta el documento.

**Cuándo usar:**
- Al iniciar la conversión de un nuevo capítulo
- Como guía durante el proceso de conversión
- Para entrenar a otros colaboradores

**Incluye:**
- 10 pasos detallados del proceso
- Reglas críticas a seguir
- Formato de salida esperado
- Ejemplo de prompt de uso

---

### [03-style-guide.md](03-style-guide.md)
**Qué es:** Documentación completa de colores, fuentes, espaciado y estilos.

**Cuándo usar:**
- Para verificar colores exactos de cajas
- Para consultar tamaños de fuente
- Cuando tengas dudas sobre formato
- Para mantener consistencia visual

**Incluye:**
- Paleta de colores con códigos hex
- Especificaciones tipográficas
- Espaciado y márgenes
- Formato de elementos especiales

---

### [04-validation-checklist.md](04-validation-checklist.md)
**Qué es:** Lista exhaustiva de verificación post-conversión.

**Cuándo usar:**
- SIEMPRE después de convertir un capítulo
- Antes de integrar al libro
- Para asegurar calidad
- Como checklist de revisión

**Incluye:**
- 9 fases de verificación
- Más de 100 checkpoints
- Problemas comunes y soluciones
- Criterios de aprobación final

---

### [referencias-ejemplo.bib](referencias-ejemplo.bib)
**Qué es:** Archivo con ejemplos de todos los tipos de referencias BibTeX.

**Cuándo usar:**
- Al crear nuevas referencias bibliográficas
- Para copiar formato correcto
- Como referencia de sintaxis

**Incluye:**
- Artículos de revista
- Libros y capítulos
- Informes técnicos
- Tesis y disertaciones
- Páginas web
- Casos especiales

---

## 🎯 FLUJO DE TRABAJO RECOMENDADO

### Método A: Conversión Manual (Tú haces la conversión)
```
1. Leer 02-conversion-prompt.md
2. Abrir el Word y 01-conversion-template.md lado a lado
3. Copiar y adaptar sección por sección
4. Usar 03-style-guide.md para colores y formatos
5. Verificar con 04-validation-checklist.md
6. Integrar al libro
```

### Método B: Conversión con Claude (Recomendado)
```
1. Colocar Word en capitulos-word/
2. Usar el prompt del PASO 2 de esta guía
3. Revisar y ajustar el output
4. Verificar con 04-validation-checklist.md
5. Integrar al libro
```

### Método C: Conversión Híbrida
```
1. Claude hace conversión inicial (Método B)
2. Tú ajustas detalles manualmente
3. Usar 03-style-guide.md para refinamientos
4. Verificar con 04-validation-checklist.md
5. Integrar al libro
```

---

## ✅ CHECKLIST ULTRA-RÁPIDO

Antes de dar por terminado un capítulo, verifica:

- [ ] Archivo `.qmd` creado
- [ ] YAML header completo
- [ ] Resumen y Abstract presentes
- [ ] Todas las secciones del Word incluidas
- [ ] Tablas convertidas con IDs únicos
- [ ] Figuras identificadas con IDs únicos
- [ ] 3 cajas de conclusiones agregadas (Puntos Clave, Preguntas, Recomendaciones)
- [ ] Referencias convertidas a formato `[@clave]`
- [ ] Referencias BibTeX listadas
- [ ] Renderiza sin errores (`quarto render`)
- [ ] Integrado a `_quarto.yml`

---

## 🎨 ELEMENTOS CLAVE DEL FORMATO

### Cajas de Conclusiones (OBLIGATORIAS)

**1. Puntos Clave** (Amarillo)
```markdown
::: {#puntos-clave .callout-important style="background-color: #f8f0ddff; border-left: 4px solid #f7eed3ff;" appearance="minimal" icon="false"}
<h2 style="font-size: 1.5rem; margin-top: 0; margin-bottom: 0;">Puntos Clave</h2>
-   Punto 1
:::
```

**2. Preguntas por Resolver** (Morado)
```markdown
::: {#preguntas .callout-important style="background-color: #f3eaf8ff; border-left: 4px solid #efe3f7ff;" appearance="minimal" icon="false"}
<h2 style="font-size: 1.5rem; margin-top: 0; margin-bottom: 0;">Preguntas por resolver</h2>
-   Pregunta 1
:::
```

**3. Recomendaciones** (Rojo claro)
```markdown
::: {#recomendaciones .callout-important style="background-color: #f8dedcff; border-left: 4px solid #fad4d1ff;" appearance="minimal" icon="false"}
<h2 style="font-size: 1.5rem; margin-top: 0; margin-bottom: 0;">Recomendaciones para tomar decisiones</h2>
-   Recomendación 1
:::
```

---

## 🔧 RENDERIZADO Y PRUEBAS

### Renderizar capítulo individual:
```bash
quarto render capituloN.qmd
```

### Renderizar libro completo:
```bash
quarto render
```

### Renderizar solo HTML:
```bash
quarto render --to html
```

### Renderizar solo PDF:
```bash
quarto render --to pdf
```

---

## 📝 RECURSOS ADICIONALES

### Archivos CSS del proyecto
- `custom.css` - Estilos generales
- `pdf-styles.css` - Estilos para PDF

### Archivos de configuración
- `_quarto.yml` - Configuración del libro
- `references.bib` - Bibliografía compartida
- `vancouver-brackets.csl` - Estilo de citación

### Capítulo de referencia
- `capitulo-plantilla.qmd` - Ejemplo completo ya formateado

---

## 🚨 PROBLEMAS COMUNES

### "No se ven los colores de las cajas"
**Solución:** Verifica que `custom.css` y `pdf-styles.css` estén listados en el YAML header.

### "Las referencias aparecen como ??"
**Solución:** Verifica que la clave en `[@clave]` existe en `references.bib` y que el campo `bibliography: references.bib` está en el YAML.

### "El renderizado falla con error de sintaxis"
**Solución:** Revisa que todos los bloques `:::` estén cerrados y que la indentación del YAML sea correcta.

### "Las tablas no se ven centradas"
**Solución:** Usa alineación centrada en el markdown: `|:-----:|`

---

## 💡 TIPS PROFESIONALES

1. **Usa nombres descriptivos para IDs:**
   - ✅ `#fig-distribucion-edad`
   - ❌ `#fig-1`

2. **Documenta imágenes faltantes:**
   Crea un archivo `imagenes-pendientes.txt` listando las que faltan.

3. **Revisa el capítulo renderizado:**
   Siempre abre el HTML generado en el navegador para verificar visualmente.

4. **Guarda versiones:**
   Haz commit en git después de cada capítulo exitosamente integrado.

5. **Reutiliza referencias:**
   Antes de agregar una referencia a `.bib`, busca si ya existe.

---

## 📊 TIEMPO ESTIMADO

| Tarea | Tiempo estimado |
|:------|:----------------|
| Conversión inicial con Claude | 5-10 minutos |
| Revisión y ajustes | 15-30 minutos |
| Validación completa | 10-15 minutos |
| Preparación de imágenes | Variable |
| Integración al libro | 5 minutos |
| **TOTAL** | **35-60 minutos por capítulo** |

---

## 🎓 PRÓXIMOS PASOS

Después de dominar este workflow:

1. Considera crear plantillas específicas para tipos de capítulos
2. Automatiza partes del proceso con scripts
3. Crea un repositorio de imágenes común
4. Establece convenciones de nombres de archivos
5. Documenta particularidades de cada capítulo

---

## 📞 SOPORTE

Si tienes problemas:

1. Consulta el `04-validation-checklist.md`
2. Revisa el `03-style-guide.md`
3. Compara con `capitulo-plantilla.qmd`
4. Verifica la documentación de Quarto: https://quarto.org/docs/books

---

## ✨ VERSIÓN

**Workflow versión:** 1.1
**Fecha de actualización:** 2025-10-28
**Basado en:** capitulo-plantilla.qmd (Plantilla de referencia)

---

**¡Éxito con tus conversiones!** 🚀
