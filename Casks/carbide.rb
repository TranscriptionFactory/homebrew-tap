cask "carbide" do
  version "2.38.3"

  on_arm do
    sha256 "5e4a8a30d2de423ae88c0960db788bcd02c505dfe8a1184ed2577b7d37697f05"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "a7c796c7b56ff5a363123629639d5183ba54f879b5e3ce319c4385ccd14c4a10"
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
