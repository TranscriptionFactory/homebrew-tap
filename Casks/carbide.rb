cask "carbide" do
  version "2.44.0"

  on_arm do
    sha256 "9d2088526d8c918935b0fbf5fb5e09c0708bdc314c9fed685ebb0243a97ea01a"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "171bc09745127f78315dd1c60b58e44e628dc76de6278c4a26bc5979b9a36e38"
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
