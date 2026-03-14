Jekyll::Hooks.register :site, :post_write do |site|
  unless File.exist?("./node_modules/.bin/tailwindcss") && File.exist?("./node_modules/.bin/esbuild")
    Jekyll.logger.warn "Assets:", "node_modules not found. Run yarn install."
    next
  end

  dest = site.dest
  minify = Jekyll.env == "production"

  Jekyll.logger.info "Assets:", "Building CSS..."
  css_flags = minify ? "--minify" : ""
  system("./node_modules/.bin/tailwindcss -i ./assets/tailwind.css -o #{dest}/assets/styles.css #{css_flags}")

  Jekyll.logger.info "Assets:", "Building JS..."
  js_flags = minify ? "--minify" : ""
  system("./node_modules/.bin/esbuild assets/js/application.js --bundle --outfile=#{dest}/assets/js/bundle.js --format=esm #{js_flags}")
end
