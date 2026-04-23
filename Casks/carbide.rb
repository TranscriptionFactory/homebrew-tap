cask "carbide" do
  version "1.25.0"

  on_arm do
    sha256 "797fcc4ba28a73cd0cd7985facc4dd564c8a7c85ce9609e000ae062f37a6d5a5"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "2a55784aae730de0f26b97cd134694af48142545021435f470e97ebf8049098c"
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
