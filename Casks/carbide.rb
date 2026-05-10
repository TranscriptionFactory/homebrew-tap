cask "carbide" do
  version "1.34.0"

  on_arm do
    sha256 "d0a6bbb2653b6d9f13b191b2b73dfda6fd972b097e0f446376f4c2b3b5eee854"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "1e4eeaae49b373282f2fcb7e00bde8ea23af17768f1acc7e623b806459b5525b"
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
