cask "carbide" do
  version "1.44.3"

  on_arm do
    sha256 "0f00a5d62e817ee216f179724f2d656bfc953a30fea702a8d487dcd0073f18f8"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "510a6fdb1db35d34b9b9148fbf0cb32a54b4ae4a3dad02b25dddaa02f33a2915"
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
