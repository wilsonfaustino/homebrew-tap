# homebrew-tap

Homebrew tap for [Copilot Runway](https://github.com/wilsonfaustino/copilot-runway), a macOS menu bar app that shows GitHub Copilot credit runway.

Install:

```sh
brew install --cask wilsonfaustino/tap/copilot-runway
```

The app is ad-hoc signed and not notarized. On first launch, click "Open Anyway" in System Settings > Privacy & Security, or run `xattr -dr com.apple.quarantine /Applications/CopilotRunway.app`.
