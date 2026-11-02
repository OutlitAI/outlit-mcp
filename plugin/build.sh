#!/bin/sh
# Builds dist/outlit-plugin-<version>.zip with plugin.json at the archive root.
set -eu
cd "$(dirname "$0")"
version=$(python3 -I -c 'import json; print(json.load(open("plugin.json"))["version"])')
mkdir -p dist
rm -f "dist/outlit-plugin-$version.zip"
zip -q -X -r "dist/outlit-plugin-$version.zip" plugin.json mcp.json assets
echo "dist/outlit-plugin-$version.zip"
