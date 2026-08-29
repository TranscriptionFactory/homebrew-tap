cask "carbide" do
  version "2.34.5"

  on_arm do
    sha256 "258ac179ac40078c1035fdc76ab0c1d5c0f1f319e8a3f5c775dd28812932b4e4"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "44bb4cb9cfbff68c3ccfa7d0d44bb84c737547093e5af0ae1097eda81630dfdc"
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
