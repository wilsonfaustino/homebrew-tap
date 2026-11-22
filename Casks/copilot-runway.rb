cask "copilot-runway" do
  version "1.6.0"
  # CI replaces version and sha256 when it copies this file into the tap.
  sha256 "538c7cfa28ef6d2a73b7694ee5e8e0f84c052ccd31345f1262b7d724068143cb"

  url "https://github.com/wilsonfaustino/copilot-runway/releases/download/v#{version}/CopilotRunway-#{version}.zip"
  name "Copilot Runway"
  desc "Menu bar app that shows GitHub Copilot credit runway"
  homepage "https://github.com/wilsonfaustino/copilot-runway"

  depends_on macos: :tahoe

  app "CopilotRunway.app"

  zap trash: [
    "~/.config/copilot-runway",
    "~/Library/Preferences/dev.wilsonfaustino.CopilotRunway.plist",
  ]
end
