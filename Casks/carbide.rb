cask "carbide" do
  version "1.24.0"

  on_arm do
    sha256 "c992be8f4122d29b1e169902466c49d0fef3563428277c05ab8dee243d5a0f2b"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "7f6d4e6638335b98114526ff3259efcf01b7da6fcb68ba68457c6d6e41277ebb"
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
