cask "carbide" do
  version "2.34.1"

  on_arm do
    sha256 "ee7ac6460e87959946c6f0decbed9736cb796d06f26a9e9e6c31025ba4e82917"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "8577807597661270e4f898b65b7d1e301e0245378620ecce91fd069fc21bca3a"
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
