cask "carbide" do
  version "1.9.0"

  on_arm do
    sha256 "1a4e43a64104c2d06b81810a35fed895a3d62840af295126b2876527d17b67e8"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "402e560c89d700bb4f8750bca98fd311debb92c394b980dfeae7b84a00debf92"
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
