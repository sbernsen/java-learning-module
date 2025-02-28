#!/bin/bash

# Exit immediately if a command fails
set -e

# Define variables
ENV_NAME="java-tutorial"
DOCS_SOURCE="docs/source"
DOCS_BUILD="docs/build/html"
GITHUB_REPO="git@github.com:sbernsen/java-learning-module.git"

# Activate Conda environment
echo "Activating Conda environment..."
source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate "$ENV_NAME"

# Clean old build
echo "Cleaning previous build..."
rm -rf "$DOCS_BUILD"

# Build documentation
echo "Building Sphinx documentation..."
sphinx-build -b html "$DOCS_SOURCE" "$DOCS_BUILD"

# Ensure GitHub Pages Can Find Docs
touch "$DOCS_BUILD/.nojekyll"

# Commit built documentation
echo "Committing built documentation..."
git add "$DOCS_BUILD"
git commit -m "Update built documentation [skip ci]" || echo "No changes to commit"
git push origin main

echo "Documentation successfully deployed to GitHub Pages!"

# Deactivate Conda environment
conda deactivate
