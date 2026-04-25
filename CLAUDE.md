# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project overview

Quarto book published as HTML (GitHub Pages) and PDF. Source repo: `github.com/scr-ungrd/investigaciones-grd-2025`. Deployed at `https://scr-ungrd.github.io/investigaciones-grd-2025/`. Output goes to `docs/`.

## Build commands

```bash
# Full build (HTML + PDF) → docs/
quarto render

# Render only HTML format
quarto render --to html

# Render only PDF format
quarto render --to pdf

# Render a single chapter
quarto render Capitulo1.qmd

# Live preview with hot reload
quarto preview
```

## Deployment

GitHub Actions (`.github/workflows/deploy.yml`) only uploads the pre-built `docs/` directory to GitHub Pages — it does **not** re-render the book in CI. Always run `quarto render` locally and commit the `docs/` output before pushing to trigger deployment.

## Architecture

The book is configured in `_quarto.yml` as `type: book`. Chapter order is defined there. Each chapter is a standalone `.qmd` file with its own YAML frontmatter that overrides book-level settings where needed.

**Key architecture decisions:**

- Each chapter (`.qmd`) carries its own full YAML frontmatter: author list with ORCIDs, DOI (Zenodo), citation meta tags for Google Scholar indexing, and per-chapter bibliography (`capitulo#-references.bib`). The book build also uses `all-references.bib` as a consolidated fallback.
- Citation style is `vancouver-apa-hybrid.csl` (custom hybrid, not a standard CSL). Do not replace it with a standard Vancouver or APA file.
- Index terms are added inline with `\index{term}` LaTeX commands inside prose — these generate the `Índice Temático` in PDF via `\printindex`. The HTML thematic index (`indice-tematico.qmd`) is maintained manually and must be updated by hand when terms change.
- Custom CSS (`custom.css`) uses Source Sans Pro for body text but forces Arial for callout divs (`#box1`–`#box5`, `#caja1`–`#caja5`) and all tables.
- PDF uses `keep-tex: true`, so `.tex` intermediates remain after build.
- `_Presentacion.qmd` is commented out in `_quarto.yml` — do not add it back without confirming with the author.
- Some chapters use OJS cells (`div.cell[data-language="ojs"]`) for interactive figures; these render only in HTML.

## Chapter structure convention

Each chapter `.qmd` should have:
1. YAML frontmatter with title, authors (name + ORCID + affiliation), date, DOI, keywords, citation meta tags, and bibliography reference
2. `{#resumen}` div with Spanish abstract + keywords
3. `{#abstract}` div with English title, abstract, and keywords
4. Numbered sections starting at `## 1. INTRODUCCIÓN`
5. References rendered at section level (`reference-location: section`)

## Callout box naming conventions

Named divs in chapter prose use these IDs, which are styled by `custom.css`:
- `#caja1`–`#caja5` / `#box1`–`#box5`: Arial font, 13px header, 15px body — used for contextual information boxes
- `#puntos-clave`, `#preguntas`, `#recomendaciones`: Source Sans Pro — used for key points, questions, and recommendations
