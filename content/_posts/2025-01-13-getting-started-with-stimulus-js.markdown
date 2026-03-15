---
title: "A Better Way to Work with JavaScript Using Stimulus"
slug: javascript-using-stimulus
date: 2025-01-13 10:00:00 -0500
categories: stimulus javascript
---

[Stimulus](https://stimulus.hotwired.dev){:target="_blank" rel="noopener noreferrer"} is a lightweight JavaScript framework designed to enhance server-rendered HTML. Rather than managing state and rendering views client-side, Stimulus connects JavaScript controllers to elements that already exist on the page.

## Core concepts

Stimulus revolves around three things: **controllers**, **targets**, and **actions**.

| Concept    | HTML attribute          | Purpose                                      |
|------------|-------------------------|----------------------------------------------|
| Controller | `data-controller`       | Connects an element to a JS controller class |
| Target     | `data-[controller]-target` | References an element inside a controller |
| Action     | `data-action`           | Wires DOM events to controller methods       |

## A simple example

Here's a controller that toggles a menu open and closed:

```html
<div data-controller="menu">
  <button data-action="click->menu#toggle">Open</button>
  <ul data-menu-target="list" class="hidden">
    <li>Item one</li>
    <li>Item two</li>
  </ul>
</div>
```

```js
// controllers/menu_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["list"]

  toggle() {
    this.listTarget.classList.toggle("hidden")
  }
}
```

No manual `querySelector`, no event listener boilerplate — Stimulus handles the wiring automatically when the element appears in the DOM.

## How it works in this repo

Controllers live in `_assets/js/controllers/` and are registered in `_assets/js/app.js`. esbuild bundles everything into `assets/app.js` at build time.

## Further reading

- [Stimulus Handbook](https://stimulus.hotwired.dev/handbook/introduction){:target="_blank" rel="noopener noreferrer"}
- [Reference: Controllers](https://stimulus.hotwired.dev/reference/controllers){:target="_blank" rel="noopener noreferrer"}
- [Reference: Actions](https://stimulus.hotwired.dev/reference/actions){:target="_blank" rel="noopener noreferrer"}
