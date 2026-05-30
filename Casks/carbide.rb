cask "carbide" do
  version "2.2.0"

  on_arm do
    sha256 "2a3a0fe99f55d4dbe4421d277c8f025114b79ade1a104113b9fd230465929a42"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "942e4954d51256c4b6aaa349e4d27dd38e755bb3d9dd8cb159279832b38e611d"
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
