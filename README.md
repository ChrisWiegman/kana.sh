# kana.sh

This repo contains the source code for https://kana.sh built with [Hugo](https://gohugo.io) on [Cloudflare Workers](https://workers.cloudflare.com)

## Git hooks

This repo uses a pre-commit hook to block staged files larger than 25 MB (Cloudflare Workers limit). Enable it with:

```sh
make hooks
```
