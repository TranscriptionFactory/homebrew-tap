cask "carbide" do
  version "1.11.0"

  on_arm do
    sha256 "25ed1b914a25a895fa5b3a6a5aee8d4d5b055dbc77f1414bfec3670e20a0d3e2"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "d3ff917fbd53e18736c9a646a8553a276a07e5030e9d6852d5591c541f0af659"
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
