cask "carbide" do
  version "2.34.3"

  on_arm do
    sha256 "3d10baed6ff03de550894c70cf2537a214861fdf38229cba6c82b6a41f6faf87"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "a5271d50b617fd620168969a49486492551b2ad6129d51204f201fa35b5040a5"
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
