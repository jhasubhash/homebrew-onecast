cask "onecast" do
  version "0.1.0"
  sha256 "297a5f680857ca9bf3d6faae7a895714131987d0269a8c23b1e38e1fff3acf72"

  url "https://github.com/jhasubhash/onecast/releases/download/v#{version}/Onecast-#{version}.dmg"
  name "Onecast"
  desc "Menu-bar launcher that also runs Raycast extensions"
  homepage "https://github.com/jhasubhash/onecast"

  auto_updates true
  conflicts_with cask: "onecast-universal"
  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "Onecast.app"

  zap trash: [
    "~/Library/Application Support/com.onecast.app",
    "~/Library/Caches/com.onecast.app",
    "~/Library/Preferences/com.onecast.app.plist",
  ]
end
