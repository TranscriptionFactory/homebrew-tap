cask "carbide" do
  version "1.32.0"

  on_arm do
    sha256 "6550524f8ee5e99aff86e0c607240d7326fa6e07c94a417d02ef9f60f4f9ee6c"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "96044527d060bbc9d2e7ac9f6399ba78fd4b3de22f354af5fd1d1ddbec7e5da8"
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
