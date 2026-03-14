#!/bin/bash

PORT=${1:-4000}

echo "Installing JS dependencies..."
yarn install --frozen-lockfile

echo "Starting Jekyll development server with live reload on port $PORT..."
bundle exec jekyll serve --livereload --port $PORT
