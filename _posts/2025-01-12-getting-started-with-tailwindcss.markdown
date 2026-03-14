---
layout: post
title: "Style Without the Struggle: A TailwindCSS Primer"
slug: getting-started-with-tailwindcss
date: 2025-01-12 10:00:00 -0500
categories: tailwindcss css
---

[TailwindCSS](https://tailwindcss.com) is a utility-first CSS framework that lets you build designs directly in your HTML without writing custom CSS.

## Why Tailwind?

Instead of writing classes like `.card` or `.btn-primary` and defining them in a stylesheet, you compose styles using small, single-purpose utility classes:

```html
<button class="bg-blue-500 text-white font-semibold px-4 py-2 rounded hover:bg-blue-600">
  Click me
</button>
```

No context switching between HTML and CSS, and no unused styles shipped to production.

## How it works in this repo

TailwindCSS v4 is set up using the CLI. The entry stylesheet lives in `assets/css/app.css` and the compiled output is generated at build time via `npm run build` or watched with `npm run watch`.

## Utility classes at a glance

| Category   | Example classes                        |
|------------|----------------------------------------|
| Spacing    | `p-4`, `mt-2`, `mx-auto`              |
| Typography | `text-sm`, `font-semibold`, `leading-6` |
| Color      | `text-gray-400`, `bg-white`           |
| Layout     | `flex`, `grid`, `gap-4`, `max-w-3xl`  |
| States     | `hover:`, `focus:`, `dark:`           |

## Further reading

- [TailwindCSS Docs](https://tailwindcss.com/docs)
- [Utility-First Fundamentals](https://tailwindcss.com/docs/styling-with-utility-classes)
