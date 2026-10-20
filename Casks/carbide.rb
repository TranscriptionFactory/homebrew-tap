cask "carbide" do
  version "2.41.0"

  on_arm do
    sha256 "c23d8eb356d2b43daa57b71e08043c8deba38175e77a9a2af465bd172bc84382"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "90bbde7ce14e319193164b8c7401e95f33381191e1be114f45d109a9dd060e40"
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
