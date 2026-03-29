cask "carbide" do
  version "1.5.0"

  on_arm do
    sha256 "d7ee1c53e176e572a6d7d3268656ddc424450850e7f3e9027e7b799e61c62e86"
    url "https://github.com/TranscriptionFactory/carbide/releases/download/v#{version}/carbide_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "cbf9e8ac70cfbb49744f13e2cbddce2213a638cba9cba781944ced9053568f60"
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
