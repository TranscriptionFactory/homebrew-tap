cask "carbide" do
  version "1.21.0"

  on_arm do
    sha256 "2f5da851d3193ce625a6cb31906356abb1895c4aef247729e53a718c92e1818d"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "68f6eb1535c5b4072c3c78990861a2f43b3d2f44a72f37157fbc5f828a3e4ec3"
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
