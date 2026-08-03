cask "carbide" do
  version "2.26.2"

  on_arm do
    sha256 "cdce9562e9a375b957ab81bc94a8b704582dc01bd4d0b680a84cf7c87ebc93c1"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "e1e897526beb8337c66f7191155f1dea40e3603b13513529d1a47978e4cb54cc"
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
