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

## Deployment

1. Set `/_site` as the output directory
2. Run the build command:

```bash
bash build.sh
```
