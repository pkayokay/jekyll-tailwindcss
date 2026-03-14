#!/bin/bash

PORT=${1:-4000}

echo "Installing JS dependencies..."
yarn install --frozen-lockfile

echo "Building CSS and JS..."
yarn build:css
yarn build:js

echo "Starting CSS and JS watchers..."
yarn watch:css &
CSS_PID=$!
yarn watch:js &
JS_PID=$!

trap "kill $CSS_PID $JS_PID" EXIT

echo "Starting Jekyll development server with live reload on port $PORT..."
bundle exec jekyll serve --livereload --port $PORT
