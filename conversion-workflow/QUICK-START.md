# ⚡ QUICK START - Conversión Rápida de Capítulos

Guía visual de 5 minutos para empezar inmediatamente.

---

## 🎯 EN 3 PASOS

```
┌─────────────────────┐
│  1. COLOCA EL WORD  │
│  en capitulos-word/ │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│  2. USA EL PROMPT   │
│  con Claude         │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│  3. VALIDA E        │
│  INTEGRA AL LIBRO   │
└─────────────────────┘
```

---

## 📝 PASO 1: Preparar

```bash
# Coloca tu archivo Word aquí:
conversion-workflow/capitulos-word/mi-capitulo.docx
```

---

## 🤖 PASO 2: Convertir con Claude

Copia y pega este prompt (cambia [N] por el número de capítulo):

```
Lee el archivo Word "capitulos-word/mi-capitulo.docx" y conviértelo
a Quarto Markdown siguiendo las instrucciones del archivo
"conversion-workflow/02-conversion-prompt.md" y usando la estructura de
"conversion-workflow/01-conversion-template.md".

Este es el capítulo [N] del libro.

Genera:
1. El archivo .qmd completo
2. Lista de imágenes a preparar
3. Referencias BibTeX a agregar
```

---

## ✅ PASO 3: Validar e Integrar

### 3.1 Guardar el archivo
```bash
# Guarda el output como:
capituloN.qmd  # En la raíz del proyecto
```

### 3.2 Agregar referencias
```bash
# Abre references.bib y agrega las nuevas referencias al final
```

### 3.3 Actualizar _quarto.yml
```yaml
# Agrega la línea en la sección chapters:
chapters:
  - index.qmd
  - capitulo-plantilla.qmd
  - capituloN.qmd        # ← Tu nuevo capítulo
  - references.qmd
```

### 3.4 Renderizar
```bash
quarto render
```

---

## 🎨 ELEMENTOS OBLIGATORIOS

### Verifica que tu capítulo tenga:

#### ✓ YAML Header completo
```yaml
---
title: "N. Título"
author: "Autor"
bibliography: references.bib
csl: vancouver-brackets.csl
---
```

#### ✓ Bloques de Resumen
```markdown
::: {#resumen}
# Resumen
[Texto]
:::

::: {#abstract}
# Title in English
**Abstract**. [Text]
:::
```

#### ✓ 3 Cajas de Conclusiones

1. **Puntos Clave** → Fondo amarillo (#f8f0ddff)
2. **Preguntas por resolver** → Fondo morado (#f3eaf8ff)
3. **Recomendaciones** → Fondo rojo claro (#f8dedcff)

---

## 🚨 VERIFICACIÓN RÁPIDA (30 segundos)

```bash
# Renderiza el capítulo individual:
quarto render capituloN.qmd

# Si renderiza sin errores → ✅ Listo!
# Si hay errores → Ver sección de problemas abajo
```

---

## 🔍 CHECKLIST MÍNIMO

- [ ] YAML header presente
- [ ] Resumen y Abstract incluidos
- [ ] Tablas con formato: `|:---:|` y caption con `{#tbl-nombre}`
- [ ] Figuras con `{#fig-nombre}`
- [ ] Referencias como `[@clave]`
- [ ] 3 cajas de conclusiones
- [ ] Renderiza sin errores

---

## ⚠️ PROBLEMAS COMUNES

### Error: "could not find file"
```
Solución: Verifica que custom.css y pdf-styles.css existan
```

### Error: "??" en las referencias
```
Solución: Agrega las referencias a references.bib
```

### Los colores no se ven
```
Solución: Verifica que el YAML tenga:
css:
  - custom.css
  - pdf-styles.css
```

### Las tablas se ven desalineadas
```
Solución: Usa alineación centrada: |:-----:|
```

---

## 📚 MÁS INFORMACIÓN

Para detalles completos, consulta:

- **README.md** → Guía completa del workflow
- **02-conversion-prompt.md** → Instrucciones detalladas paso a paso
- **04-validation-checklist.md** → Checklist exhaustivo
- **03-style-guide.md** → Colores y estilos

---

## 🎓 EJEMPLO VISUAL

### Estructura de un capítulo convertido:

```
capituloN.qmd
│
├── YAML Header (con banner, CSS, bibliography)
│
├── ::: {#resumen}
│
├── ::: {#abstract}
│
├── # 1. INTRODUCCIÓN
│   ├── ## 1.1 Subsección
│   └── ### Sub-subsección
│
├── # 2. MÉTODOS
│   ├── Tablas: | Col1 | Col2 | con {#tbl-tabla1}
│   └── Figuras: ![Desc](img.png){#fig-fig1}
│
├── # 3. RESULTADOS
│
├── # 4. DISCUSIÓN
│
├── # 5. CONCLUSIONES
│   ├── ::: {#puntos-clave} (Amarillo)
│   ├── ::: {#preguntas} (Morado)
│   └── ::: {#recomendaciones} (Rojo)
│
├── # AGRADECIMIENTOS
│
├── # DECLARACIÓN DE AUTORÍA CREDIT
│
└── # BIBLIOGRAFÍA
    └── ::: {#refs}
```

---

## 💾 COMANDOS ÚTILES

```bash
# Renderizar capítulo individual
quarto render capituloN.qmd

# Renderizar solo HTML
quarto render capituloN.qmd --to html

# Renderizar solo PDF
quarto render capituloN.qmd --to pdf

# Renderizar todo el libro
quarto render

# Preview interactivo (se actualiza automáticamente)
quarto preview
```

---

## 🎯 TIEMPO ESTIMADO

```
Conversión con Claude:    5-10 min
Revisión del output:     10-15 min
Agregar referencias:      5-10 min
Validación y renderizado:  5 min
─────────────────────────────────
TOTAL:                   25-40 min
```

---

## 🚀 TIPS RÁPIDOS

1. **Mantén el Word abierto** mientras revisas el .qmd para comparar
2. **Renderiza frecuentemente** para detectar errores temprano
3. **Copia las cajas de conclusiones** del template para asegurar colores exactos
4. **Usa IDs descriptivos** para figuras y tablas (no solo números)
5. **Revisa el capitulo-plantilla.qmd** cuando tengas dudas

---

## ✨ ¡LISTO PARA EMPEZAR!

1. Coloca tu Word en `capitulos-word/`
2. Usa el prompt con Claude
3. Guarda, valida, integra
4. Renderiza

**¡Es así de simple!** 🎉

---

**Próximo paso:** Lee el [README.md](README.md) para información completa del sistema.
