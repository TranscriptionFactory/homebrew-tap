cask "carbide" do
  version "2.16.0"

  on_arm do
    sha256 "f601a63b4cc7adbf6058f5853f8e54dc1409c862ca59ed7a98ebf814bebdc849"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "4c993b594986c15f5677e9e7417909be15a70e6f0480983dc684099bab8c7e4f"
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
