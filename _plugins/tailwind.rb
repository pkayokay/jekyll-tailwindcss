Jekyll::Hooks.register :site, :post_write do |site|
  unless File.exist?("./node_modules/.bin/tailwindcss")
    Jekyll.logger.warn "Tailwind:", "node_modules not found. Run yarn install."
    next
  end

  output = File.join(site.dest, "assets", "styles.css")
  flags = Jekyll.env == "production" ? "--minify" : ""
  Jekyll.logger.info "Tailwind:", "Building CSS..."
  system("./node_modules/.bin/tailwindcss -i ./assets/tailwind.css -o #{output} #{flags}")
end
