cask "carbide" do
  version "1.37.1"

  on_arm do
    sha256 "1d87948191424525675d354418408df0d0f69d974298ac2b677fceca8a3776ed"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "66c1e8bc99f61291da6b79f382d131bedb4ce22de14b63507353fc616e2b5cc1"
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
