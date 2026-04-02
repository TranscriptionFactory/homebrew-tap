cask "carbide" do
  version "1.11.0"

  on_arm do
    sha256 "90e5d88d5850d4d8cbe7e313cd66ca9b2e0d24ccade78e7d20e445dcd872b386"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "c60398b0df2999b27526ed8a4390f0fb4c078dc9891dbbca6a9469771847f851"
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
