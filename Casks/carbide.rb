cask "carbide" do
  version "1.22.0"

  on_arm do
    sha256 "a13e57a4b833a50761bfc93357789813c7cc8837be230c7ae967eb33d718c5ab"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "8c6011d289a2292d244a14ebbb035c372a6d60bb3c63e745ee7ec2e930fed6b6"
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
