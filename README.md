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

```bash
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export JEKYLL_ENV=production

bash build.sh
```

- Set `JEKYLL_ENV=production`
- Build with `bundle exec jekyll build`
- Set `/_site` as the output directory
