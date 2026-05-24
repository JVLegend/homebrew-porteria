cask "porteria" do
  version "0.3.0"
  sha256 "a66a9cfc0e9cfd1a7e422380414c2ec57e9925a589f3114aac6fe4c18b5b6252"

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
