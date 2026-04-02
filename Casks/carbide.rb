cask "carbide" do
  version "1.11.0"

  on_arm do
    sha256 "d3a4b2191fcd7d56658bc8af0781c749cdb95afd012a573d1a8dbe3f00e9e6b1"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "16e4e75996b12dc931ec476b21b56f8d45a3392213d56d381b51774eecfad8c4"
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
