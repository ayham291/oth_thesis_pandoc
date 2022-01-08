#!/bin/sh

file=$(readlink -f "$1")
base="${file%.*}"

pandoc $file --filter pandoc-crossref --citeproc --template=templates/oth_template.tex -o "$base".pdf --listings
