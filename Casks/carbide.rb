cask "carbide" do
  version "2.10.0"

  on_arm do
    sha256 "1aa5ce502a78b356eeb6384b9c752afce06cc7375e4e9de1ee7d83397ccaaea9"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "2ee152fd0b5c11bac2ef7b72b8d995fc1f888dcfebf36a5c77856916ed95b941"
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
