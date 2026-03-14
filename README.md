## Jekyll TailwindCSS Starter

Example repo to use Jekyll in a simpler way, without a theme and default liquid tags, configured with TailwindCSS.

## Prerequisites

- Ruby 3.x or higher
- Bundler 2.5.23+
- Jekyll ~> 4.4.1

## Installation

Install Bundler and Jekyll:

```bash
gem install bundler jekyll
```

Clone the repo, then install dependencies:

```bash
bundle install
```

## Development

Start the local dev server with live reload at `http://localhost:4000`:

```bash
bash start.sh
```

To use a different port, pass it as an argument:

```bash
bash start.sh 4001
```

## Asset Pipeline

CSS and JavaScript are compiled automatically by `_plugins/compile_assets.rb`, which runs after every Jekyll build. No separate build step or watcher is needed.

| Source | Tool | Output |
|---|---|---|
| `_assets/css/tailwind.css` | Tailwind CSS | `_site/assets/styles.css` |
| `_assets/js/application.js` | esbuild | `_site/assets/js/website.js` |

Source files live in `_assets/` so Jekyll watches them for changes but does not copy them verbatim to `_site` — only the compiled output lands there. In production, assets are minified automatically when `JEKYLL_ENV=production` is set.

> **Note:** JavaScript dependencies (e.g. Stimulus) are still managed via `package.json` and must be installed with `yarn install`. Compilation itself is handled by the Ruby plugin — there are no npm build scripts.

## Deployment

1. Set `/_site` as the output directory
2. Run the build command:

```bash
bash build.sh
```
