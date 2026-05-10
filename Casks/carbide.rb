cask "carbide" do
  version "1.33.0"

  on_arm do
    sha256 "e4d8759c7b7f41a9403b01ca623a9c3f8c5a8d19d06098aa5ec81f53cbd8f386"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "76e74b706462d68bf7012bdd99c0d98fda82cf32b5fcb952e6d2f41fb56dd1bd"
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
