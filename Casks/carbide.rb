cask "carbide" do
  version "2.38.0"

  on_arm do
    sha256 "06150925f656589780539747964ac9387e3ed1c9585fc44b6961ee6a982e25bf"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "12d767a98ef48ba7d68dd4b3071a06fd23b7c2a17aa88bc8d748c7ceb90d28f1"
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
