# GitHub Actions

This repo publishes a Hugo site to Cloudflare Workers. This file is a map
of what runs, when, and why.

## Shared composite action

Steps repeated across workflows live in `.github/actions/` so there's one
place to bump a version or fix a bug:

| Action | What it does | Used by |
| --- | --- | --- |
| [`setup-deps`](../actions/setup-deps/action.yml) | Installs Node LTS with npm caching, runs `npm ci`, and puts `node_modules/.bin` on `PATH`. With `build-site: "true"` it also installs Hugo, restores the `resources`/`.hugo_cache` build cache, and runs `hugo --gc --minify` — Hugo's asset pipeline needs the Node deps, so the two live together | `deploy.yml`, `ping.yml`, `link-check.yml` |

It assumes the repo has already been checked out by the calling workflow
(checkout options like `submodules`/`fetch-depth`/`ref` differ per
workflow, so that step stays in each workflow).

`.github/dependabot.yml` watches both the workflow files and the
composite action's directory for upstream Action version bumps (weekly,
grouped into one PR).

## Workflows

### `deploy.yml` — Deploy to Cloudflare Workers
- **Triggers:** push to `main` (ignoring paths that can't affect the
  built site — docs, tooling config); manual dispatch; `workflow_call`.
- **Does:** builds the Hugo site, then `npx wrangler deploy`.
- **Secrets:** `CLOUDFLARE_API_TOKEN`, `CLOUDFLARE_ACCOUNT_ID`.
- **Then:** triggers `ping.yml` on success.

### `ping.yml` — Ping update services
- **Triggers:** manual dispatch; `workflow_call` (only ever called by
  `deploy.yml`, via `secrets: inherit`).
- **Does:** notifies Ping-O-Matic and PubSubHubbub that the feed changed,
  then builds an IndexNow payload from the most-recently-committed pages
  (via `hugo list all` + each page's last git commit date) and submits it
  to IndexNow.
- **Secrets:** `INDEXNOW_KEY`.

### `link-check.yml` — Check for Broken Links
- **Triggers:** manual dispatch.
- **Does:** builds the site, runs `lychee` (configured by `lychee.toml`)
  against the rendered HTML in `./public`, uploads the report as a
  workflow artifact, and — only if lychee found a broken link — opens or
  comments on the `broken-links` issue with the report.
- **Permissions:** needs `issues: write` (not just the default
  `contents: read`) for the create/comment step.

## Notes on maintenance

- All third-party actions are pinned to major-version tags (e.g. `@v7`),
  so patch/minor updates land automatically; Dependabot handles major
  bumps as PRs to review.
- `setup-deps` installs the latest extended Hugo release with
  `peaceiris/actions-hugo`. To pin a version, change `hugo-version`
  there.
- `deploy.yml`'s `paths-ignore` and this doc should stay in sync with
  each other if the ignore list changes.
