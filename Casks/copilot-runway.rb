cask "copilot-runway" do
  version "1.2.0"
  # CI replaces version and sha256 when it copies this file into the tap.
  sha256 "a8cca26cee27f53fcf9f6913c44c58b2d477d4be27f2ec595652a85746c275ea"

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
