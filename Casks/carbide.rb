cask "carbide" do
  version "1.30.0"

  on_arm do
    sha256 "16d82ea08e41fb44e8e2c15bbbe1a09115879b99311068d87868da3da5adb792"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "a9546a14c1d724457c4dfa0e74052cd24d74d9f372698dc83bdcf8515469a666"
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
