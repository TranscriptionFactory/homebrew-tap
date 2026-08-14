cask "carbide" do
  version "2.30.0"

  on_arm do
    sha256 "5c814819569497ce4c8f8ce099bfcb973375e518000ee94f268bd3fe98581e73"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "04334c2e13feacd3148263a8b8fa80dfad1006fc5f66ed41f6b0efda0e7aea5b"
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
