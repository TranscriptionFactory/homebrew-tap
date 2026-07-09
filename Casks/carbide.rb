cask "carbide" do
  version "2.11.1"

  on_arm do
    sha256 "527c813ede9009a9a8405934b56087b2d18fdb54440c47231c106f1fce4252f2"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "eceed8c970ab19006b905d2e763e549f147dddae25330f689a65c2acb8f683b1"
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
