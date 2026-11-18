cask "copilot-runway" do
  version "1.5.0"
  # CI replaces version and sha256 when it copies this file into the tap.
  sha256 "9fefb4a0508c91e6005dc1a72d24f1e842ca422eca24013c83c53e29f591fc1b"

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
