cask "carbide" do
  version "2.24.0"

  on_arm do
    sha256 "e8e2160042a553d4c25a9e5e5ecfbb9cefd1fa992d3cec570b41ea0414a36cd2"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "9b960f96910f7da26a098796569ddbdbd13f90e7034faebf9952970899a44618"
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
