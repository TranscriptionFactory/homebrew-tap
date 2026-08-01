cask "carbide" do
  version "2.25.0"

  on_arm do
    sha256 "c4743196b962f8f70086d8d97d73aa2860fdf30524284c0b72f0037dea09bb1b"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "6c4cead9d5634186fdbf356d15850926a50f61c4a933dc0bab2bc43230b6c461"
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
