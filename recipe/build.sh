#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

mathjax="$PREFIX/lib/mathjax"
bin_dir="$PREFIX/bin"

mkdir -p "$mathjax"
find . -maxdepth 1 \
    ! -name '.' \
    ! -name '.github' \
    ! -name '.gitignore' \
    ! -name 'build_env_setup.*' \
    ! -name 'conda_build.*' \
    ! -name 'metadata_conda_debug.yaml' \
    -exec cp -r {} "$mathjax/" \;

mkdir -p "${bin_dir}"
cp "${RECIPE_DIR}/mathjax-path" "${bin_dir}/"
chmod +x "${bin_dir}/mathjax-path"