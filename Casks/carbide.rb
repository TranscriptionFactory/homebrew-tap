cask "carbide" do
  version "2.17.1"

  on_arm do
    sha256 "b7393a48fda2af8fba2f4d0d60dc0beb6dddc8be86bf9f3197e025b92f311a10"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "3367646c7598f1e9a3683f5ed71c6d8609c02c4729564e7e08ee016b25627d7d"
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
