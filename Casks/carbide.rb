cask "carbide" do
  version "1.28.0"

  on_arm do
    sha256 "57d8186bd56ec7542be916b40d17ca30615148643594fc82298068901e658ea3"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "fd0ae139debe71c877b0cf4913bdf7d6c6bdd7aba4b3d55983aac98b10f3b170"
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
