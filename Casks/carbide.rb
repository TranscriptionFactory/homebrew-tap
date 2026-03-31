cask "carbide" do
  version "1.8.1"

  on_arm do
    sha256 "03a17b0713978e86dd3abded7566bc984c552ade2e4114fb4491c1a6375b1314"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "2ec03aaf8a8b2e538fbf063c2b5d3466cd62a09a4aebf47524ee7123f689d654"
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
