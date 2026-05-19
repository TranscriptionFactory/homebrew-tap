cask "carbide" do
  version "1.37.0"

  on_arm do
    sha256 "f9ea67f90efe21dcf7b65a9099225ec4cf249c77362748f898747a741f47abc5"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "83561b5974433383632dd227c638e784cef07bf0b0083451ca5a8c6a620695b0"
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
