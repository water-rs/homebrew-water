# Homebrew Tap: `water-rs/water`

This is the Homebrew tap for the WaterUI CLI (`water`).

## Install

```bash
brew tap water-rs/water
brew install water
```

Upgrade:

```bash
brew update
brew upgrade water
```

## Usage

```bash
water --help
```

## Notes

- The `water` formula installs the `waterui-cli` binary from GitHub Releases in `water-rs/waterui`.
- If you previously installed from Cargo, you may want to remove it to avoid PATH conflicts:

```bash
cargo uninstall waterui-cli || true
```
