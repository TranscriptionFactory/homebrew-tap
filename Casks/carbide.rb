cask "carbide" do
  version "2.40.1"

  on_arm do
    sha256 "7a24233a6c5c44ccb46f917411924e4bc1bc9bb4868d0723f874b79475d1f295"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "c045504c15f41c20c301c7770cb5766f2989e2a4e0557a7fdbdd10e2d107cabb"
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
