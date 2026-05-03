---
title: "Hugo"
date: 2026-05-03T00:00:00+00:00
description: "Kana for Hugo — a warm, earthy dark theme for personal blogs and portfolio sites."
type: page
---

![A screenshot of the homepage of a site built with Kana's Hugo theme](/images/hugo.png)

Kana for Hugo is the theme powering this very site. It is a warm, earthy dark theme built for personal blogs, reading libraries, and short-form notes — with client-side search, responsive images, and Gruvbox syntax highlighting included out of the box.

## Features

- **Dark theme** — warm Gruvbox-inspired palette tuned for long reading and writing sessions
- **Client-side search** — no server required; indexes titles, tags, categories, and content
- **Reading library** — filterable, sortable book list with per-year statistics
- **Notes** — short-form content with its own RSS feed and paginated archive
- **Responsive images** — automatic WebP conversion, srcset generation, and lazy loading
- **Syntax highlighting** — Gruvbox theme with collapsible blocks and filename labels
- **SEO** — Open Graph, Twitter Cards, Schema.org structured data, canonical URLs
- **RSS** — site-wide feed plus a per-section feed for notes
- **Sitemap** and **robots.txt** included

## Requirements

- [Hugo](https://gohugo.io) extended, v0.152.0 or later

## Installation

### As a Hugo Module (recommended)

Initialize modules in your site if you have not already:

```sh
hugo mod init github.com/your-username/your-site
```

Add the theme to `hugo.toml`:

```toml {file="hugo.toml"}
theme = "github.com/ChrisWiegman/kana-hugo-theme"
```

Fetch the module:

```sh
hugo mod get github.com/ChrisWiegman/kana-hugo-theme
```

### As a Git Submodule

```sh
git submodule add https://github.com/ChrisWiegman/kana-hugo-theme themes/kana-hugo-theme
```

Then set the theme in `hugo.toml`:

```toml {file="hugo.toml"}
theme = "kana-hugo-theme"
```

### Manual Copy

Download or clone the repository and copy it into your site's `themes/kana-hugo-theme` directory.

## Configuration

### Minimal Configuration

```toml {file="hugo.toml"}
theme = "github.com/ChrisWiegman/kana-hugo-theme"

[params]
mainSections = ["posts"]
description  = "Your site description"

[outputs]
home = ["HTML", "RSS", "JSON"]
```

The `JSON` output on `home` is required for client-side search to work. For a complete working example, see [`dev/hugo.toml`](https://github.com/ChrisWiegman/kana-hugo-theme/blob/main/dev/hugo.toml) in the repository.

### Theme Parameters

| Parameter | Type | Description |
|---|---|---|
| `author` | string | Author name used as `dc:creator` in RSS feeds |
| `description` | string | Site description for meta tags |
| `subtitle` | string | Subtitle appended to the homepage title tag |
| `mainSections` | string[] | Content sections shown on the homepage and in RSS |
| `headerIcon` | string | Path (relative to `assets/`) to the header icon |
| `imageSizes` | int[] | Image widths (px) to generate in srcset |
| `OpenGraph` | bool | Emit Open Graph meta tags |
| `TwitterCards` | bool | Emit Twitter Card meta tags |
| `policies` | string | Path to a policies page linked in the footer |

## Content Types

### Posts

Standard blog posts with categories, tags, and Open Graph images.

### Notes

Short-form content with its own paginated archive and RSS feed at `/notes/index.xml`. Notes are grouped by year.

### Books (Library)

A reading library with interactive filtering by year, author, and rating — plus statistics on books read per year, top authors, and rating distribution. Add a `content/library.md` page with `layout: library` to activate it.

### Search

Add a `content/search.md` page with `layout: search`. The search index is built from the JSON output on the homepage and runs entirely client-side.

## Syntax Highlighting

Code blocks support a `file` attribute for a filename label, a `details` attribute for collapsible blocks, and Gruvbox highlighting for 200+ languages:

````markdown
```go {file="main.go"}
package main

import "fmt"

func main() {
    fmt.Print("Hello, Kana!\n")
}
```
````

Which renders as:

```go {file="main.go"}
package main

import "fmt"

func main() {
    fmt.Print("Hello, Kana!\n")
}
```

## Source

The theme source is on [GitHub](https://github.com/ChrisWiegman/kana-hugo-theme). Issues and pull requests are welcome.
