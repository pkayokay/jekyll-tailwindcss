## Minimal Jekyll Setup

Example repo to use Jekyll in a simpler way, without a theme and default liquid tags, configured with TailwindCSS.

## Installation

```bash
bundle install
```

## Development

```bash
bash start.sh # this runs bundle exec jekyll serve --livereload
```

## Deployment

- Set `JEKYLL_ENV=production`
- Build with `bundle exec jekyll build`
- Set `/_site` as the output directory
