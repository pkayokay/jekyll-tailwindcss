---
layout: page
title: Contact
description: Contact description
---

<div class="flex flex-col md:flex-row gap-10 md:gap-16">
  <form class="flex flex-col gap-4 flex-1">
    <div class="flex flex-col gap-1">
      <label for="name">Name</label>
      <input type="text" id="name" name="name" placeholder="Your name">
    </div>
    <div class="flex flex-col gap-1">
      <label for="email">Email</label>
      <input type="email" id="email" name="email" placeholder="you@example.com">
    </div>
    <div class="flex flex-col gap-1">
      <label for="message">Message</label>
      <textarea id="message" name="message" rows="5" placeholder="Your message"></textarea>
    </div>
    <button type="submit" disabled class="bg-neutral-900 text-white rounded-sm px-4 py-2 text-sm font-medium opacity-50 cursor-not-allowed">Send message</button>
  </form>

  <div class="shrink-0">
    <h2>Socials</h2>
    <div class="flex flex-col gap-1">
      {%- for social in site.data.socials -%}
      <a href="{{ social.url }}" target="_blank" rel="noopener noreferrer" class="no-underline! inline-flex items-center gap-3 px-3 py-2 rounded text-sm text-neutral-700! hover:bg-neutral-100 hover:text-neutral-900 transition-colors duration-150">
        {%- if social.name == "GitHub" -%}
        <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="currentColor" class="shrink-0 text-neutral-500"><path d="M12 0C5.37 0 0 5.37 0 12c0 5.3 3.438 9.8 8.205 11.385.6.113.82-.258.82-.577 0-.285-.01-1.04-.015-2.04-3.338.724-4.042-1.61-4.042-1.61-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23A11.509 11.509 0 0 1 12 5.803c1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222 0 1.606-.015 2.898-.015 3.293 0 .319.216.694.825.576C20.565 21.795 24 17.295 24 12c0-6.63-5.37-12-12-12z"/></svg>
        {%- elsif social.name == "Twitter" -%}
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="currentColor" class="shrink-0 text-neutral-500"><path d="M18.244 2.25h3.308l-7.227 8.26 8.502 11.24H16.17l-4.714-6.231-5.401 6.231H2.744l7.737-8.835L1.254 2.25H8.08l4.253 5.622 5.911-5.622zm-1.161 17.52h1.833L7.084 4.126H5.117z"/></svg>
        {%- elsif social.name == "LinkedIn" -%}
        <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 24 24" fill="currentColor" class="shrink-0 text-neutral-500"><path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433a2.062 2.062 0 0 1-2.063-2.065 2.064 2.064 0 1 1 2.063 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/></svg>
        {%- else -%}
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="shrink-0 text-neutral-500"><path d="M10 13a5 5 0 0 0 7.54.54l3-3a5 5 0 0 0-7.07-7.07l-1.72 1.71"/><path d="M14 11a5 5 0 0 0-7.54-.54l-3 3a5 5 0 0 0 7.07 7.07l1.71-1.71"/></svg>
        {%- endif -%}
        {{ social.name }}
      </a>
      {%- endfor -%}
    </div>
  </div>
</div>
