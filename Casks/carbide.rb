cask "carbide" do
  version "2.34.0"

  on_arm do
    sha256 "b4b47a17d1185e802c69d35691951b110e4f46b019ca0227f5c22cb87d29b1b1"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "b05b00c6fca1fc2a303558536fc9f672bd5cfe7c7bf967edbc939dc9e97c613d"
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
