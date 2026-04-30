cask "carbide" do
  version "1.31.0"

  on_arm do
    sha256 "8593cb5a2753f6dc1f59b70234a7cafa5dc0176650ac1ed4b87d66eb30bb97e4"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "51b3be135291e420cc1022721a69753dacd6d5d377e07825b788fb5e5084c510"
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
