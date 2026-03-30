cask "carbide" do
  version "1.8.0"

  on_arm do
    sha256 "78cdd8c9d00b51c36e9c036abcd52575c9be3c1efb5e98da7ac9e55ec5247027"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "a35e3a13cb45cab8b0ea83091acfec93fef2153189f2ea88166765239df9ec97"
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
