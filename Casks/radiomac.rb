cask "radiomac" do
  version "2.0.0"
  sha256 "a5697cba365be60098a1ba3619b99a2e0ad89a52b44dce80a24e918a79d39a4f"

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
