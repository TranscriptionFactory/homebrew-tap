cask "carbide" do
  version "1.39.0"

  on_arm do
    sha256 "087686de1a55317055ee02040ee0cba7eb19071a01ff270c959140e797f44c87"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "94431477983cb27df1e25b5c16b60986d9d865edf147ee198df175648958da49"
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
