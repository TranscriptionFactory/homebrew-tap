cask "carbide" do
  version "2.9.0"

  on_arm do
    sha256 "62e85837f9a7b416982859f83aee1477e480e94231632a51c9c34663bf58b829"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "bf782715b4777fa89f2e3dff5997bb34894b57de2278f189ba4854f572a0ac59"
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
