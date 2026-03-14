#!/bin/bash

PORT=${1:-4000}

echo "Starting Jekyll development server with live reload on port $PORT..."
bundle exec jekyll serve --livereload --port $PORT
