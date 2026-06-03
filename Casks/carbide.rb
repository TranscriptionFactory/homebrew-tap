cask "carbide" do
  version "2.2.1"

  on_arm do
    sha256 "e0d4e0bdb6f11b4f4d2155f017d8533ea9f46f65aad1ec5a42f51af662a90db0"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "cc085f1958b161c5b0aface8407c663a03a972ca913646163ade22e3b763c50b"
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
