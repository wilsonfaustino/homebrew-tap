cask "copilot-runway" do
  version "0.5.1"
  # CI replaces version and sha256 when it copies this file into the tap.
  sha256 "4c1244500ee11b070af5ed5af16b857de762802c1717a3f190410cac07402f08"

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

  caveats <<~EOS
    Copilot Runway is ad-hoc signed and not notarized by Apple, so macOS
    blocks the first launch.

    To open it the first time:
      1. Open Copilot Runway from /Applications. macOS shows a warning.
         Click Done.
      2. Open System Settings > Privacy & Security, scroll down, and click
         "Open Anyway" next to the message about Copilot Runway. Confirm
         with your password.

    Alternative from the terminal:
      xattr -dr com.apple.quarantine /Applications/CopilotRunway.app
  EOS
end
