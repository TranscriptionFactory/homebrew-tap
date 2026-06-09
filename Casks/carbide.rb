cask "carbide" do
  version "2.2.2"

  on_arm do
    sha256 "9103cbe88adbb38b19c4a8b947d8abdd87bb0040cefa5fde78c6305de49ea8b9"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "9e8af168c9b87def37223f6d865446a2ecfb916a89162c8b940dc9762a2fe1e0"
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
