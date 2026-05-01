cask "carbide" do
  version "1.32.0"

  on_arm do
    sha256 "f5988f2c2eafb5c5a2c4572112df19885df8a0da412bebb4bae70d6a0646228a"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "28ef8ab097479b29959bc796652ddd8a67b870c099118027867561006832bbd1"
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
