cask "carbide" do
  version "2.36.0"

  on_arm do
    sha256 "00173b96f03941be3f7e704043618120eb970593cabe1bf5ea6f34dff554b785"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "56e15a97076ce8852739270a8c1a4a84f937a03e692070ba41dfe96258f2f8b1"
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
