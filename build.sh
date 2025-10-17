#!/bin/bash
export JEKYLL_ENV=production

echo "Starting Jekyll build..."
bundle exec jekyll build
