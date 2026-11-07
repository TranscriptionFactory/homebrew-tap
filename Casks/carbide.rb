cask "carbide" do
  version "2.46.0"

  on_arm do
    sha256 "7537bb75a43010ce412611c4a26b2f576f90c2f0d7265170d35b4a5bab8339d5"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "0998faafca4867b748f846902ad53706e19d6624adecf20e5282000a00290dc3"
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
