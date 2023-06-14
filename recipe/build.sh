#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

mathjax="$PREFIX/lib/mathjax"
mkdir -p "$mathjax"

rm -f *.md .gitignore .travis.yml bower.json composer.json latest.js package.json metadata_conda_debug.yaml
cp -r . "$mathjax/"
rm $mathjax/*.sh "$mathjax/LICENSE"

mkdir -p "$PREFIX/bin"
cp "${RECIPE_DIR}/mathjax-path" "$PREFIX/bin/"
chmod +x "$PREFIX/bin/mathjax-path"

