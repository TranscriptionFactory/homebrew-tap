cask "carbide" do
  version "2.0.0"

  on_arm do
    sha256 "82b90e456741bf0f4448f6226b8fb368b921385a610f1112848bc20d067878b8"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "b2ddc88fbe64f9b97d676f57965668a4dba2dc0150e931bb4f3fb47b38d3c949"
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
