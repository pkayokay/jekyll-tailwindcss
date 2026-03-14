---
layout: page
title: "Contact"
description: "Contact"
---

<div class="flex gap-12">
  <form class="flex flex-col gap-4 flex-1 max-w-md">
    <div class="flex flex-col gap-1">
      <label for="name">Name</label>
      <input type="text" id="name" name="name" placeholder="Your name" class="border border-neutral-300 rounded px-3 py-2">
    </div>
    <div class="flex flex-col gap-1">
      <label for="email">Email</label>
      <input type="email" id="email" name="email" placeholder="you@example.com" class="border border-neutral-300 rounded px-3 py-2">
    </div>
    <div class="flex flex-col gap-1">
      <label for="message">Message</label>
      <textarea id="message" name="message" rows="5" placeholder="Your message" class="border border-neutral-300 rounded px-3 py-2"></textarea>
    </div>
    <button type="submit" disabled class="bg-neutral-900 text-white rounded px-4 py-2 opacity-50 cursor-not-allowed">Send message</button>
  </form>

  <div>
    <h2>Socials</h2>
    <ul class="space-y-0.5!">
      {%- for social in site.data.socials -%}
      <li><a href="{{ social.url }}" target="_blank" class="no-underline!">{{ social.name }}</a></li>
      {%- endfor -%}
    </ul>
  </div>
</div>
