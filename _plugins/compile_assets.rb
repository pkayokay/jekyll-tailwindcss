# Runs after Jekyll writes the site to _site on every build.
# This is what triggers CSS and JS compilation during `jekyll serve`,
# so Jekyll's built-in livereload picks up the changes automatically.
Jekyll::Hooks.register :site, :post_write do |site|
  # Bail early if npm dependencies haven't been installed.
  unless File.exist?("./node_modules/.bin/tailwindcss") && File.exist?("./node_modules/.bin/esbuild")
    Jekyll.logger.warn "Assets:", "node_modules not found. Run yarn install."
    next
  end

  # Write compiled assets directly to _site so Jekyll doesn't need to copy them.
  dest = site.dest
  minify = Jekyll.env == "production"

  Jekyll.logger.info "Assets:", "Building CSS..."
  css_flags = minify ? "--minify" : ""
  system("./node_modules/.bin/tailwindcss -i ./assets/tailwind.css -o #{dest}/assets/styles.css #{css_flags}")

  Jekyll.logger.info "Assets:", "Building JS..."
  js_flags = minify ? "--minify" : ""
  system("./node_modules/.bin/esbuild assets/js/application.js --bundle --outfile=#{dest}/assets/js/website.js --format=esm #{js_flags}")
end
