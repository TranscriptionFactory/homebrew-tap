cask "carbide" do
  version "1.24.0"

  on_arm do
    sha256 "dd36337f1082a76e5e9212c71545fb7b3863ad782fc91190e7890891fe76c062"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "a2cd73d67d85f4aee39b85d8c9a2065b3e983e73ff0534095331222b077b8a24"
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
