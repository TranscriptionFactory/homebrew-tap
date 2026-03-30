cask "carbide" do
  version "1.7.1"

  on_arm do
    sha256 "d9a5744824db689bd6606e8323e0b5c10879826fc83f236486d9493fdfb15e18"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "31aac4c1be7bfab48b5b2e3a400f53a4dd5b98490b663c7a9ee2fc8763c9dcd6"
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
