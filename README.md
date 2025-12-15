# Investigaciones en Gestión del Riesgo de Desastres para Colombia

Este repositorio contiene el código fuente del libro "Investigaciones en Gestión del Riesgo de Desastres para Colombia. Enfoque Comunitario, Territorial y Animal", un proyecto de la Comisión Nacional Asesora para la Investigación en Gestión del Riesgo de Desastres.

## 🌐 Acceso en línea

El libro está disponible en línea en: https://scr-ungrd.github.io/investigaciones-grd-2025/

## 🛠️ Requisitos de software

Para compilar el libro, necesitarás tener instalado [Quarto](https://quarto.org/docs/get-started/), un sistema de publicación científica y técnica de código abierto.

## 🚀 Cómo compilar el libro

1.  **Clona el repositorio:**

    ```bash
    git clone https://github.com/scr-ungrd/investigaciones-grd-2025.git
    cd investigaciones-grd-2025
    ```

2.  **Renderiza el libro:**

    Para compilar el libro en todos los formatos definidos en `_quarto.yml` (generalmente HTML y PDF), ejecuta el siguiente comando:

    ```bash
    quarto render
    ```

    Los archivos de salida se guardarán en el directorio `docs/`.

3.  **Visualiza el libro:**

    Para obtener una vista previa del libro en formato HTML con un servidor web local, puedes usar el siguiente comando:

    ```bash
    quarto preview
    ```

    Esto abrirá el libro en tu navegador web y se actualizará automáticamente cada vez que realices cambios en los archivos fuente.

## 📂 Estructura del repositorio

-   `_quarto.yml`: El archivo de configuración principal del proyecto Quarto.
-   `*.qmd`: Los archivos fuente de los capítulos del libro, escritos en Quarto Markdown.
-   `*-references.bib`: Archivos de bibliografía en formato BibTeX para cada capítulo.
-   `all-references.bib`: Archivo de bibliografía consolidada.
-   `images/`: El directorio que contiene las imágenes utilizadas en el libro.
-   `custom.css`: Una hoja de estilos personalizada para la salida en HTML.
-   `docs/`: Directorio de salida con los archivos HTML y PDF generados.

## 📖 Contenido

- **Prólogo**: Reflexión sobre la gestión del riesgo en Colombia
- **Introducción**: Contexto y objetivos del libro
- **Capítulo 1**: Estrategias en el Valle de Aburrá
- **Capítulo 2**: Enfoque etnodiferencial
- **Capítulo 3**: Cartografía participativa
- **Capítulo 4**: Resiliencia comunitaria
- **Capítulo 5**: Riesgo volcánico en animales

## 🔍 Indexación académica

Este libro está optimizado para indexación en Google Scholar y otros motores de búsqueda académicos, con metadatos completos incluyendo:
- DOIs de Zenodo para cada capítulo
- Meta tags de citación estándar
- Sitemap XML y robots.txt configurados

## 🤝 Cómo contribuir

Las contribuciones a este proyecto son bienvenidas. Si deseas proponer cambios o correcciones, por favor, abre un *issue* o envía un *pull request*.

## 📄 Licencia

El contenido de este libro se distribuye bajo una licencia Creative Commons Atribución-NoComercial-SinDerivadas 4.0 Internacional. Consulta el archivo `LICENSE` para más detalles.
