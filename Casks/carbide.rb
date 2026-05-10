cask "carbide" do
  version "1.33.0"

  on_arm do
    sha256 "21bf9eade86b9e1b09d3abf2ffd91a0a983ef7586f3f3b1e2bb7eefbfb3796f9"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "ccb604ea46f39e2e417566810323c63ee2d3cf55099f1557ef8eedf5d73094bf"
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
