cask "carbide" do
  version "2.11.0"

  on_arm do
    sha256 "2cf5c85cb513a40cd5033673d09eef67a6911da39ed96de9b2f892abacc7e3b3"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "f32f6f1277c337ea023177d37a968869ec9e20d80342a6a29f41b5267c393c1a"
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
