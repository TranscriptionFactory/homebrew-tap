cask "carbide" do
  version "2.45.1"

  on_arm do
    sha256 "95d32d7b79311bd4573c64f9b99a91c61ad28307091498e6cc80dbe665264fa8"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "8165506c652861c8f1bcdc02872cc21af702454cf28d929ab81f7e2aef6ca2a7"
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
