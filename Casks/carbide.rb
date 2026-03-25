cask "carbide" do
  version "1.2.0"

  on_arm do
    sha256 "e94f5e30a113d4f6b2ab393711ab3fda100bf05e98692cc9a4c38afc86856b66"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "6d88855561d8284eb3ce2af24d00b815903d3f92705275112f259b1b9d01dd4f"
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
