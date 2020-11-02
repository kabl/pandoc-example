#!/bin/bash

INPUT_FILE='README.md'
TEMPLATE="template.yaml"
STYLE="zenburn"
OUTPUT_DIR="generated"

pandoc $INPUT_FILE -t beamer -o $OUTPUT_DIR/presentation.pdf \
    --metadata-file=$TEMPLATE \
    --highlight-style=$STYLE

pandoc $INPUT_FILE -t latex -o $OUTPUT_DIR/document.pdf \
    --metadata-file=$TEMPLATE \
    --highlight-style=$STYLE -V geometry:a4paper

pandoc $INPUT_FILE -t html5 -o $OUTPUT_DIR/website.html \
    --metadata-file=$TEMPLATE \
    --highlight-style=$STYLE

pandoc $INPUT_FILE -t pptx -o $OUTPUT_DIR/presentation.pptx \
    --metadata-file=$TEMPLATE \
    --highlight-style=$STYLE

pandoc $INPUT_FILE -t docx -o $OUTPUT_DIR/document.docx \
    --metadata-file=$TEMPLATE \
    --highlight-style=$STYLE