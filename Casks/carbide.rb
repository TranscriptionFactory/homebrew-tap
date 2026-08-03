cask "carbide" do
  version "2.26.0"

  on_arm do
    sha256 "b281999e3c39000760fcb0a094e611b7f85c848cfdf3b90d9f7dbd7c0078d94d"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "a510bdd9d54c01f89de8b31e5f48751b385b8baf5eb231a846db057db0569360"
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
