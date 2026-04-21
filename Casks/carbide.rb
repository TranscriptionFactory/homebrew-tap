cask "carbide" do
  version "1.24.0"

  on_arm do
    sha256 "81a8fd2e74b3a4e07bbf1258b4f777c569e517300bb37c01688b851b3fd93a5b"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "8505e64e98b51106d8f4c7bbc91e93d236f68521ebf6272ed3f2ef45e621f68b"
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
