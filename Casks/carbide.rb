cask "carbide" do
  version "1.11.0"

  on_arm do
    sha256 "8a5d3cb5daec124eebc57f4d39659c48aa4c445b6fa092ef49265e63d90a3795"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "2af82a069bcf74d64fa19922763e8c76796c01b8aa0cc543a0cc1c1344e06538"
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
