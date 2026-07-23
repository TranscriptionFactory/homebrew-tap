cask "carbide" do
  version "2.21.3"

  on_arm do
    sha256 "902abcd3f1ce0ad31bf00f75bae9e2e6cd6fa0ef0ce150a553a33911397d4f6a"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "9b5cc6dacc4bb0b18b92f085528d1c3c1d68bc422ebee97f7a310d6f578b1447"
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
