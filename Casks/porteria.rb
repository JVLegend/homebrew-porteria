cask "porteria" do
  version "0.1.0"
  sha256 "7888ca0f4667ea4ade3915cd2cc2e90a8cd03dfbbbb493b5b43f04ee66d8f794"

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
