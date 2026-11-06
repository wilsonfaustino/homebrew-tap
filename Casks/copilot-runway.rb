cask "copilot-runway" do
  version "1.1.0"
  # CI replaces version and sha256 when it copies this file into the tap.
  sha256 "2c35b8596a429a723e38e9250dc4a111ac5780fa6cc312dcf096865121ae2528"

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
