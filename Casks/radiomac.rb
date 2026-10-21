cask "radiomac" do
  version "1.0.1"
  sha256 "3e972324e4bbaa0aa7838cd2330853085456c851321ca8b98849ed0c8839a5a3"

  url "https://github.com/fso13/RadioApple/releases/download/v#{version}/RadioMac-#{version}.dmg"
  name "RadioMac"
  desc "Menu-bar internet radio player"
  homepage "https://github.com/fso13/RadioApple"

  depends_on macos: :sonoma

  app "RadioMac.app"

  uninstall quit: "com.fso13.radioMac"

  zap trash: [
    "~/Library/Containers/com.fso13.radioMac",
    "~/Library/Preferences/com.fso13.radioMac.plist",
    "~/Library/Saved Application State/com.fso13.radioMac.savedState",
  ]

  caveats <<~EOS
    RadioMac is ad-hoc signed and not notarized when no Developer ID is
    configured. If macOS blocks the first launch, open System Settings ->
    Privacy & Security and choose "Open Anyway", or reinstall with:
      brew install --cask --no-quarantine radiomac
  EOS
end
