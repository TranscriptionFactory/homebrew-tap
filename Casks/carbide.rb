cask "carbide" do
  version "1.41.0"

  on_arm do
    sha256 "00f42de0dec46e082ada9a7d9be9a6e8b637a4c0af4666cc01e97688e71dbe94"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "e6790a8b3b9c29d437d96633bdaf8bc4de66095cab1d0b11ed1ff6c189a4ca19"
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
