# homebrew-tap

Homebrew tap for macOS menu bar apps.

Homebrew refuses to load a cask from a third-party tap until you trust the tap. Run this once:

```sh
brew trust wilsonfaustino/tap
```

## Copilot Runway

[Copilot Runway](https://github.com/wilsonfaustino/copilot-runway) shows GitHub Copilot credit runway.

Install:

```sh
brew install --cask wilsonfaustino/tap/copilot-runway
```

The app is ad-hoc signed and not notarized. On first launch, click "Open Anyway" in System Settings > Privacy & Security, or run `xattr -dr com.apple.quarantine /Applications/CopilotRunway.app`.

## Tower

[Tower](https://github.com/wilsonfaustino/tower) shows the GitHub PRs, Jira tickets and CircleCI pipelines that need you.

Install:

```sh
brew install --cask wilsonfaustino/tap/tower-menubar
```

The app is Developer ID signed and notarized. It needs macOS 26 and the `gh` CLI signed in. The cask conflicts with the `tower` cask (the Tower Git client), because both install Tower.app.
