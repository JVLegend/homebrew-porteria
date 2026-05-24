cask "porteria" do
  version "0.7.0"
  sha256 "9faad1ddfd7b44eaba24b82b4d72b33cd7ddd6ba9ded6b8a853641582ce7ac40"

  url "https://github.com/JVLegend/PorterIA/releases/download/v#{version}/PorterIA-#{version}.dmg"
  name "PorterIA"
  desc "Menu bar utility that shows which process owns each listening TCP port"
  homepage "https://github.com/JVLegend/PorterIA"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "PorterIA.app"

  zap trash: [
    "~/Library/Preferences/com.jvdias.PorterIA.plist",
    "~/Library/Application Support/PorterIA",
    "~/Library/Caches/com.jvdias.PorterIA",
    "~/Library/Saved Application State/com.jvdias.PorterIA.savedState",
  ]
end
