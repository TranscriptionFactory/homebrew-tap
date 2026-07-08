cask "carbide" do
  version "2.10.1"

  on_arm do
    sha256 "da3d353c06650a94c1b9c4c1d4383f50ca5e050d0c0313362fac44c0a49cb5a9"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "4030f0fc7fb6b1436e45f993a8cb0fe3cca23c4c5db0617f913a4b0e826a69eb"
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
