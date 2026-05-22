cask "carbide" do
  version "1.41.0"

  on_arm do
    sha256 "673b37b67b72fa1c1c440ac9294f0b76c10e878161357b82b2b534d5f64738b8"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "284cba019dd4a0ecde7193d652dc9a7c15743c7bcc259f41181b76aa0724a296"
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
