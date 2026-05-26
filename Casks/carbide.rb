cask "carbide" do
  version "1.43.0"

  on_arm do
    sha256 "36d26263092ec64e43d64edc9408935ec194b507e91de410265d318a4c361460"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "f190f967fb4c0e2ae4e208be3eb19a339f3c8a8441a7759c8adf0f6ead4d51ca"
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
