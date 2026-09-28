cask "carbide" do
  version "2.38.4"

  on_arm do
    sha256 "525a83b996cd47aeb85d523fd49fb51557144d8de1efc4a776e1dbae2d3beb97"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "88737c089b6a0a4dae8608a87c369b4666740bc8b77d7279ea7d0a1178bd9572"
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
