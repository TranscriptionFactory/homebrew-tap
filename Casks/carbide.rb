cask "carbide" do
  version "2.4.0"

  on_arm do
    sha256 "cfd8614ca152ef4c784e419689ceb19b678636b07330e8a255bb34375c3ad11d"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "f05a42712c0a5d6605e70b359d8413d2af800f5eee4cd48e7c753ede028227f2"
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
