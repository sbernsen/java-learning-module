#!/bin/bash

# Exit if any command fails
set -e

# Define the documentation directory
DOCS_DIR="docs"
BUILD_DIR="$DOCS_DIR/_build" 

conda activate java-tutorial

# Remove old build directory
echo "Cleaning old documentation build..."
rm -rf "$BUILD_DIR"

# Build the documentation
echo "Building documentation..."
sphinx-build -b html "$DOCS_DIR" "$BUILD_DIR"

echo "Documentation successfully built! View it by opening:"
echo "$BUILD_DIR/index.html"

