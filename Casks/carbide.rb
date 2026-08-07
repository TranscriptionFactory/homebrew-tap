cask "carbide" do
  version "2.28.0"

  on_arm do
    sha256 "8cbac762836c55c38dbe8aebb21e16675678bd566b33c8e07cc3c0b9d5a00238"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "9e8e5b7392808a65fefb061b08eb0a679378ebf6c04f16fa6eb58a62c86bbc7a"
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
