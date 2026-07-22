cask "carbide" do
  version "2.19.0"

  on_arm do
    sha256 "89110aaca20fba178c5699076f05cdbd4d5fad8bcec515e0bf9abb4ace2dbfab"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "614d40c76d885d30846ab2c3a05b19dbf9611c13ecc4d0a04dd526bb53586690"
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
