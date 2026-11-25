cask "tower-menubar" do
  version "0.6.0"
  # CI replaces version and sha256 when it copies this file into the tap.
  sha256 "0c00e77b82b5eef5f41ce50698b5cea782984630054a8169e9fc67b12d95adeb"

  url "https://github.com/wilsonfaustino/tower/releases/download/v#{version}/Tower-#{version}.zip"
  name "Tower"
  desc "Menu bar queue of GitHub PRs, Jira tickets and CircleCI pipelines that need you"
  homepage "https://github.com/wilsonfaustino/tower"

  # The cask "tower" (the Git client) also installs Tower.app.
  conflicts_with cask: "tower"
  depends_on macos: :tahoe

  app "Tower.app"

  zap trash: [
    "~/Library/Application Support/Tower",
    "~/Library/Preferences/dev.wilsonfaustino.Tower.plist",
  ]
end
