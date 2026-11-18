cask "tower-menubar" do
  version "0.4.0"
  # CI replaces version and sha256 when it copies this file into the tap.
  sha256 "76971378f52a7859a566762ba65d59474d600ff0be36b4e5337a811e63fa8877"

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
