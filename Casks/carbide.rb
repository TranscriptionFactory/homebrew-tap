cask "carbide" do
  version "1.41.0"

  on_arm do
    sha256 "c3b1f8146f4c81de0a87c287392d14751a8e382584ae501e0601c1e3d00123e7"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "3099e6c69ccb1a4146ceac78ae18397cad43bfe67061302a0199b6659c3503cf"
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
