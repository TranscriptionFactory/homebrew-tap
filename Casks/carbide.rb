cask "carbide" do
  version "1.42.0"

  on_arm do
    sha256 "57555e9fc46d89f2ff3a349b807ca03bbf3544f79957a312c354f58158748bc1"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "f41490bbb131b2a4f518a5c9a10699ed2f415bec6e6de8980f232987c9436d6c"
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
