cask "carbide" do
  version "1.10.0"

  on_arm do
    sha256 "819bd97e2264dcbe5a770bf5bc937d5a28ca3e7fea1fb89b2fb32c0c1b97ac7a"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "9c7e4e5d932a4140db86c58c541d343b6fe8bdd1055f27bef8f1301b6abd2029"
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
