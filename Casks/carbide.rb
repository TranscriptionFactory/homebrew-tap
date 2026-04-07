cask "carbide" do
  version "1.14.0"

  on_arm do
    sha256 "eeaba3d031b540604c64d79197eb665c48fa5d321c012df9ab82750e796409c1"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "78fc9d3a5ba1bfa1682bd07ba71af798090b4bf54ed0ffc9385e1cf0c06b2990"
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
