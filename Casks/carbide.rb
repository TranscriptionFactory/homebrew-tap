cask "carbide" do
  version "2.26.1"

  on_arm do
    sha256 "4e80ce35aa8d6b0622fb375556f699f84de87369fef615132fa063e25bcdfed1"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "b9b213d0a0fc9751634e54fe19420e0c8e99a58f5799a1d81455ec76cff3cf24"
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
