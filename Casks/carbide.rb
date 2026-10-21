cask "carbide" do
  version "2.42.0"

  on_arm do
    sha256 "b153b37c00a86e5873134e5866c168da2e6d68151bd72fc37926b7355f701221"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "661bf0912fa50c0f2c1af925ee2d86aa63f98e7d1720d094683e45a537c6f266"
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
