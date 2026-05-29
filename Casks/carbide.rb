cask "carbide" do
  version "2.1.0"

  on_arm do
    sha256 "d6f628219d6e93b37dccb024c8298858b637ec13f78bf690278168f07eb74882"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "d0ecd5a8319ff58103f727938f7393a42a0ec2f9a20f49dfb73c40c1403b0327"
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
