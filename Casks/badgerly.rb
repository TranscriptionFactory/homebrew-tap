cask "badgerly" do
  version "1.1.0"

  on_arm do
    sha256 "e499ceb78054722d4d63be33a61c163822df16bb57de2abd2252a54d85b3de01"
    url "https://github.com/TranscriptionFactory/badgerly/releases/download/v#{version}/badgerly_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "7e40c0ae970ff3b0d9d5651f0781745cbfa1c2f406ce9a4a62949b74c756dedb"
    url "https://github.com/TranscriptionFactory/badgerly/releases/download/v#{version}/badgerly_#{version}_x64.dmg"
  end

  name "Badgerly"
  desc "Badgerly"
  homepage "https://github.com/TranscriptionFactory/badgerly"

  app "Badgerly.app"

  livecheck do
    url :url
    strategy :github_latest
  end
end
