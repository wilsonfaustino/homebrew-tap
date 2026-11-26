cask "tower-menubar" do
  version "0.8.0"
  # CI replaces version and sha256 when it copies this file into the tap.
  sha256 "2a89611b026a2b490070d05d3df0a26b8bdf352acfde99f839b131ab57c0b3c1"

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
