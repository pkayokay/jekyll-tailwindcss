#!/bin/bash
export JEKYLL_ENV=production
export LC_ALL="C.UTF-8"
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

echo "Installing dependencies..."
yarn install --frozen-lockfile

echo "Building CSS and JS..."
yarn build:css
yarn build:js

echo "Starting Jekyll build..."
bundle exec jekyll build
