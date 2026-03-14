#!/bin/bash

PORT=${1:-4000}

echo "Installing JS dependencies..."
yarn install --frozen-lockfile

echo "Building JS..."
yarn build:js

echo "Starting JS watcher..."
yarn watch:js &
ESBUILD_PID=$!

trap "kill $ESBUILD_PID" EXIT

echo "Starting Jekyll development server with live reload on port $PORT..."
bundle exec jekyll serve --livereload --port $PORT
