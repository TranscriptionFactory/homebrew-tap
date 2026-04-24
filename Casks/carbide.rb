cask "carbide" do
  version "1.26.0"

  on_arm do
    sha256 "d8b4861b150f461f4b1ed8b075d9e4bb5ed984d6a10c940a637caa9b011dfbc1"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "77b5515183140e07081b3ee4e9848443ed25e26e4935a961e6cc80ac7f9b6843"
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
