require "securerandom"

# Generates a random hex UID once per build and exposes it as `site.config['asset_uid']`.
# Used by _includes/css.html and _includes/js.html for cache-busting.
Jekyll::Hooks.register :site, :after_init do |site|
  site.config["asset_uid"] = SecureRandom.hex(8)
end
