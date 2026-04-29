cask "carbide" do
  version "1.30.1"

  on_arm do
    sha256 "f814f906bbbf738dc3a75752ce5ad0da13cb7848f0b3c26eaa3e8ae05857fc8b"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "9e117c13be79272e9c6a6b8d83943e2f87a83324afc2b37d588acac8a05cdc2f"
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
