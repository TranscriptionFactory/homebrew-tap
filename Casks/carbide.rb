cask "carbide" do
  version "2.21.2"

  on_arm do
    sha256 "48cd066e82e98333c92a944041305bc9c5226b3a2439076a13a521f258450ac8"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "2c7cacdef4ac4d7774f1e39886f81d58028b4c89dae3dfbc4554bc6e952eabaa"
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
