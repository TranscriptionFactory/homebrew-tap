cask "carbide" do
  version "2.20.0"

  on_arm do
    sha256 "8eda5ebf14d3af6f0fa4be60ee20d98ef292cf2bfb51068278be10145eb3ab35"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "c1ffbc530e2eb203dd5823db680959213bcfeeb7a4f09a12cdf4e3bec2a73c3d"
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
