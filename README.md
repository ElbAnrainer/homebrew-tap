# Homebrew tap for NetScanTW

[NetScanTW](https://elbanrainer.github.io/netscantw-site/) scans and checks your local network on the Mac: devices, ports, ping, traceroute, DNS, Wi-Fi, speed test, and more. It comes with the `netscan` command-line tool.

## Install

```sh
brew install --cask elbanrainer/tap/netscantw
```

This installs `NetScanTW.app`, the `netscan` command, its man page (`man netscan`), and zsh completion. Needs macOS 15 Sequoia or later, on Apple silicon or Intel.

Update with `brew upgrade --cask netscantw`. Remove with `brew uninstall --cask netscantw` (add `--zap` to remove its data too).

The app is signed with a Developer ID and notarized by Apple. NetScanTW is also in the Mac App Store; that edition is a separate app with its own data, so install only one of them.

## Support

https://elbanrainer.github.io/netscantw-site/
