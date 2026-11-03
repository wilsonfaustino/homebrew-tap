cask "copilot-runway" do
  version "1.0.1"
  # CI replaces version and sha256 when it copies this file into the tap.
  sha256 "9bd45cb934e87957232d85af377adc6cff8790c6ce064b8e6fdb9e8d2c736c23"

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
