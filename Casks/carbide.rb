cask "carbide" do
  version "2.23.0"

  on_arm do
    sha256 "f18b7ee8e36aa019bb6b56d156f02252df59fac64a0844966203f6af1085f0e2"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "8722d540fae6aa49591a11ee7526be3d3c663ec37d2bec3c40d1bbf17edc197e"
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
