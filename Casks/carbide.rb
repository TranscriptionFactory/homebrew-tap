cask "carbide" do
  version "1.6.0"

  on_arm do
    sha256 "7bfb8bd14e9446cabb9c4fe2d2b865a6ca5c18cbb28f31234305eab6cd323653"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "144c64acef4ce306a17304e3b7dbed838dc7b0cba3d7f1d437759c9bdf6d422d"
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
