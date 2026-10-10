cask "onecast-universal" do
  version "0.1.0"
  sha256 "990cd4c00091f4813662553d16e39224273e9f172891364d76b8c4821ef0828c"

  url "https://github.com/jhasubhash/onecast/releases/download/v#{version}/Onecast-Universal-#{version}.dmg"
  name "Onecast"
  desc "Menu-bar launcher that also runs Raycast extensions"
  homepage "https://github.com/jhasubhash/onecast"

  auto_updates true
  conflicts_with cask: "onecast"
  depends_on arch: :x86_64
  depends_on macos: ">= :tahoe"

  app "Onecast.app"

  zap trash: [
    "~/Library/Application Support/com.onecast.app",
    "~/Library/Caches/com.onecast.app",
    "~/Library/Preferences/com.onecast.app.plist",
  ]
end
