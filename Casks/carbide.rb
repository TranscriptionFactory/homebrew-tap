cask "carbide" do
  version "2.29.2"

  on_arm do
    sha256 "7279b80f8a9fe08713ca653eef5c665acb3817ee678b21babf7c9d82005ad58e"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "e8bd3abcd94be6b31e33d8eae51cfeed16cbc6bf8cfd525df5b4388b1bc31bcd"
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
