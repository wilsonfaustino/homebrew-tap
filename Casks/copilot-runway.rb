cask "copilot-runway" do
  version "1.3.0"
  # CI replaces version and sha256 when it copies this file into the tap.
  sha256 "1fc504029930e950807b61f977669bb3e2adb3de01256ed53bac69acee4db36f"

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
