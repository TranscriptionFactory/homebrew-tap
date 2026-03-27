cask "carbide" do
  version "1.4.0"

  on_arm do
    sha256 "e6ed04c902a9b048734054accb15049d1152d0e68b5ab0904e27b18ecf3c3f0e"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "76506291611ac94aedca67a252d4143a33f167990f958ed99fac44fca3a23545"
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
