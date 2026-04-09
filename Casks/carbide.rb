cask "carbide" do
  version "1.16.0"

  on_arm do
    sha256 "95da2b5100efcdaf816144a321a3003c820163b4246a287da01791e3bd63f276"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "30b0d7425baf45ffe2b8cf6c47278633e078f876fd192eb416eb7661f09f580b"
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
