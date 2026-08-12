cask "carbide" do
  version "2.29.4"

  on_arm do
    sha256 "8ca050f6bffbdc74fcaf14f068b5c1454b892dbc11e975aa172a05401d881658"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "044f0f8b9cb1d69c57a11ffbb19f622f80b1d311e22b391050223df0a28dd392"
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
