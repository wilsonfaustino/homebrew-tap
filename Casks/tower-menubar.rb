cask "tower-menubar" do
  version "0.7.0"
  # CI replaces version and sha256 when it copies this file into the tap.
  sha256 "a042944ca1c4c9546ea717389460f4022230a9ad8be80cb4d3ecccd335212eb4"

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
