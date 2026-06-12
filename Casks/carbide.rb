cask "carbide" do
  version "2.3.0"

  on_arm do
    sha256 "6d8d5cb71ab72ab8fe20a60797710f7ae8fd7ec7bc16a4049cfa6824ee6c442f"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "bf924f5c8727da74bf44ac4091b9cc2af2ab420b3642a2d3dc7023611f777406"
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
