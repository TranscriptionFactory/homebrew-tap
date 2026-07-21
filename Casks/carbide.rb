cask "carbide" do
  version "2.17.0"

  on_arm do
    sha256 "5ef9a46ec714532014216ac3de6e22019ae45b624aca0cdee114b7d68bb78163"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "6b9458d1ece8c037a1e1c8aa32f507b22478b2a38cd98cc0042b9b3cc79f9bb8"
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
