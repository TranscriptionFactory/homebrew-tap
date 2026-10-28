cask "carbide" do
  version "2.45.0"

  on_arm do
    sha256 "b4a8ade091a912546264fa6bee65517a3f2b996bf470d4c8eaf1def1eec3ebce"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "cfb32f90fefbb10669d05831492e4445723ae8cf44d6f9ac6c5e8d0693c823ed"
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
