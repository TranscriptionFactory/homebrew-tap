cask "carbide" do
  version "1.23.0"

  on_arm do
    sha256 "fc4320375f7a98572d7d5ef780106d7b7f7c952d9599fda627e408c567ecfb72"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "af8781d3e6d7519dfd67cc934b1c94a01f076cf52ab2ab34cc3837d8132f9bd8"
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
