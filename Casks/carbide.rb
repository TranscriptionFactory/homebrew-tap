cask "carbide" do
  version "1.33.1"

  on_arm do
    sha256 "47d0ebebb60a3fed6d36d75ce51d00da6d9c817bb01742c990ef5fd7b83352e2"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "6a1ab1c910deee1b15ff7143868192daab59df7e18c262f8058b3705ef4116e0"
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
