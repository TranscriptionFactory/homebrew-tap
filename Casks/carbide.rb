cask "carbide" do
  version "2.34.2"

  on_arm do
    sha256 "8a831e6cdde096f7b66319fc69a9a1470be6b7b1f9921fc8244314766253ecd8"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "a95a5ec3571221cfb973f5f353d042dd90bb0032d81e807e69f178b38c083f26"
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
