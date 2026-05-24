# homebrew-porteria

A [Homebrew](https://brew.sh) tap for [PorterIA](https://github.com/JVLegend/PorterIA) — macOS menu bar utility that shows which process owns each listening TCP port.

## Install

```sh
brew tap jvlegend/porteria
brew install --cask porteria
```

## Uninstall

```sh
brew uninstall --cask porteria
# or, to also wipe preferences/caches:
brew uninstall --zap --cask porteria
```

## Upgrade

```sh
brew upgrade --cask porteria
```

`brew` will auto-detect new versions via the cask's `livecheck` stanza pointing at GitHub Releases.
