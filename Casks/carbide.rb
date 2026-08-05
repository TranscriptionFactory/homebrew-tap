cask "carbide" do
  version "2.27.1"

  on_arm do
    sha256 "c0f34e6733bddbd59c345cb9cebb42244bfa69e41974fbabf1f51dc9fcc29d17"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "0b8cd6c3756f5e6ee69adbc377e92c643f0b8011f862c3e794a58881afe19cac"
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
