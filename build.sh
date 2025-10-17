#!/bin/bash
export JEKYLL_ENV=production
export LC_ALL="C.UTF-8"
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

echo "Starting Jekyll build..."
bundle exec jekyll build
