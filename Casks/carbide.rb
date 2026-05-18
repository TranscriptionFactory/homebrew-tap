cask "carbide" do
  version "1.36.1"

  on_arm do
    sha256 "3779c724a72ff5a163f4a4fb6319b4b2fbb8ccfb2e5079356d5d54abe3421956"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "e274c9ac75cda3df064a0d534111ca464d3b9435da69c5f95b95c2239f4295e8"
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
