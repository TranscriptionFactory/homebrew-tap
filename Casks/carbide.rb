cask "carbide" do
  version "2.0.0"

  on_arm do
    sha256 "883077a83e56e152e80274f6ac87ee4ab21428f48dfd131d72e1e9e972a0edb9"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "b561f6745fd904f560d4f05206afd3263afd917a3d52b7e53b8b0d78e65ea25d"
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
