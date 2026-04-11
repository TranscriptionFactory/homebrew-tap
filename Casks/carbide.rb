cask "carbide" do
  version "1.18.0"

  on_arm do
    sha256 "391fb3ea3d5ec374e72dac711686e966986b7107a1212866f3d531dcc65197fe"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "6d19d8c46358b379e3c6c960856bdf42581f23f38b45babb135c8cabb8425c53"
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
