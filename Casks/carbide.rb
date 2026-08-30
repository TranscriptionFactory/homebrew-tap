cask "carbide" do
  version "2.34.6"

  on_arm do
    sha256 "47f3e120afb215e9cecfc70aa10ca7a92780733b66c1c6475f0186b93b1463a5"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "7b326de9da58c54ed3d0001fa5875bf226e419baad8f5533a4cff4c3e43ccf3c"
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
