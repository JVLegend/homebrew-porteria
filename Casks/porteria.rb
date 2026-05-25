cask "porteria" do
  version "0.9.0"
  sha256 "73a699ea443a2df9255e9bafce0defaba9f9be4849e48ed0eb82ccedd34e3a68"

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
