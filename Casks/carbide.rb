cask "carbide" do
  version "2.18.0"

  on_arm do
    sha256 "6e3dd37847df42cfca70923557c24d6c0c684bf50a2f6558392763e59f5a4a45"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "63597057bfaa6df1e8a9d876c0283125d753ae364b51f7630727fcef3e38df72"
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
