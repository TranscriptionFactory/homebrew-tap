cask "carbide" do
  version "2.15.0"

  on_arm do
    sha256 "a1af243360a5c61ffcf0f74421ae1f5a6ad07fcc2a99e2241549c25e1dc9de23"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "8802ecae63e2ca4f1943e2649e453231993005c379219e0d29f3e1cba93f2721"
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
