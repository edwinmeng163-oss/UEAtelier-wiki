# UEAtelier Wiki

Trilingual (EN / 简体中文 / 日本語) project wiki for [UEAtelier](https://github.com/edwinmeng163-oss/UEAtelier), published with [Quartz 5](https://quartz.jzhao.xyz) via GitHub Pages:

**https://edwinmeng163-oss.github.io/UEAtelier-wiki/**

## How it works

- Content is authored in a local Obsidian vault and mirrored into `content/` by [`sync-vault.sh`](./sync-vault.sh), which strips machine-local paths from note frontmatter and turns `Welcome.md` into the site's `index.md`.
- Every push to `main` rebuilds and deploys the site through [`.github/workflows/deploy.yml`](./.github/workflows/deploy.yml).

## Updating the wiki

```bash
./sync-vault.sh
git add -A && git commit -m "sync vault" && git push
```

## Updating Quartz

This repo is a clone of [jackyzha0/quartz](https://github.com/jackyzha0/quartz) with the framework kept intact (`upstream` remote). Run `npx quartz upgrade` to pull framework updates; upstream's own CI workflows were removed and may need re-removing after a merge.
