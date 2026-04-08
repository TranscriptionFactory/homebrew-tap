cask "carbide" do
  version "1.16.0"

  on_arm do
    sha256 "5a04c143a041ecbcfda795edfabf05057395e096ea014832fbcaf179efce6f49"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "8b4fe4b894ba42be77e13959225bbbaf28c1da8aaf13e831e7ca2981da7ec784"
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
