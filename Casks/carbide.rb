cask "carbide" do
  version "1.11.0"

  on_arm do
    sha256 "9e5e7c1158e23b2edc3fd746a2cd5e7b9d9c2460cae56228eaa5054627614472"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "fed6e381c3cb3e0d13a6ec8a299ecdbe63c2fcbed4fc9224c3a466f1a9a82df4"
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
