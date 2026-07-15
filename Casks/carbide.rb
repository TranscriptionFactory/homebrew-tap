cask "carbide" do
  version "2.14.0"

  on_arm do
    sha256 "8713dc729a04300016916cf412722594d3b77783ca57beace434bd634c70faf2"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "3bdee91203f4268887b8d1e4bfa223e2676ddff58692a9b61b0f463adef1459f"
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
