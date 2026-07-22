cask "carbide" do
  version "2.20.1"

  on_arm do
    sha256 "04cc112e21f671453608edec13136dd827e0e31347c7c2a46663c3b5da3fe9f4"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "9d5c128877a6bb97f5826b02c90c5fcc050f574dfdf567f6a7a6033abcd61422"
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
