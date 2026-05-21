cask "carbide" do
  version "1.39.0"

  on_arm do
    sha256 "164f6b5599f0f741e53ba53268686430f88a3f66e61adec8735c712477f6e931"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "e3dd271bc7eef2a0c50332114fd3b8c7d870d8763a83cabe6df39858a6f3adfa"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_x64.dmg"
  end

  name "Carbide"
  desc "Carbide"
  homepage "https://github.com/TranscriptionFactory/carbide"

  app "carbide.app"

  livecheck do
    url :url
    strategy :github_latest
  end
end
