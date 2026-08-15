cask "carbide" do
  version "2.30.1"

  on_arm do
    sha256 "84444eed9d51725bc28077a6c4f5350043cfa18bcc7cb666a1505883efbb55d0"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "cd2e52801c3f8b29371b54807cfa8630af86a015384794938d81cc6438056833"
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
