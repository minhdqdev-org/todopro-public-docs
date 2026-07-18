---
updated_at: 2026-07-19T02:04:50+07:00
---

# TodoPro Public Docs

Customer-facing documentation for TodoPro, published at **https://docs.todopro.xyz**.

This repo holds end-user help content only — getting started, feature guides, FAQ, troubleshooting.
Internal engineering documentation (ADRs, epics, specs, runbooks) lives in a separate repo and is published internally.

## Stack

- [Zensical](https://zensical.org) static site generator (successor to Material for MkDocs)
- Configuration in `zensical.toml`, content in `docs/`
- Served in production by `static-web-server` on port 8080

## Local development

```bash
mise run install   # uv sync
mise run serve     # http://localhost:8000, live reload
mise run build     # static output into ./site
```

Without mise:

```bash
uv sync
uv run zensical serve
```

## Publishing

Pushing to `main` triggers `.github/workflows/ci-prod.yml`, which builds the image and pushes it to
Harbor as `minhdqdev/todopro-public-docs:<VERSION>` and `:latest`.
ArgoCD Image Updater watches the `latest` digest and rolls out the new revision automatically.

**Bump `VERSION` on every change to `main`** so each release gets a distinct immutable tag.

## Writing guidelines

- Second person, short sentences, task-oriented headings.
- Every page needs YAML frontmatter with `title`, `description`, and `updated_at` (ISO 8601, UTC+7).
- Mark Pro-only features with an `!!! info "Pro feature"` admonition.
- Use Mermaid fences for diagrams.
- Link between pages with relative `.md` paths.
- Never reference internal hostnames, internal repos, or engineering jargon.
