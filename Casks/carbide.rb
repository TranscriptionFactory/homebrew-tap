cask "carbide" do
  version "2.14.1"

  on_arm do
    sha256 "e8cb8219325b2831a4b35f51ff8add982a296a1251bbe68b6f0f64ed76360513"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "72d8cb60d599d804b56762d67c71a45a94f0347644c80285554b28879c291bf2"
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
