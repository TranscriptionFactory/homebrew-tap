cask "carbide" do
  version "1.11.0"

  on_arm do
    sha256 "6ec36b33facc3765dc6ea773dc6143b915ccd52deccf511aecc11d6da03e1cac"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "9777f013ca20ca11cf068b2d278372a0c75c4d2e7a54407a8b796b25015b3ba9"
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
