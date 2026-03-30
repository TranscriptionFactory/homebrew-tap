cask "carbide" do
  version "1.8.0"

  on_arm do
    sha256 "7da2dcb6f0f414699573c5ce49d6591d8fb96d2f49adb9d980062e349c5d4fc0"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "5f7f76cf0053e1dbc677b78b6faba017d08dc5b812f14d43b96511e9294b4344"
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
