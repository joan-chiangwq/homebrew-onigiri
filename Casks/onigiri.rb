cask "onigiri" do
  version "1.0"
  sha256 "ba7c639909b64df604f18f600a89de9ea930b29a86150862af6d5f51294c3b98"

  url "https://github.com/joan-chiangwq/onigiri-releases/releases/download/v#{version}/Onigiri-#{version}.dmg"
  name "Onigiri"
  desc "Menu bar app that keeps your Mac awake"
  homepage "https://github.com/joan-chiangwq/onigiri-releases"

  depends_on macos: :big_sur

  app "Onigiri.app"

  zap trash: [
    "~/Library/Preferences/com.onigiri.Onigiri.plist",
  ]
end
