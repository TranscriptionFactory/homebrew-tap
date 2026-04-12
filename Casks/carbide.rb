cask "carbide" do
  version "1.19.0"

  on_arm do
    sha256 "cfbdfdc8b979a42c84cfdbedcf969ab4aa1e6073776e2245d5262799cc76bea1"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "7d2efdb6d9dccb4aabf8d5bf1f41c4480486adb355658201cd244c8ac786e8dc"
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
