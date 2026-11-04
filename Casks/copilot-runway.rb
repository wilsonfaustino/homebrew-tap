cask "copilot-runway" do
  version "1.0.2"
  # CI replaces version and sha256 when it copies this file into the tap.
  sha256 "9a2c53589c3af6dec63fb3dc3ca31c968c7aee458c7d6bef3a4ae90c41070bd9"

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
