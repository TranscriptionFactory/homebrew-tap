cask "carbide" do
  version "2.30.3"

  on_arm do
    sha256 "8ada47c9ff32dc6fbb4b65f5d668416d1c1a372df3cd9582dbf41e2f1879e866"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "b218d5a4821fe3bd06bf5617773180990828dfd919aa3c8d75311268ccd85486"
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
