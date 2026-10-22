cask "carbide" do
  version "2.43.0"

  on_arm do
    sha256 "de7263dcc5ad8fed84796e9504c2265b1ea91a782a21f947d2e62825a6f086eb"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "351d4e9e567d3b6b806367057aa1e09ce84f81317067fd92dabb3fff037442c5"
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
