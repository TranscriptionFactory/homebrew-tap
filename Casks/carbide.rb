cask "carbide" do
  version "2.0.0"

  on_arm do
    sha256 "c75468fca1c79d4ceff141f1dca59a4ba2f04880ebb096c2bc0c2cab88bb9226"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "f939485c97be362ccfb7e4a28bc508bf8239b900648cbe94f710df8a97c7fb08"
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
