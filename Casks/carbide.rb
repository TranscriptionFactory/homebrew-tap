cask "carbide" do
  version "1.40.0"

  on_arm do
    sha256 "73249518e96c6e13e0734e34954a7205b5a9dc5b60740b599514639d33b375e9"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "7866b27109eae677d809e26e679c05feae78c15956f277a1c9ace3083177941b"
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
