cask "carbide" do
  version "2.5.1"

  on_arm do
    sha256 "39594d2f5f1c6aaeba7065ae9359813db6228dfc4a17804fcaeb416752e9612f"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "1628ddb16c27e3a23a029032b9bc01b04158cbea04b4a351e4609cfb904bd1e8"
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
