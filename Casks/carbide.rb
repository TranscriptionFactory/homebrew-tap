cask "carbide" do
  version "2.35.0"

  on_arm do
    sha256 "2e7b6a802ca39f83a91e163e54cbd1a87dc2efcfd39a3b1017aa84d63a481c08"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "f1f1aa802973505ed091322747790cf0d8f73a3c85042a3ef0bb421489460d14"
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
