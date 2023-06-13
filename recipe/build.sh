#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

mathjax="$PREFIX/lib/mathjax"
mkdir -p "$mathjax"
[ $? -ne 0 ] || exit 1

mv config "$mathjax/" || exit 1
mv docs "$mathjax/" || exit 1
mv extensions "$mathjax/" || exit 1
mv fonts "$mathjax/" || exit 1
mv jax "$mathjax/" || exit 1
mv localization "$mathjax/" || exit 1
mv test "$mathjax/" || exit 1
mv unpacked "$mathjax/" || exit 1

rm *.md ".gitignore" ".travis.yml" "bower.json" "composer.json" "latest.js" "package.json" || exit 1
cwd="$(pwd)"
cp -r "$cwd/." "$mathjax/"
cd "$mathjax"
rm *.sh LICENSE
cd "$cwd"

mkdir -p "$PREFIX/bin"
cp "${RECIPE_DIR}/mathjax-path" "$PREFIX/bin/"
chmod +x "$PREFIX/bin/mathjax-path"
