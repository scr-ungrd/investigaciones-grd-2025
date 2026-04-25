#!/usr/bin/env bash
set -euo pipefail

DOCS="$(dirname "$0")/docs"
PDF_NAME="Investigaciones-en-Gestión-del-Riesgo-de-Desastres-para-Colombia.-Enfoque-Comunitario,-Territorial-y-Animal.pdf"
PDF="$DOCS/$PDF_NAME"
BACKUP="/tmp/libro_pdf_backup.pdf"

if [ ! -f "$PDF" ]; then
  echo "Error: no se encontró el PDF en docs/. Abortando." >&2
  exit 1
fi

echo "→ Guardando PDF ($(du -sh "$PDF" | cut -f1))..."
cp "$PDF" "$BACKUP"

echo "→ Renderizando HTML..."
cd "$(dirname "$0")"
quarto render --to html

echo "→ Restaurando PDF..."
cp "$BACKUP" "$PDF"

echo "✓ Listo. HTML actualizado y PDF preservado."
