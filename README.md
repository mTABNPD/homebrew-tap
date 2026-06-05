# homebrew-tap

mTAB's Homebrew tap. Hosts formulae for mTAB-internal CLIs distributed publicly as signed/notarized macOS binaries.

## Install

```
brew install mTABNPD/tap/halo
brew install mTABNPD/tap/pde
```

The `mTABNPD/tap` short tap name resolves to this repository (`mTABNPD/homebrew-tap`).

## Update

```
brew upgrade halo
brew upgrade pde
```

## Available formulae

| Formula | Description | Source |
|---|---|---|
| `halo` | CLI for the Halo platform | [mTABNPD/halo-platform-cli](https://github.com/mTABNPD/halo-platform-cli) |
| `pde` | Internal mTAB developer CLI | [mTABNPD/mtab-pde-cli](https://github.com/mTABNPD/mtab-pde-cli) |

## Platforms

Currently arm64 macOS only. Intel Mac and other platforms will be added as each CLI's release pipeline expands.
