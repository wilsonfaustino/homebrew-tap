cask "copilot-runway" do
  version "1.4.0"
  # CI replaces version and sha256 when it copies this file into the tap.
  sha256 "10d86b4993983692d003d4a09060bd4820736d087dfe8c82acc21bd9f68887c3"

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
