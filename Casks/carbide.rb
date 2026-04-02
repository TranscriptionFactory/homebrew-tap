cask "carbide" do
  version "1.11.0"

  on_arm do
    sha256 "7c5d22e2d1b26b349dc3112e062a419a82bb983167215baba4f0c07d414a2fef"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "2e34f3890d950bf74196bd2a62e6c7430aa703a16938c5ba9ffd54384f7e4a24"
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
