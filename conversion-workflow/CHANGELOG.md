# CHANGELOG - Workflow de Conversión

Registro de cambios y actualizaciones del sistema de conversión Word → Quarto Markdown.

---

## [Versión 1.2] - 2025-01-12

### 🎨 Cambios Mayores en Estilos y Navegación

#### Nuevo Archivo de Documentación
- ✨ **NUEVO:** `05-ACTUALIZACIONES-2025.md` - Documentación completa de cambios recientes
  - Cambios en tipografía (Merriweather + Source Sans Pro)
  - Cambios en colores (Nature style #333)
  - Nueva estructura de navegación
  - Estilos de citación actualizados
  - Guías y checklists actualizados

#### Actualización de Tipografía
- 🔄 **Fuente principal:** Source Sans Pro → **Merriweather (serif)**
  - Mejor legibilidad académica
  - Estilo profesional de revistas científicas
- ✨ **Fuente navegación:** Source Sans Pro específico para sidebars
  - Separación clara entre contenido y UI
- ✅ **Fuentes preservadas:** Arial para tablas y cajas Box

#### Actualización de Colores
- 🔄 **Texto principal:** #4b5563 → **#333 (Nature style)**
  - Mayor contraste y legibilidad
  - Estilo de revistas de alto impacto
- 🔄 **Líneas horizontales:** #e5e7eb → **#9ca3af**
  - Mayor visibilidad de separadores
- ✨ **Texto en negrita:** Color específico #1f2937

#### Nueva Estructura de Navegación
- ✨ **Títulos cortos en menú lateral**
  - Uso de `text:` y `href:` en `_quarto.yml`
  - Mejor experiencia de usuario
  - Menú más limpio y legible
- ✨ **Títulos completos en index.qmd**
  - Página de índice con descripciones
  - Enlaces clickeables a cada capítulo

#### Estilos de Citación
- ✨ **Números de citación en negrita** (estilo Annual Reviews)
  - Mayor visibilidad de referencias
  - Sin subrayado para mejor lectura

#### Nuevas Páginas Preliminares
- ✨ **Principios.qmd** - Página legal con créditos
- ✨ **Presentacion.qmd** - Presentación del libro
- ✨ **Prologo.qmd** - Prólogo

#### Archivos Actualizados
- `custom.css` - Todos los estilos nuevos aplicados
- `_quarto.yml` - Estructura de navegación actualizada
- `index.qmd` - Títulos completos con enlaces
- Todos los capítulos con títulos completos en YAML

### 📋 Impacto en el Workflow

#### Para Nuevos Capítulos
- Usar títulos cortos en `_quarto.yml` con `text:` y `href:`
- Mantener títulos completos en el YAML del capítulo
- Agregar entrada en `index.qmd` con descripción
- Verificar renderizado con Merriweather
- Confirmar citaciones en negrita

#### Recursos Actualizados
- **Consultar:** `05-ACTUALIZACIONES-2025.md` para todos los detalles
- **Checklist:** Validación actualizada incluida
- **Prompt:** Nueva versión para conversión de capítulos

---

## [Versión 2.0] - 2025-10-28

### 🔄 Cambios Mayores

#### Actualización de Referencias
- **Cambio:** `capitulo1.qmd` → `capitulo-plantilla.qmd`
- **Motivo:** El archivo fue renombrado para reflejar mejor su propósito como plantilla de referencia
- **Archivos afectados:**
  - `README.md`
  - `QUICK-START.md`
  - `RESUMEN-EJECUTIVO.md`
  - `01-conversion-template.md`
  - `02-conversion-prompt.md`

#### Mejoras en Instrucciones de Conversión

##### 02-conversion-prompt.md
- ✨ **PASO 1 mejorado:** Instrucciones explícitas para usar pandoc
- ✨ **PASO 2 mejorado:** Detalles específicos del YAML header con todos los campos obligatorios
- ✨ **PASO 6 mejorado:** Manejo de imágenes con estructura de carpetas `images/capituloN/`
- ✨ **PASO 9 ampliado:** Guía detallada de referencias bibliográficas con formato de claves
- ✨ **Formato de salida:** Especificación clara de archivos a entregar con plantillas
- ✨ **Ejemplo de uso:** Prompt completo y detallado listo para copiar/pegar
- ✨ **Nueva sección:** Mejores Prácticas y Consejos
  - Organización de IDs
  - Manejo de imágenes
  - Referencias bibliográficas
  - Verificación de calidad
  - Documentación

##### 01-conversion-template.md
- ✨ Referencia explícita a `capitulo-plantilla.qmd`
- ✨ Estructura de rutas de imágenes estandarizada: `images/capituloN/`
- ✨ Nota explicativa sobre organización de carpetas

##### README.md
- 🔄 Versión actualizada: 1.0 → 1.1
- 🔄 Fecha actualizada a 2025-10-28
- 🔄 Referencias a archivo plantilla corregidas

##### QUICK-START.md
- 🔄 Ejemplo de `_quarto.yml` actualizado
- 🔄 Tips actualizados con referencia correcta

##### RESUMEN-EJECUTIVO.md
- 🔄 Referencias base actualizadas

---

## [Versión 1.0] - 2025-01-19

### 🎉 Lanzamiento Inicial

#### Archivos Creados
- `README.md` - Documentación completa del workflow
- `QUICK-START.md` - Guía rápida de 5 minutos
- `01-conversion-template.md` - Plantilla de estructura
- `02-conversion-prompt.md` - Instrucciones paso a paso
- `03-style-guide.md` - Guía de estilos visuales
- `04-validation-checklist.md` - Lista de verificación
- `RESUMEN-EJECUTIVO.md` - Resumen ejecutivo del sistema
- `referencias-ejemplo.bib` - Ejemplos de referencias BibTeX

#### Características Principales
- Sistema completo de conversión Word → Quarto
- Plantillas y ejemplos
- Instrucciones detalladas en 10 pasos
- Guía de estilos con colores y tipografía
- Checklist de validación exhaustivo
- Documentación para tres métodos de conversión

---

## Próximas Mejoras Sugeridas

### Para Versión 2.1
- [ ] Agregar scripts de automatización para tareas repetitivas
- [ ] Crear plantillas de banner prediseñadas
- [ ] Incluir ejemplos de código R más complejos
- [ ] Guía de troubleshooting ampliada
- [ ] Video tutorial de conversión

### Para Versión 3.0
- [ ] Sistema de validación automática
- [ ] Herramienta CLI para conversión
- [ ] Integración con CI/CD
- [ ] Dashboard de progreso de conversiones
- [ ] Sistema de templates por tipo de capítulo

---

## Mantenimiento

**Responsable:** Mauricio Romero
**Última revisión:** 2025-10-28
**Próxima revisión sugerida:** Después de convertir 2-3 capítulos

---

## Notas de Migración

### Para usuarios de Versión 1.0:

Si ya estabas usando la versión 1.0 del workflow:

1. **Actualizar referencias:**
   - Cambiar `capitulo1.qmd` por `capitulo-plantilla.qmd` en tus notas

2. **Nuevas carpetas de imágenes:**
   - Organizar imágenes en carpetas `images/capituloN/`
   - Actualizar rutas en archivos .qmd existentes

3. **Nuevos archivos de salida:**
   - Ahora se generan 4 archivos por capítulo:
     - `CapituloN.qmd`
     - `imagenes-capituloN.txt`
     - `referencias-capituloN.bib`
     - `conversion-report-capituloN.md` (opcional)

4. **Prompt actualizado:**
   - Usar el nuevo prompt completo de la sección "EJEMPLO DE USO"
   - Incluye más detalles y reglas críticas

---

## Feedback y Contribuciones

Para reportar problemas o sugerir mejoras:
1. Documentar el problema/sugerencia
2. Incluir ejemplo específico
3. Proponer solución si es posible

---

**Documento de cambios mantenido desde:** 2025-10-28
