cask "carbide" do
  version "1.9.0"

  on_arm do
    sha256 "9d3b2db7d72169c6b258c6ab7a946ff24787c9dd9a392d0c560d589262ecf471"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "51d4616d39c858218c5a075a6ee53fc73e1659fa120365d2719a2bf8fedd54a8"
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
