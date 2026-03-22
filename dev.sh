#!/bin/bash

PORT=${1:-4000}
LIVERELOAD_PORT=${2:-35729}

echo "Installing dependencies..."
bundle install
yarn install

echo "Starting Jekyll development server with live reload on port $PORT..."
bundle exec jekyll serve --livereload --port $PORT --livereload-port $LIVERELOAD_PORT
