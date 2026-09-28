cask "carbide" do
  version "2.39.0"

  on_arm do
    sha256 "d6080dd235522c7315b1e9710ef4eeec0c5744ecbbedabc3b1ed82df8843babe"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "dfc6d22086111285b38c89d94d1ab4abd1b11f5976c6efd232fcef6afc08ec8d"
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
