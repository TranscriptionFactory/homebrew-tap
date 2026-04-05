cask "carbide" do
  version "1.13.0"

  on_arm do
    sha256 "afb3a5cef93cdcc6048f7fc72d8333202b8c0b80f0d620562544935c56d0b8be"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "86a4f89ec4e9e074aadd523dc0bb1df2a05f1e28edfee1905a06448c8ebb92be"
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
