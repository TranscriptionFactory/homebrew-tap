cask "carbide" do
  version "1.38.0"

  on_arm do
    sha256 "fae6301365d42e3f61be883bb21207e3552e40a8340fd1762cf8643aba14aaa9"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "c804054082c62607d6f444f31213b29da2a6e19f199a0f6ff78a9453992b8c7c"
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
