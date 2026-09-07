#!/usr/bin/env sh
set -eu

project_dir="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
dist_dir="$project_dir/dist"

rm -rf "$dist_dir"
mkdir -p "$dist_dir/client" "$dist_dir/server"

cp "$project_dir/index.html" "$dist_dir/client/index.html"
cp "$project_dir/styles.css" "$dist_dir/client/styles.css"
cp "$project_dir/script.js" "$dist_dir/client/script.js"
cp "$project_dir/logo.png" "$dist_dir/client/logo.png"
cp "$project_dir/craftiva-logo-horizontal-white.png" "$dist_dir/client/craftiva-logo-horizontal-white.png"
cp "$project_dir/craftiva-logo-stacked-white.png" "$dist_dir/client/craftiva-logo-stacked-white.png"
cp -R "$project_dir/images" "$dist_dir/client/images"
cp -R "$project_dir/products" "$dist_dir/client/products"
cp -R "$project_dir/policies" "$dist_dir/client/policies"
cp "$project_dir/worker.mjs" "$dist_dir/server/index.js"
