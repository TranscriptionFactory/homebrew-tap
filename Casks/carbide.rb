cask "carbide" do
  version "1.44.2"

  on_arm do
    sha256 "10db7cd4b55b0126f9f6e586ba2f03915433c598c1b3c56c2df8ab6d722ebb80"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "a23ff342295d945153e95fbd1ebd15bbc82be57c557d8b0b508e7fdec83c8a57"
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
