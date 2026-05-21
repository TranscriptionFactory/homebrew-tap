cask "carbide" do
  version "1.39.0"

  on_arm do
    sha256 "c0f5507a5fcdc7efd5a5fe992105819a0ed9019f5d8b2a3cb70985ae925c15cf"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "d6a3c047b4fdd94cd8d7a0f08b229720310bb5555e88f383107e0940b21105aa"
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
