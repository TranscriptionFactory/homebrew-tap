cask "carbide" do
  version "2.39.1"

  on_arm do
    sha256 "93aaeaf2c325ad9588c642d341e0498f81ba6f17c243dcdc0acf07c1b026cf79"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "36bdfeadade896a983aab4418c67b22ebc774245085693c733155e588706f0ad"
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
