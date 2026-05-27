cask "carbide" do
  version "1.43.1"

  on_arm do
    sha256 "6dd8d45194e74b3af8da0db65b41e6859ce4ee5f7084d48cc9da7d3b15c5df82"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "d6b4926fc44db577f334a51bb428975c15d43103ca9b72d9edd30d43752b4978"
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
