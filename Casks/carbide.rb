cask "carbide" do
  version "2.22.0"

  on_arm do
    sha256 "0fc99abdd0c73fb7d9844378a72cd83da4e9d7a8e2eb3f05b358374c3329b268"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "dcd3e64855b2eb4cea42285b425b1bb8469deb811c72fecd06857d67ae8215ef"
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
