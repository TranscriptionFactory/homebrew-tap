cask "carbide" do
  version "2.25.1"

  on_arm do
    sha256 "a3e23804668ebcb21ef80809c7fe21a759f701a8cf50590142c7cebf26ceae2d"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "8391d2fd6fd35997d74c81c732c4ef26a8d9365e65391eb130e201dddfa85909"
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
