# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Personal academic portfolio site for Yanwen Xu, built with [Zola](https://www.getzola.org/) (a Rust-based static site generator) using the [Apollo](https://github.com/not-matthias/apollo) theme as a git submodule.

## Commands

Zola is not installed locally; use podman with the container image:

- **Build site:** `podman run -v $PWD:/app:Z --workdir /app ghcr.io/getzola/zola:v0.19.1 build`
- **Dev server:** `podman run -v $PWD:/app:Z --workdir /app -p 8080:8080 ghcr.io/getzola/zola:v0.19.1 serve --interface 0.0.0.0 --port 8080 --base-url localhost`
- **Check links:** `podman run -v $PWD:/app:Z --workdir /app ghcr.io/getzola/zola:v0.19.1 check`
- **Format templates:** `npx prettier --write templates/` (uses prettier-plugin-jinja-template)
- **Clean build artifacts:** `podman unshare rm -rf public` (needed since podman builds as root)

## Deployment

Pushes to `main` auto-deploy via GitHub Actions (`.github/workflows/deploy.yml`) using `shalzz/zola-deploy-action@v0.21.0`.

## Architecture

### Content structure

All content lives in `content/` as Markdown files with TOML frontmatter (`+++` delimiters):

- `_index.md` — homepage (uses `template = "homepage.html"`, contains inline HTML/CSS for the hero section)
- `projects/` — research project cards, sorted by `weight`. Each project is a directory with co-located assets (`index.md` + images).
- `publications/` — structured publication entries, sorted by `weight`. Each publication has frontmatter with `authors`, `venue`, `year`, `pdf`, `doi`, etc.
- `games/` — game portfolio cards
- `teaching.md` — teaching info (standalone page)

### Templates

Templates extend the Apollo theme's `base.html` and live in `templates/`:

- **`homepage.html`** — renders `_index.md` content directly
- **`cards.html`** — grid layout for sections (projects). Implements column-balanced reordering so items fill columns evenly. Supports `local_image`, `remote_image`, `local_video`, `remote_video` in page `[extra]`. Converts non-GIF images to WebP via `resize_image()`.
- **`publications.html`** — publication list with structured metadata (authors, venue, links)
- **`talks.html`** — talk/video grid with YouTube thumbnail extraction and responsive srcset
- **`page.html`** — individual page layout with optional header image, date, tags, authors
- **`shortcodes/avatar.html`** — WebP avatar processing shortcode

### Theme

Apollo theme is a git submodule at `themes/apollo`. Clone with `--recurse-submodules` or run `git submodule update --init --recursive`.

### Content page frontmatter extras

Project/game cards use these `[extra]` fields: `local_image`, `remote_image`, `local_video`, `remote_video`, `link_to`, `github`, `demo`, `tags`.

### Static assets

`static/` contains site-wide images, PDFs (publications, CV), and `processed_images/`. Project images are co-located with their content in `content/projects/*/`. Images referenced in templates are auto-processed by Zola's `resize_image()` into WebP.

## Config

`config.toml` defines: base URL, Sass compilation, Apollo theme, nav menu items, and social links. The `[extra]` section controls theme toggle and site navigation.
