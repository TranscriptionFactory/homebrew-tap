cask "carbide" do
  version "1.20.0"

  on_arm do
    sha256 "f5413a7a6fb9106a88f6bce76d2b02703b8e28e627c2b5a296ba1689ef4a3144"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "2a8917a02fb688eeff43b09751df38ead40c72eb00db05ea4e3bc4c6c7fac484"
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
