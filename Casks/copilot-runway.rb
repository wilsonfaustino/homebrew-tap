cask "copilot-runway" do
  version "1.2.1"
  # CI replaces version and sha256 when it copies this file into the tap.
  sha256 "0e2aef11dbbc507b7f68be677fafa77cfce0262016a242decb4d6bb95c421ee3"

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
