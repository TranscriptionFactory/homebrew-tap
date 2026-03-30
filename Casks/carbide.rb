cask "carbide" do
  version "1.7.0"

  on_arm do
    sha256 "9595d872cfcd33b917a564217cae04db9b8f999af85c171e59896c5e03882e32"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "7e420c085021193fa7cd573e00704c6e5eb3aa236feac79193d174b483848c72"
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
