cask "carbide" do
  version "2.6.0"

  on_arm do
    sha256 "7affe04d279977362b7bf392cf8b56f2a5025c6fdb19a55a30b2af80699be900"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "cfe665ed0e39455600393edff674c06f4702af8725159aae9d24c30fd784b2ea"
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
