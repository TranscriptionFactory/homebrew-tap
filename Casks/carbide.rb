cask "carbide" do
  version "1.16.0"

  on_arm do
    sha256 "59ea9f58b5d9040cc70e2c09d7a3a8f94c120c767da860074eec6f124842ac5d"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "d6cf2f19e07fffa7ee3ce03f8901949d933031db6e4363b998f1550062804eb2"
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
