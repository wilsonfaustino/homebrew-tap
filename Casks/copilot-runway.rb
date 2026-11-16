cask "copilot-runway" do
  version "1.4.1"
  # CI replaces version and sha256 when it copies this file into the tap.
  sha256 "08f24b8e4650231fa25bab0b0a9d1e39af2aa48be07654b6ef7ee4f1d72401db"

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
