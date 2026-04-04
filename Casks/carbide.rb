cask "carbide" do
  version "1.12.0"

  on_arm do
    sha256 "33fcbf3e9afce28ab625cd2e75b8a6df36f393b88041669753163a41b33d50cb"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "0cf4203fe5e848ed8ff51b8be023095a7d4889f97e180ddc80dd30d2e261bc57"
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
