#!/usr/bin/env bash
# Regenera el PDF a partir de documentacion.md.
# Se pasa por HTML y Chrome en lugar de LaTeX porque Chrome respeta el CSS
# de impresión (portada, saltos de página, numeración en el pie).
set -euo pipefail

cd "$(dirname "$0")"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
HTML="$(mktemp -t documentacion).html"
PDF="Documentacion_Gestion_Proyectos_NOC.pdf"

pandoc documentacion.md \
  --standalone --embed-resources \
  --toc --toc-depth=2 --number-sections \
  --css estilo.css \
  -o "$HTML"

"$CHROME" --headless=new --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$PWD/$PDF" "file://$HTML" 2>/dev/null

rm -f "$HTML"
echo "Generado $PDF"
