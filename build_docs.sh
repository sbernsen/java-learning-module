#!/bin/bash

# Exit immediately if a command fails
set -e

# Define variables
ENV_NAME="java-docs"
DOCS_SOURCE="docs/source"
DOCS_BUILD="docs/build/html"
GITHUB_REPO="git@github.com:your-username/your-repo.git"

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

# Deploy to GitHub Pages
echo "Deploying to GitHub Pages..."
cd "$DOCS_BUILD"
git init
git remote add origin "$GITHUB_REPO"
git checkout -b gh-pages
git add .
git commit -m "Deploy latest docs"
git push --force origin gh-pages

echo "Documentation successfully deployed to GitHub Pages!"

# Deactivate Conda environment
conda deactivate
