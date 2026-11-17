#!/usr/bin/env bash
# ---------------------------------------------------------------
# Day‑4 helper script – runs the R analysis and shows the result.
# ---------------------------------------------------------------
# Usage:   cd <repo>/exercise-data/analysis && ./run_analysis.sh
# ---------------------------------------------------------------

# Exit on any error
set -e

# Run the R script (requires R installed and on PATH)
Rscript "$(dirname "$0")/gapminder_analysis.R"

# Show the generated plot (Windows default image viewer)
RESULT_IMG=$(ls -1 ../results/*.png | head -n 1)
if [[ -n "$RESULT_IMG" ]]; then
  echo "Opening plot: $RESULT_IMG"
  start "" "$RESULT_IMG"
else
  echo "No result image found."
fi
