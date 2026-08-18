cask "carbide" do
  version "2.32.0"

  on_arm do
    sha256 "1ee566942929345c71fbdc3014a1d539c9f9ed4b9113c3cc4584b9c1acfca4c8"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "ad1191eae8e6baeb0034e18623de42d2296a0b1afb7886fe91254dc31d3ee871"
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
