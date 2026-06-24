# homebrew-tap

mTAB's Homebrew tap. Hosts formulae for mTAB-internal CLIs distributed publicly as signed/notarized macOS binaries.

## Install

```
brew install mTABNPD/tap/halo
brew install mTABNPD/tap/pde
```

The `mTABNPD/tap` short tap name resolves to this repository (`mTABNPD/homebrew-tap`).

These fully-qualified install commands work as-is under Homebrew 6.0's [tap trust](https://docs.brew.sh/Tap-Trust) — installing a `user/repo/formula` by its full name does not require pre-trusting the tap.

## Update

```
brew upgrade halo
brew upgrade pde
```

Homebrew 6.0 gates `brew upgrade` (and `brew bundle`) on explicit tap trust, since they re-evaluate the formula. Trust this tap once to keep upgrades seamless:

```
brew trust mTABNPD/tap
```

Trust is a per-machine decision recorded in your local Homebrew trust registry; there is nothing we can ship in this repo to pre-trust it on your behalf — that's by design.

## Automated / team setup

For provisioning scripts and shared environments, use the [`Brewfile`](Brewfile) in this repo, which declares the tap as trusted inline:

```
brew bundle --file=Brewfile
```

## Available formulae

| Formula | Description | Source |
|---|---|---|
| `halo` | CLI for the Halo platform | [mTABNPD/halo-platform-cli](https://github.com/mTABNPD/halo-platform-cli) |
| `pde` | Internal mTAB developer CLI | [mTABNPD/mtab-pde-cli](https://github.com/mTABNPD/mtab-pde-cli) |

## Platforms

Currently arm64 macOS only. Intel Mac and other platforms will be added as each CLI's release pipeline expands.
