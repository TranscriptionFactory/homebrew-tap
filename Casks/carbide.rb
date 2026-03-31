cask "carbide" do
  version "1.10.0"

  on_arm do
    sha256 "ee7bb7c4120e53ca9cd3c19fe39d3619d6b1a1f42f96a6edc1bbbdf06675c874"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "659197a68d3ab17633186cc818ce71e3830a5c071027e0b205a92386f76eb0cc"
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
