#!/bin/bash

INPUT_DIR="src/jupyter"   # Change if your source notebooks are elsewhere
OUTPUT_DIR="src/html"

mkdir -p "$OUTPUT_DIR"

for nb in "$INPUT_DIR"/*.ipynb; do
    base=$(basename "$nb" .ipynb)
    clean_base="${base%%-*}"
    output_file="$OUTPUT_DIR/${clean_base}.html"
    if [ ! -f "$output_file" ]; then
        jupyter nbconvert "$nb" --to html --output "${clean_base}.html" --output-dir "$OUTPUT_DIR"
    fi
done
