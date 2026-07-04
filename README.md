# homebrew-delphin

A [Homebrew](https://brew.sh) tap for [Delphin](https://github.com/wuisabel-gif/Delphin) —
a duplex companion for AI agent CLIs: keep talking while it thinks.

## Install

```bash
brew install wuisabel-gif/delphin/delphin
```

Or tap first, then install:

```bash
brew tap wuisabel-gif/delphin
brew install delphin
```

Then wrap your agent:

```bash
delphin --agent claude -- claude
```

## Updating the formula on a new release

1. Bump the `url` tag and recompute the checksum:
   ```bash
   curl -sL https://github.com/wuisabel-gif/Delphin/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
   ```
2. Update `url` and `sha256` in `Formula/delphin.rb`, commit, push.
