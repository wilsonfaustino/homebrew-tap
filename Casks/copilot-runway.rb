cask "copilot-runway" do
  version "1.0.0"
  # CI replaces version and sha256 when it copies this file into the tap.
  sha256 "bbda137792789026b1aa1b577518a0cc6a4d14365efd007004fe1d672a9e8331"

  url "https://github.com/wilsonfaustino/copilot-runway/releases/download/v#{version}/CopilotRunway-#{version}.zip"
  name "Copilot Runway"
  desc "Menu bar app that shows GitHub Copilot credit runway"
  homepage "https://github.com/wilsonfaustino/copilot-runway"

  depends_on macos: :sequoia

  app "CopilotRunway.app"

  zap trash: [
    "~/.config/copilot-runway",
    "~/Library/Preferences/dev.wilsonfaustino.CopilotRunway.plist",
  ]
end
