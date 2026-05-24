cask "porteria" do
  version "0.5.0"
  sha256 "af5a4f2193cee37942f9e14dfb158b65a1b4800b514021fb5a2f639c3cb4e43a"

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
