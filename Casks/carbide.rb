cask "carbide" do
  version "1.11.0"

  on_arm do
    sha256 "694c6b0fedff02b318d9d92c4a5093da4eeeb29b5246283f7e35bc4715d11767"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "c5039225de5b190cfe65574690befd167318f4af75e37eefb93b8da993f2b372"
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
