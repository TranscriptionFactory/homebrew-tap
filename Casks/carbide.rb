cask "carbide" do
  version "2.0.0"

  on_arm do
    sha256 "4ab15c7653f11e91a8607da09a3b6bd7b61ef24c8147f1928acbc2e02e10f746"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "133a715ccd859dd4c94b134c14cb359ee27031ab326459e10bb818e43778c85e"
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
