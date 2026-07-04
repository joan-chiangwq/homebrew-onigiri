cask "onigiri" do
  version "1.0"
  sha256 "6f664ceedea1771d9ff058a7554314cfee827616a5e6a87e8a5e8a478d768b32"

  url "https://github.com/joan-chiangwq/on-igiri/releases/download/v#{version}/Onigiri-#{version}.dmg"
  name "Onigiri"
  desc "Menu bar app that keeps your Mac awake"
  homepage "https://github.com/joan-chiangwq/on-igiri"

  depends_on macos: ">= :big_sur"

  app "Onigiri.app"

  zap trash: [
    "~/Library/Preferences/com.onigiri.Onigiri.plist",
  ]
end
