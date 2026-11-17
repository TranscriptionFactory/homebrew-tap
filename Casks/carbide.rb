cask "carbide" do
  version "2.46.1"

  on_arm do
    sha256 "e8bc47a14084829566d0d22966b70a1bcb22bbbb1ee945a37cc03dc39bd0a075"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "a6cf5eaa9d44dbe6d789b14445f2417881aae02298998e10f36b154d09cf22e6"
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
