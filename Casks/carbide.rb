cask "carbide" do
  version "1.23.0"

  on_arm do
    sha256 "46cad393d5f056bb3f0155d18ef5e2903f60c0a063f0cdb862d9cfb097189a81"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "1af3dacf8da102345a9fde4c733762c1613f39109d753949da4c46412a15417f"
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
