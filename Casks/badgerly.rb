cask "badgerly" do
  version "1.1.0"

  on_arm do
    sha256 "a03b02f50eded81b6f0b5a8f7533b987aad670385a9edebb6a0434fb4cf0a20b"
    url "https://github.com/TranscriptionFactory/badgerly/releases/download/v#{version}/badgerly_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "7332ee9cc5fe39316846ea9fee8ff92f1246318085a946c51ca4f3a71c68da59"
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
