# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Personal academic portfolio site for Yanwen Xu, built with [Zola](https://www.getzola.org/) (a Rust-based static site generator) using the [Apollo](https://github.com/not-matthias/apollo) theme as a git submodule.

## Commands

Use the latest Zola (0.23 or newer; CI is not pinned). Templates use Tera v2: components (`{% component %}` / `{{<name arg={value} />}}`) instead of macros, and `?.` for fields that may be undefined (e.g. `page.extra?.github`).

- **Build site:** `zola build`
- **Dev server:** `zola serve --interface 0.0.0.0 --port 8080 --base-url localhost`
- **Check internal links:** `zola check --skip-external-links`
- **Check internal and external links:** `zola check`
- **Format templates:** `npx prettier --write templates/` (uses prettier-plugin-jinja-template)
- **Clean build artifacts:** `rm -rf public`

## Deployment

Pushes to `main` auto-deploy via GitHub Actions (`.github/workflows/deploy.yml`) using `shalzz/zola-deploy-action@master`, which tracks the latest Zola release.

## Architecture

### Content structure

All content lives in `content/` as Markdown files with TOML frontmatter (`+++` delimiters):

- `_index.md` — homepage (uses `template = "homepage.html"`, contains inline HTML/CSS for the hero section)
- `projects/` — research project cards, sorted by `weight`. Each project is a directory with co-located assets (`index.md` + images).
- `publications/` — structured publication entries, sorted by `weight`. Each publication has frontmatter with `authors`, `venue`, `year`, `pdf`, `doi`, etc.
- `games/` — game portfolio entries, rendered by `talks.html` (uses `[extra]` `video = { link, thumbnail_quality }` and `code`)
- `teaching.md` — teaching info (standalone page)

### Templates

Templates live in `templates/` and override the Apollo theme's file of the same path:

- **`homepage.html`** — hero (avatar resized to WebP via `resize_image()`) plus `_index.md` content
- **`cards.html`** — grid layout for sections (projects). Supports `local_image`, `remote_image`, `local_video`, `remote_video` in page `[extra]`. Relative `local_image` paths resolve against the page's own directory. Converts non-GIF images to WebP at 2x the card height via `resize_image()` (always pass `quality`: Zola's WebP output is lossless without it).
- **`publications.html`** — publication list with structured metadata (authors, venue, links)
- **`talks.html`** — override of Apollo's talk/video grid with YouTube thumbnail extraction and responsive srcset; used by the games section
- **`sitemap.xml`** — Zola's default sitemap minus pages flagged `extra.noindex`
- **`base.html`** — Apollo's base layout plus the site footer
- **`apollo/head_end.html`** — Apollo's hook for extra `<head>` tags: resized `og:image`, favicon (cut from `og_image` unless `extra.favicon` is set), canonical URL, `noindex` handling, homepage JSON-LD `Person` built from `config.extra.socials`
- **`partials/nav.html`** — Apollo's nav, with PDF menu links opening in a new tab
- **`page.html`** — individual page layout with optional header image, date, tags, authors

### Theme

Apollo theme is a git submodule at `themes/apollo`. Clone with `--recurse-submodules` or run `git submodule update --init --recursive`.

### Content page frontmatter extras

Project cards use these `[extra]` fields: `local_image`, `remote_image`, `local_video`, `remote_video`, `link_to`, `github`, `demo`, `tags`.

Set `noindex = true` in `[extra]` on pages that only feed a list or card view and have no body of their own (all publications, most projects). They still build, but get `<meta name="robots" content="noindex">` and are left out of the sitemap. Do not use `render = false` for this: it removes the page from `section.pages`, emptying the lists.

### Static assets

`static/` contains site-wide images, PDFs (publications, CV), and `processed_images/`. Project images are co-located with their content in `content/projects/*/`. Images referenced in templates are auto-processed by Zola's `resize_image()` into WebP.

## Config

`config.toml` defines: base URL, Sass compilation, Apollo theme, nav menu items, and social links. The `[extra]` section controls theme toggle and site navigation. `[extra.analytics]` must stay defined (Apollo's header reads it unconditionally).
